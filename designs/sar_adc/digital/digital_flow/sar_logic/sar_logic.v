module sar_logic (
    input  wire       SAMP,
    input  wire       CLK,
    input  wire       Vcomp,
    //output wire eoc
    output wire [8:0] SW0p,
    output wire [8:0] SW0n,
    output wire [8:0] SW1p,
    output wire [8:0] SW1n,
    output wire [9:0] B
);

    // --- Señales Internas ---
    wire        SAMPN;
    wire        VCB;
    wire        SET;
    wire [10:0] CK;
    wire [9:0]  BN;
    wire [9:0]  BN_out;

    // --- Entradas ---
    assign SAMPN = ~SAMP;
    assign VCB   = Vcomp;

    // --- Secuenciador / Shift Register (FF_D) ---
    reg [10:0] CK_reg;
    always @(posedge CLK or negedge SAMPN) begin
        if (!SAMPN) begin
            CK_reg <= 11'b0;
        end else begin
            CK_reg <= {1'b1, CK_reg[10:1]};
        end
    end
    assign CK = CK_reg;

    // --- Generación Combinacional de SET ---
    // Activo en bajo (0) solo cuando SAMP = 0 y CK[10] = 0
    assign SET = SAMP | CK[10];

    // --- Registros de Captura Explícitos con Enable de 1 ciclo ---
    // Bit 0
    reg bit_reg_0;
    always @(posedge CLK or negedge SAMPN or negedge SET) begin
        if (!SAMPN)                  bit_reg_0 <= 1'b0;
        else if (!SET)               bit_reg_0 <= 1'b1;
        else if (CK[1] && !CK[0])    bit_reg_0 <= VCB;
        else                         bit_reg_0 <= bit_reg_0;
    end
    assign BN_out[0] = bit_reg_0;

    // Bit 1
    reg bit_reg_1;
    always @(posedge CLK or negedge SAMPN or negedge SET) begin
        if (!SAMPN)                  bit_reg_1 <= 1'b0;
        else if (!SET)               bit_reg_1 <= 1'b1;
        else if (CK[2] && !CK[1])    bit_reg_1 <= VCB;
        else                         bit_reg_1 <= bit_reg_1;
    end
    assign BN_out[1] = bit_reg_1;

    // Bit 2
    reg bit_reg_2;
    always @(posedge CLK or negedge SAMPN or negedge SET) begin
        if (!SAMPN)                  bit_reg_2 <= 1'b0;
        else if (!SET)               bit_reg_2 <= 1'b1;
        else if (CK[3] && !CK[2])    bit_reg_2 <= VCB;
        else                         bit_reg_2 <= bit_reg_2;
    end
    assign BN_out[2] = bit_reg_2;

    // Bit 3
    reg bit_reg_3;
    always @(posedge CLK or negedge SAMPN or negedge SET) begin
        if (!SAMPN)                  bit_reg_3 <= 1'b0;
        else if (!SET)               bit_reg_3 <= 1'b1;
        else if (CK[4] && !CK[3])    bit_reg_3 <= VCB;
        else                         bit_reg_3 <= bit_reg_3;
    end
    assign BN_out[3] = bit_reg_3;

    // Bit 4
    reg bit_reg_4;
    always @(posedge CLK or negedge SAMPN or negedge SET) begin
        if (!SAMPN)                  bit_reg_4 <= 1'b0;
        else if (!SET)               bit_reg_4 <= 1'b1;
        else if (CK[5] && !CK[4])    bit_reg_4 <= VCB;
        else                         bit_reg_4 <= bit_reg_4;
    end
    assign BN_out[4] = bit_reg_4;

    // Bit 5
    reg bit_reg_5;
    always @(posedge CLK or negedge SAMPN or negedge SET) begin
        if (!SAMPN)                  bit_reg_5 <= 1'b0;
        else if (!SET)               bit_reg_5 <= 1'b1;
        else if (CK[6] && !CK[5])    bit_reg_5 <= VCB;
        else                         bit_reg_5 <= bit_reg_5;
    end
    assign BN_out[5] = bit_reg_5;

    // Bit 6
    reg bit_reg_6;
    always @(posedge CLK or negedge SAMPN or negedge SET) begin
        if (!SAMPN)                  bit_reg_6 <= 1'b0;
        else if (!SET)               bit_reg_6 <= 1'b1;
        else if (CK[7] && !CK[6])    bit_reg_6 <= VCB;
        else                         bit_reg_6 <= bit_reg_6;
    end
    assign BN_out[6] = bit_reg_6;

    // Bit 7
    reg bit_reg_7;
    always @(posedge CLK or negedge SAMPN or negedge SET) begin
        if (!SAMPN)                  bit_reg_7 <= 1'b0;
        else if (!SET)               bit_reg_7 <= 1'b1;
        else if (CK[8] && !CK[7])    bit_reg_7 <= VCB;
        else                         bit_reg_7 <= bit_reg_7;
    end
    assign BN_out[7] = bit_reg_7;

    // Bit 8
    reg bit_reg_8;
    always @(posedge CLK or negedge SAMPN or negedge SET) begin
        if (!SAMPN)                  bit_reg_8 <= 1'b0;
        else if (!SET)               bit_reg_8 <= 1'b1;
        else if (CK[9] && !CK[8])    bit_reg_8 <= VCB;
        else                         bit_reg_8 <= bit_reg_8;
    end
    assign BN_out[8] = bit_reg_8;

    // Bit 9
    reg bit_reg_9;
    always @(posedge CLK or negedge SAMPN or negedge SET) begin
        if (!SAMPN)                  bit_reg_9 <= 1'b0;
        else if (!SET)               bit_reg_9 <= 1'b1;
        else if (CK[10] && !CK[9])   bit_reg_9 <= VCB;
        else                         bit_reg_9 <= bit_reg_9;
    end
    assign BN_out[9] = bit_reg_9;

    // --- Manejo de Advertencias y Polaridad ---
    /* verilator lint_off UNUSEDSIGNAL */
    wire unused_bn = BN[0];
    /* verilator lint_on UNUSEDSIGNAL */
    
    assign BN = BN_out;
    assign B  = ~BN_out; 

    // --- Buffers de Salida ---
    assign SW0p[8:0] = BN[9:1];
    assign SW0n[8:0] = BN[9:1];
    assign SW1p[8:0] = CK[9:1];
    assign SW1n[8:0] = CK[9:1];
    //assign eoc       = CK[0];
endmodule