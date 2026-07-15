module sar_logic (
    input  wire       SAMP,
    input  wire       CLK,
    input  wire       Vcomp,
    output wire [8:0] SW0,
    output wire [8:0] SW1,
    output wire [9:0] B
);

    // --- Señales Internas ---
    wire        SAMPN;
    wire        VCB;
    wire        SET;
    wire [10:0] CK;
    wire [9:0]  BN;

    // --- Inversores y Buffers de Entrada ---
    assign SAMPN = ~SAMP;
    assign VCB   = Vcomp; // El buffer asume transferencia directa del nivel lógico

    // --- Detector de Flanco (edge_detector) ---
    // Genera un pulso asíncrono bajo en el flanco de subida de SAMPN
    wire sampn_delayed;
    assign #1 sampn_delayed = ~SAMPN; // Representación del retardo de la compuerta
    assign SET = ~(SAMPN & sampn_delayed);

    // --- Secuenciador / Shift Register (FF_D) ---
    // Compuesto por xFFR[10] y xFFR[9:0]
    // Flanco ascendente, Reset asíncrono activo en bajo (SAMPN)
    reg [10:0] CK_reg;
    always @(posedge CLK or negedge SAMPN) begin
        if (!SAMPN) begin
            CK_reg <= 11'b0;
        end else begin
            // Desplaza un '1' lógico (VDD) desde el MSB al LSB
            CK_reg <= {CK_reg[9:0], 1'b1};
        end
    end
    assign CK = CK_reg;

    // --- Registro de Captura (flip_flop_set) ---
    // Solución MULTIDRIVEN: Declarar el registro DENTRO del generate
    
    wire [9:0] BN_out; // Usamos un wire global en lugar de un reg global

    genvar i;
    generate
        for (i = 0; i < 10; i = i + 1) begin : gen_sar_capture
            // Cada iteración crea un flip-flop independiente de 1 bit
            reg bit_reg; 
            
            always @(posedge CK[i] or negedge SAMPN or negedge SET) begin
                if (!SAMPN) begin
                    bit_reg <= 1'b0;  
                end else if (!SET) begin
                    bit_reg <= 1'b1;  
                end else begin
                    bit_reg <= VCB;   
                end
            end
            
            // Asignamos este registro individual a su posición correspondiente en el bus
            assign BN_out[i] = bit_reg; 
        end
    endgenerate

    // Apagamos la advertencia para los bits que sabemos que quedan al aire
    /* verilator lint_off UNUSEDSIGNAL */
    assign BN = BN_out;
    wire unused_ck = CK[10];
    wire unused_bn = BN[0];
    /* verilator lint_on UNUSEDSIGNAL */
    
    // La salida B mapea a la salida invertida (QN)
    assign B  = ~BN_out; 

    // --- Buffers de Salida ---
    assign SW0 = BN[9:1];
    assign SW1 = CK[9:1];

endmodule