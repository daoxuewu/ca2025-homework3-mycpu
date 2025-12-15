module Memory(
  input         clock,
  input  [31:0] io_bundle_address, // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
  input  [31:0] io_bundle_write_data, // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
  input         io_bundle_write_enable, // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
  input         io_bundle_write_strobe_0, // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
  input         io_bundle_write_strobe_1, // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
  input         io_bundle_write_strobe_2, // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
  input         io_bundle_write_strobe_3, // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
  output [31:0] io_bundle_read_data, // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
  output [31:0] io_instruction, // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
  input  [31:0] io_instruction_address, // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
  input  [31:0] io_debug_read_address, // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
  output [31:0] io_debug_read_data // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_21;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] mem_0 [0:8191]; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire  mem_0_io_bundle_read_data_MPORT_en; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [12:0] mem_0_io_bundle_read_data_MPORT_addr; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [7:0] mem_0_io_bundle_read_data_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire  mem_0_io_debug_read_data_MPORT_en; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [12:0] mem_0_io_debug_read_data_MPORT_addr; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [7:0] mem_0_io_debug_read_data_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire  mem_0_io_instruction_MPORT_en; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [12:0] mem_0_io_instruction_MPORT_addr; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [7:0] mem_0_io_instruction_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [7:0] mem_0_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [12:0] mem_0_MPORT_addr; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire  mem_0_MPORT_mask; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire  mem_0_MPORT_en; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  reg  mem_0_io_bundle_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_0_io_bundle_read_data_MPORT_addr_pipe_0;
  reg  mem_0_io_debug_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_0_io_debug_read_data_MPORT_addr_pipe_0;
  reg  mem_0_io_instruction_MPORT_en_pipe_0;
  reg [12:0] mem_0_io_instruction_MPORT_addr_pipe_0;
  reg [7:0] mem_1 [0:8191]; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire  mem_1_io_bundle_read_data_MPORT_en; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [12:0] mem_1_io_bundle_read_data_MPORT_addr; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [7:0] mem_1_io_bundle_read_data_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire  mem_1_io_debug_read_data_MPORT_en; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [12:0] mem_1_io_debug_read_data_MPORT_addr; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [7:0] mem_1_io_debug_read_data_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire  mem_1_io_instruction_MPORT_en; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [12:0] mem_1_io_instruction_MPORT_addr; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [7:0] mem_1_io_instruction_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [7:0] mem_1_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [12:0] mem_1_MPORT_addr; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire  mem_1_MPORT_mask; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire  mem_1_MPORT_en; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  reg  mem_1_io_bundle_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_1_io_bundle_read_data_MPORT_addr_pipe_0;
  reg  mem_1_io_debug_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_1_io_debug_read_data_MPORT_addr_pipe_0;
  reg  mem_1_io_instruction_MPORT_en_pipe_0;
  reg [12:0] mem_1_io_instruction_MPORT_addr_pipe_0;
  reg [7:0] mem_2 [0:8191]; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire  mem_2_io_bundle_read_data_MPORT_en; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [12:0] mem_2_io_bundle_read_data_MPORT_addr; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [7:0] mem_2_io_bundle_read_data_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire  mem_2_io_debug_read_data_MPORT_en; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [12:0] mem_2_io_debug_read_data_MPORT_addr; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [7:0] mem_2_io_debug_read_data_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire  mem_2_io_instruction_MPORT_en; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [12:0] mem_2_io_instruction_MPORT_addr; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [7:0] mem_2_io_instruction_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [7:0] mem_2_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [12:0] mem_2_MPORT_addr; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire  mem_2_MPORT_mask; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire  mem_2_MPORT_en; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  reg  mem_2_io_bundle_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_2_io_bundle_read_data_MPORT_addr_pipe_0;
  reg  mem_2_io_debug_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_2_io_debug_read_data_MPORT_addr_pipe_0;
  reg  mem_2_io_instruction_MPORT_en_pipe_0;
  reg [12:0] mem_2_io_instruction_MPORT_addr_pipe_0;
  reg [7:0] mem_3 [0:8191]; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire  mem_3_io_bundle_read_data_MPORT_en; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [12:0] mem_3_io_bundle_read_data_MPORT_addr; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [7:0] mem_3_io_bundle_read_data_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire  mem_3_io_debug_read_data_MPORT_en; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [12:0] mem_3_io_debug_read_data_MPORT_addr; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [7:0] mem_3_io_debug_read_data_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire  mem_3_io_instruction_MPORT_en; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [12:0] mem_3_io_instruction_MPORT_addr; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [7:0] mem_3_io_instruction_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [7:0] mem_3_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire [12:0] mem_3_MPORT_addr; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire  mem_3_MPORT_mask; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  wire  mem_3_MPORT_en; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  reg  mem_3_io_bundle_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_3_io_bundle_read_data_MPORT_addr_pipe_0;
  reg  mem_3_io_debug_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_3_io_debug_read_data_MPORT_addr_pipe_0;
  reg  mem_3_io_instruction_MPORT_en_pipe_0;
  reg [12:0] mem_3_io_instruction_MPORT_addr_pipe_0;
  wire [31:0] write_word_addr = {{2'd0}, io_bundle_address[31:2]}; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 78:46]
  wire  _T = write_word_addr <= 32'h1fff; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 80:26]
  wire [31:0] read_word_addr = _T ? write_word_addr : 32'h0; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 86:27]
  wire [31:0] _debug_word_addr_T = {{2'd0}, io_debug_read_address[31:2]}; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 92:28]
  wire  _debug_word_addr_T_1 = _debug_word_addr_T <= 32'h1fff; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 92:43]
  wire [31:0] debug_word_addr = _debug_word_addr_T_1 ? _debug_word_addr_T : 32'h0; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 91:28]
  wire [31:0] _inst_word_addr_T = {{2'd0}, io_instruction_address[31:2]}; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 97:29]
  wire  _inst_word_addr_T_1 = _inst_word_addr_T <= 32'h1fff; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 97:44]
  wire [31:0] inst_word_addr = _inst_word_addr_T_1 ? _inst_word_addr_T : 32'h0; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 96:27]
  wire [15:0] io_bundle_read_data_lo = {mem_1_io_bundle_read_data_MPORT_data,mem_0_io_bundle_read_data_MPORT_data}; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 102:59]
  wire [15:0] io_bundle_read_data_hi = {mem_3_io_bundle_read_data_MPORT_data,mem_2_io_bundle_read_data_MPORT_data}; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 102:59]
  wire [15:0] io_debug_read_data_lo = {mem_1_io_debug_read_data_MPORT_data,mem_0_io_debug_read_data_MPORT_data}; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 103:60]
  wire [15:0] io_debug_read_data_hi = {mem_3_io_debug_read_data_MPORT_data,mem_2_io_debug_read_data_MPORT_data}; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 103:60]
  wire [15:0] io_instruction_lo = {mem_1_io_instruction_MPORT_data,mem_0_io_instruction_MPORT_data}; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 104:59]
  wire [15:0] io_instruction_hi = {mem_3_io_instruction_MPORT_data,mem_2_io_instruction_MPORT_data}; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 104:59]
  assign mem_0_io_bundle_read_data_MPORT_en = mem_0_io_bundle_read_data_MPORT_en_pipe_0;
  assign mem_0_io_bundle_read_data_MPORT_addr = mem_0_io_bundle_read_data_MPORT_addr_pipe_0;
  assign mem_0_io_bundle_read_data_MPORT_data = mem_0[mem_0_io_bundle_read_data_MPORT_addr]; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  assign mem_0_io_debug_read_data_MPORT_en = mem_0_io_debug_read_data_MPORT_en_pipe_0;
  assign mem_0_io_debug_read_data_MPORT_addr = mem_0_io_debug_read_data_MPORT_addr_pipe_0;
  assign mem_0_io_debug_read_data_MPORT_data = mem_0[mem_0_io_debug_read_data_MPORT_addr]; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  assign mem_0_io_instruction_MPORT_en = mem_0_io_instruction_MPORT_en_pipe_0;
  assign mem_0_io_instruction_MPORT_addr = mem_0_io_instruction_MPORT_addr_pipe_0;
  assign mem_0_io_instruction_MPORT_data = mem_0[mem_0_io_instruction_MPORT_addr]; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  assign mem_0_MPORT_data = io_bundle_write_data[7:0];
  assign mem_0_MPORT_addr = write_word_addr[12:0];
  assign mem_0_MPORT_mask = io_bundle_write_strobe_0;
  assign mem_0_MPORT_en = io_bundle_write_enable & _T;
  assign mem_1_io_bundle_read_data_MPORT_en = mem_1_io_bundle_read_data_MPORT_en_pipe_0;
  assign mem_1_io_bundle_read_data_MPORT_addr = mem_1_io_bundle_read_data_MPORT_addr_pipe_0;
  assign mem_1_io_bundle_read_data_MPORT_data = mem_1[mem_1_io_bundle_read_data_MPORT_addr]; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  assign mem_1_io_debug_read_data_MPORT_en = mem_1_io_debug_read_data_MPORT_en_pipe_0;
  assign mem_1_io_debug_read_data_MPORT_addr = mem_1_io_debug_read_data_MPORT_addr_pipe_0;
  assign mem_1_io_debug_read_data_MPORT_data = mem_1[mem_1_io_debug_read_data_MPORT_addr]; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  assign mem_1_io_instruction_MPORT_en = mem_1_io_instruction_MPORT_en_pipe_0;
  assign mem_1_io_instruction_MPORT_addr = mem_1_io_instruction_MPORT_addr_pipe_0;
  assign mem_1_io_instruction_MPORT_data = mem_1[mem_1_io_instruction_MPORT_addr]; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  assign mem_1_MPORT_data = io_bundle_write_data[15:8];
  assign mem_1_MPORT_addr = write_word_addr[12:0];
  assign mem_1_MPORT_mask = io_bundle_write_strobe_1;
  assign mem_1_MPORT_en = io_bundle_write_enable & _T;
  assign mem_2_io_bundle_read_data_MPORT_en = mem_2_io_bundle_read_data_MPORT_en_pipe_0;
  assign mem_2_io_bundle_read_data_MPORT_addr = mem_2_io_bundle_read_data_MPORT_addr_pipe_0;
  assign mem_2_io_bundle_read_data_MPORT_data = mem_2[mem_2_io_bundle_read_data_MPORT_addr]; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  assign mem_2_io_debug_read_data_MPORT_en = mem_2_io_debug_read_data_MPORT_en_pipe_0;
  assign mem_2_io_debug_read_data_MPORT_addr = mem_2_io_debug_read_data_MPORT_addr_pipe_0;
  assign mem_2_io_debug_read_data_MPORT_data = mem_2[mem_2_io_debug_read_data_MPORT_addr]; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  assign mem_2_io_instruction_MPORT_en = mem_2_io_instruction_MPORT_en_pipe_0;
  assign mem_2_io_instruction_MPORT_addr = mem_2_io_instruction_MPORT_addr_pipe_0;
  assign mem_2_io_instruction_MPORT_data = mem_2[mem_2_io_instruction_MPORT_addr]; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  assign mem_2_MPORT_data = io_bundle_write_data[23:16];
  assign mem_2_MPORT_addr = write_word_addr[12:0];
  assign mem_2_MPORT_mask = io_bundle_write_strobe_2;
  assign mem_2_MPORT_en = io_bundle_write_enable & _T;
  assign mem_3_io_bundle_read_data_MPORT_en = mem_3_io_bundle_read_data_MPORT_en_pipe_0;
  assign mem_3_io_bundle_read_data_MPORT_addr = mem_3_io_bundle_read_data_MPORT_addr_pipe_0;
  assign mem_3_io_bundle_read_data_MPORT_data = mem_3[mem_3_io_bundle_read_data_MPORT_addr]; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  assign mem_3_io_debug_read_data_MPORT_en = mem_3_io_debug_read_data_MPORT_en_pipe_0;
  assign mem_3_io_debug_read_data_MPORT_addr = mem_3_io_debug_read_data_MPORT_addr_pipe_0;
  assign mem_3_io_debug_read_data_MPORT_data = mem_3[mem_3_io_debug_read_data_MPORT_addr]; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  assign mem_3_io_instruction_MPORT_en = mem_3_io_instruction_MPORT_en_pipe_0;
  assign mem_3_io_instruction_MPORT_addr = mem_3_io_instruction_MPORT_addr_pipe_0;
  assign mem_3_io_instruction_MPORT_data = mem_3[mem_3_io_instruction_MPORT_addr]; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
  assign mem_3_MPORT_data = io_bundle_write_data[31:24];
  assign mem_3_MPORT_addr = write_word_addr[12:0];
  assign mem_3_MPORT_mask = io_bundle_write_strobe_3;
  assign mem_3_MPORT_en = io_bundle_write_enable & _T;
  assign io_bundle_read_data = {io_bundle_read_data_hi,io_bundle_read_data_lo}; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 102:59]
  assign io_instruction = {io_instruction_hi,io_instruction_lo}; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 104:59]
  assign io_debug_read_data = {io_debug_read_data_hi,io_debug_read_data_lo}; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 103:60]
  always @(posedge clock) begin
    if (mem_0_MPORT_en & mem_0_MPORT_mask) begin
      mem_0[mem_0_MPORT_addr] <= mem_0_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
    end
    mem_0_io_bundle_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_0_io_bundle_read_data_MPORT_addr_pipe_0 <= read_word_addr[12:0];
    end
    mem_0_io_debug_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_0_io_debug_read_data_MPORT_addr_pipe_0 <= debug_word_addr[12:0];
    end
    mem_0_io_instruction_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_0_io_instruction_MPORT_addr_pipe_0 <= inst_word_addr[12:0];
    end
    if (mem_1_MPORT_en & mem_1_MPORT_mask) begin
      mem_1[mem_1_MPORT_addr] <= mem_1_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
    end
    mem_1_io_bundle_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_1_io_bundle_read_data_MPORT_addr_pipe_0 <= read_word_addr[12:0];
    end
    mem_1_io_debug_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_1_io_debug_read_data_MPORT_addr_pipe_0 <= debug_word_addr[12:0];
    end
    mem_1_io_instruction_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_1_io_instruction_MPORT_addr_pipe_0 <= inst_word_addr[12:0];
    end
    if (mem_2_MPORT_en & mem_2_MPORT_mask) begin
      mem_2[mem_2_MPORT_addr] <= mem_2_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
    end
    mem_2_io_bundle_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_2_io_bundle_read_data_MPORT_addr_pipe_0 <= read_word_addr[12:0];
    end
    mem_2_io_debug_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_2_io_debug_read_data_MPORT_addr_pipe_0 <= debug_word_addr[12:0];
    end
    mem_2_io_instruction_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_2_io_instruction_MPORT_addr_pipe_0 <= inst_word_addr[12:0];
    end
    if (mem_3_MPORT_en & mem_3_MPORT_mask) begin
      mem_3[mem_3_MPORT_addr] <= mem_3_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
    end
    mem_3_io_bundle_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_3_io_bundle_read_data_MPORT_addr_pipe_0 <= read_word_addr[12:0];
    end
    mem_3_io_debug_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_3_io_debug_read_data_MPORT_addr_pipe_0 <= debug_word_addr[12:0];
    end
    mem_3_io_instruction_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_3_io_instruction_MPORT_addr_pipe_0 <= inst_word_addr[12:0];
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8192; initvar = initvar+1)
    mem_0[initvar] = _RAND_0[7:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8192; initvar = initvar+1)
    mem_1[initvar] = _RAND_7[7:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8192; initvar = initvar+1)
    mem_2[initvar] = _RAND_14[7:0];
  _RAND_21 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8192; initvar = initvar+1)
    mem_3[initvar] = _RAND_21[7:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem_0_io_bundle_read_data_MPORT_en_pipe_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  mem_0_io_bundle_read_data_MPORT_addr_pipe_0 = _RAND_2[12:0];
  _RAND_3 = {1{`RANDOM}};
  mem_0_io_debug_read_data_MPORT_en_pipe_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  mem_0_io_debug_read_data_MPORT_addr_pipe_0 = _RAND_4[12:0];
  _RAND_5 = {1{`RANDOM}};
  mem_0_io_instruction_MPORT_en_pipe_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  mem_0_io_instruction_MPORT_addr_pipe_0 = _RAND_6[12:0];
  _RAND_8 = {1{`RANDOM}};
  mem_1_io_bundle_read_data_MPORT_en_pipe_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  mem_1_io_bundle_read_data_MPORT_addr_pipe_0 = _RAND_9[12:0];
  _RAND_10 = {1{`RANDOM}};
  mem_1_io_debug_read_data_MPORT_en_pipe_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  mem_1_io_debug_read_data_MPORT_addr_pipe_0 = _RAND_11[12:0];
  _RAND_12 = {1{`RANDOM}};
  mem_1_io_instruction_MPORT_en_pipe_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  mem_1_io_instruction_MPORT_addr_pipe_0 = _RAND_13[12:0];
  _RAND_15 = {1{`RANDOM}};
  mem_2_io_bundle_read_data_MPORT_en_pipe_0 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  mem_2_io_bundle_read_data_MPORT_addr_pipe_0 = _RAND_16[12:0];
  _RAND_17 = {1{`RANDOM}};
  mem_2_io_debug_read_data_MPORT_en_pipe_0 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  mem_2_io_debug_read_data_MPORT_addr_pipe_0 = _RAND_18[12:0];
  _RAND_19 = {1{`RANDOM}};
  mem_2_io_instruction_MPORT_en_pipe_0 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  mem_2_io_instruction_MPORT_addr_pipe_0 = _RAND_20[12:0];
  _RAND_22 = {1{`RANDOM}};
  mem_3_io_bundle_read_data_MPORT_en_pipe_0 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  mem_3_io_bundle_read_data_MPORT_addr_pipe_0 = _RAND_23[12:0];
  _RAND_24 = {1{`RANDOM}};
  mem_3_io_debug_read_data_MPORT_en_pipe_0 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  mem_3_io_debug_read_data_MPORT_addr_pipe_0 = _RAND_25[12:0];
  _RAND_26 = {1{`RANDOM}};
  mem_3_io_instruction_MPORT_en_pipe_0 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  mem_3_io_instruction_MPORT_addr_pipe_0 = _RAND_27[12:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module InstructionROM(
  input         clock,
  input  [31:0] io_address, // @[1-single-cycle/src/main/scala/peripheral/InstructionROM.scala 18:14]
  output [31:0] io_data // @[1-single-cycle/src/main/scala/peripheral/InstructionROM.scala 18:14]
);
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_GARBAGE_ASSIGN
  reg [31:0] mem [0:11]; // @[1-single-cycle/src/main/scala/peripheral/InstructionROM.scala 24:45]
  wire  mem_io_data_MPORT_en; // @[1-single-cycle/src/main/scala/peripheral/InstructionROM.scala 24:45]
  wire [3:0] mem_io_data_MPORT_addr; // @[1-single-cycle/src/main/scala/peripheral/InstructionROM.scala 24:45]
  wire [31:0] mem_io_data_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/InstructionROM.scala 24:45]
  assign mem_io_data_MPORT_en = 1'h1;
  assign mem_io_data_MPORT_addr = io_address[3:0];
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_io_data_MPORT_data = mem[mem_io_data_MPORT_addr]; // @[1-single-cycle/src/main/scala/peripheral/InstructionROM.scala 24:45]
  `else
  assign mem_io_data_MPORT_data = mem_io_data_MPORT_addr >= 4'hc ? _RAND_0[31:0] : mem[mem_io_data_MPORT_addr]; // @[1-single-cycle/src/main/scala/peripheral/InstructionROM.scala 24:45]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign io_data = mem_io_data_MPORT_data; // @[1-single-cycle/src/main/scala/peripheral/InstructionROM.scala 26:11]
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
  integer initvar;
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  _RAND_0 = {1{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
  `endif // RANDOMIZE
  $readmemh("/mnt/c/Users/nsda/chisel-tutorial/ca2025-mycpu/1-single-cycle/verilog/sb.asmbin.txt", mem);
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ROMLoader(
  input         clock,
  input         reset,
  output [31:0] io_bundle_address, // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]
  output [31:0] io_bundle_write_data, // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]
  output        io_bundle_write_enable, // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]
  output        io_bundle_write_strobe_0, // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]
  output        io_bundle_write_strobe_1, // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]
  output        io_bundle_write_strobe_2, // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]
  output        io_bundle_write_strobe_3, // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]
  output [31:0] io_rom_address, // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]
  input  [31:0] io_rom_data, // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]
  output        io_load_finished // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] address; // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 21:24]
  reg  valid; // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 22:24]
  wire [33:0] _GEN_10 = {address, 2'h0}; // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 31:40]
  wire [34:0] _io_bundle_address_T = {{1'd0}, _GEN_10}; // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 31:40]
  wire [34:0] _io_bundle_address_T_2 = _io_bundle_address_T + 35'h1000; // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 31:55]
  wire [31:0] _address_T_1 = address + 32'h1; // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 33:39]
  wire  _GEN_0 = address == 32'hb | valid; // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 34:40 35:13 22:24]
  wire [34:0] _GEN_3 = address <= 32'hb ? _io_bundle_address_T_2 : 35'h0; // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 25:26 28:37 31:28]
  assign io_bundle_address = _GEN_3[31:0];
  assign io_bundle_write_data = address <= 32'hb ? io_rom_data : 32'h0; // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 26:26 28:37 30:28]
  assign io_bundle_write_enable = address <= 32'hb; // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 28:16]
  assign io_bundle_write_strobe_0 = address <= 32'hb; // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 28:16]
  assign io_bundle_write_strobe_1 = address <= 32'hb; // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 28:16]
  assign io_bundle_write_strobe_2 = address <= 32'hb; // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 28:16]
  assign io_bundle_write_strobe_3 = address <= 32'hb; // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 28:16]
  assign io_rom_address = address; // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 39:20]
  assign io_load_finished = valid; // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 38:20]
  always @(posedge clock) begin
    if (reset) begin // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 21:24]
      address <= 32'h0; // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 21:24]
    end else if (address <= 32'hb) begin // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 28:37]
      address <= _address_T_1; // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 33:28]
    end
    if (reset) begin // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 22:24]
      valid <= 1'h0; // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 22:24]
    end else if (address <= 32'hb) begin // @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 28:37]
      valid <= _GEN_0;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  address = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  valid = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RegisterFile(
  input         clock,
  input         reset,
  input         io_write_enable, // @[common/src/main/scala/riscv/core/RegisterFile.scala 21:14]
  input  [4:0]  io_write_address, // @[common/src/main/scala/riscv/core/RegisterFile.scala 21:14]
  input  [31:0] io_write_data, // @[common/src/main/scala/riscv/core/RegisterFile.scala 21:14]
  input  [4:0]  io_read_address1, // @[common/src/main/scala/riscv/core/RegisterFile.scala 21:14]
  input  [4:0]  io_read_address2, // @[common/src/main/scala/riscv/core/RegisterFile.scala 21:14]
  output [31:0] io_read_data1, // @[common/src/main/scala/riscv/core/RegisterFile.scala 21:14]
  output [31:0] io_read_data2, // @[common/src/main/scala/riscv/core/RegisterFile.scala 21:14]
  input  [4:0]  io_debug_read_address, // @[common/src/main/scala/riscv/core/RegisterFile.scala 21:14]
  output [31:0] io_debug_read_data // @[common/src/main/scala/riscv/core/RegisterFile.scala 21:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] registers_0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_1; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_2; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_3; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_4; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_5; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_6; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_7; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_8; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_9; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_10; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_11; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_12; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_13; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_14; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_15; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_16; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_17; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_18; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_19; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_20; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_21; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_22; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_23; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_24; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_25; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_26; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_27; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_28; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_29; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  reg [31:0] registers_30; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
  wire [4:0] _T_5 = io_write_address - 5'h1; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:34]
  wire  _io_read_data1_T = io_read_address1 == 5'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 46:22]
  wire [4:0] _io_read_data1_T_2 = io_read_address1 - 5'h1; // @[common/src/main/scala/riscv/core/RegisterFile.scala 48:32]
  wire [31:0] _GEN_94 = 5'h1 == _io_read_data1_T_2 ? registers_1 : registers_0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_95 = 5'h2 == _io_read_data1_T_2 ? registers_2 : _GEN_94; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_96 = 5'h3 == _io_read_data1_T_2 ? registers_3 : _GEN_95; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_97 = 5'h4 == _io_read_data1_T_2 ? registers_4 : _GEN_96; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_98 = 5'h5 == _io_read_data1_T_2 ? registers_5 : _GEN_97; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_99 = 5'h6 == _io_read_data1_T_2 ? registers_6 : _GEN_98; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_100 = 5'h7 == _io_read_data1_T_2 ? registers_7 : _GEN_99; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_101 = 5'h8 == _io_read_data1_T_2 ? registers_8 : _GEN_100; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_102 = 5'h9 == _io_read_data1_T_2 ? registers_9 : _GEN_101; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_103 = 5'ha == _io_read_data1_T_2 ? registers_10 : _GEN_102; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_104 = 5'hb == _io_read_data1_T_2 ? registers_11 : _GEN_103; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_105 = 5'hc == _io_read_data1_T_2 ? registers_12 : _GEN_104; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_106 = 5'hd == _io_read_data1_T_2 ? registers_13 : _GEN_105; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_107 = 5'he == _io_read_data1_T_2 ? registers_14 : _GEN_106; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_108 = 5'hf == _io_read_data1_T_2 ? registers_15 : _GEN_107; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_109 = 5'h10 == _io_read_data1_T_2 ? registers_16 : _GEN_108; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_110 = 5'h11 == _io_read_data1_T_2 ? registers_17 : _GEN_109; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_111 = 5'h12 == _io_read_data1_T_2 ? registers_18 : _GEN_110; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_112 = 5'h13 == _io_read_data1_T_2 ? registers_19 : _GEN_111; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_113 = 5'h14 == _io_read_data1_T_2 ? registers_20 : _GEN_112; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_114 = 5'h15 == _io_read_data1_T_2 ? registers_21 : _GEN_113; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_115 = 5'h16 == _io_read_data1_T_2 ? registers_22 : _GEN_114; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_116 = 5'h17 == _io_read_data1_T_2 ? registers_23 : _GEN_115; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_117 = 5'h18 == _io_read_data1_T_2 ? registers_24 : _GEN_116; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_118 = 5'h19 == _io_read_data1_T_2 ? registers_25 : _GEN_117; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_119 = 5'h1a == _io_read_data1_T_2 ? registers_26 : _GEN_118; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_120 = 5'h1b == _io_read_data1_T_2 ? registers_27 : _GEN_119; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_121 = 5'h1c == _io_read_data1_T_2 ? registers_28 : _GEN_120; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_122 = 5'h1d == _io_read_data1_T_2 ? registers_29 : _GEN_121; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_123 = 5'h1e == _io_read_data1_T_2 ? registers_30 : _GEN_122; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
  wire  _io_read_data2_T = io_read_address2 == 5'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 52:22]
  wire [4:0] _io_read_data2_T_2 = io_read_address2 - 5'h1; // @[common/src/main/scala/riscv/core/RegisterFile.scala 54:32]
  wire [31:0] _GEN_125 = 5'h1 == _io_read_data2_T_2 ? registers_1 : registers_0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_126 = 5'h2 == _io_read_data2_T_2 ? registers_2 : _GEN_125; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_127 = 5'h3 == _io_read_data2_T_2 ? registers_3 : _GEN_126; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_128 = 5'h4 == _io_read_data2_T_2 ? registers_4 : _GEN_127; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_129 = 5'h5 == _io_read_data2_T_2 ? registers_5 : _GEN_128; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_130 = 5'h6 == _io_read_data2_T_2 ? registers_6 : _GEN_129; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_131 = 5'h7 == _io_read_data2_T_2 ? registers_7 : _GEN_130; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_132 = 5'h8 == _io_read_data2_T_2 ? registers_8 : _GEN_131; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_133 = 5'h9 == _io_read_data2_T_2 ? registers_9 : _GEN_132; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_134 = 5'ha == _io_read_data2_T_2 ? registers_10 : _GEN_133; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_135 = 5'hb == _io_read_data2_T_2 ? registers_11 : _GEN_134; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_136 = 5'hc == _io_read_data2_T_2 ? registers_12 : _GEN_135; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_137 = 5'hd == _io_read_data2_T_2 ? registers_13 : _GEN_136; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_138 = 5'he == _io_read_data2_T_2 ? registers_14 : _GEN_137; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_139 = 5'hf == _io_read_data2_T_2 ? registers_15 : _GEN_138; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_140 = 5'h10 == _io_read_data2_T_2 ? registers_16 : _GEN_139; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_141 = 5'h11 == _io_read_data2_T_2 ? registers_17 : _GEN_140; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_142 = 5'h12 == _io_read_data2_T_2 ? registers_18 : _GEN_141; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_143 = 5'h13 == _io_read_data2_T_2 ? registers_19 : _GEN_142; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_144 = 5'h14 == _io_read_data2_T_2 ? registers_20 : _GEN_143; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_145 = 5'h15 == _io_read_data2_T_2 ? registers_21 : _GEN_144; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_146 = 5'h16 == _io_read_data2_T_2 ? registers_22 : _GEN_145; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_147 = 5'h17 == _io_read_data2_T_2 ? registers_23 : _GEN_146; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_148 = 5'h18 == _io_read_data2_T_2 ? registers_24 : _GEN_147; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_149 = 5'h19 == _io_read_data2_T_2 ? registers_25 : _GEN_148; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_150 = 5'h1a == _io_read_data2_T_2 ? registers_26 : _GEN_149; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_151 = 5'h1b == _io_read_data2_T_2 ? registers_27 : _GEN_150; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_152 = 5'h1c == _io_read_data2_T_2 ? registers_28 : _GEN_151; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_153 = 5'h1d == _io_read_data2_T_2 ? registers_29 : _GEN_152; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire [31:0] _GEN_154 = 5'h1e == _io_read_data2_T_2 ? registers_30 : _GEN_153; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
  wire  _io_debug_read_data_T = io_debug_read_address == 5'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 58:27]
  wire [4:0] _io_debug_read_data_T_2 = io_debug_read_address - 5'h1; // @[common/src/main/scala/riscv/core/RegisterFile.scala 60:37]
  wire [31:0] _GEN_156 = 5'h1 == _io_debug_read_data_T_2 ? registers_1 : registers_0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_157 = 5'h2 == _io_debug_read_data_T_2 ? registers_2 : _GEN_156; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_158 = 5'h3 == _io_debug_read_data_T_2 ? registers_3 : _GEN_157; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_159 = 5'h4 == _io_debug_read_data_T_2 ? registers_4 : _GEN_158; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_160 = 5'h5 == _io_debug_read_data_T_2 ? registers_5 : _GEN_159; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_161 = 5'h6 == _io_debug_read_data_T_2 ? registers_6 : _GEN_160; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_162 = 5'h7 == _io_debug_read_data_T_2 ? registers_7 : _GEN_161; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_163 = 5'h8 == _io_debug_read_data_T_2 ? registers_8 : _GEN_162; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_164 = 5'h9 == _io_debug_read_data_T_2 ? registers_9 : _GEN_163; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_165 = 5'ha == _io_debug_read_data_T_2 ? registers_10 : _GEN_164; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_166 = 5'hb == _io_debug_read_data_T_2 ? registers_11 : _GEN_165; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_167 = 5'hc == _io_debug_read_data_T_2 ? registers_12 : _GEN_166; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_168 = 5'hd == _io_debug_read_data_T_2 ? registers_13 : _GEN_167; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_169 = 5'he == _io_debug_read_data_T_2 ? registers_14 : _GEN_168; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_170 = 5'hf == _io_debug_read_data_T_2 ? registers_15 : _GEN_169; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_171 = 5'h10 == _io_debug_read_data_T_2 ? registers_16 : _GEN_170; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_172 = 5'h11 == _io_debug_read_data_T_2 ? registers_17 : _GEN_171; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_173 = 5'h12 == _io_debug_read_data_T_2 ? registers_18 : _GEN_172; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_174 = 5'h13 == _io_debug_read_data_T_2 ? registers_19 : _GEN_173; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_175 = 5'h14 == _io_debug_read_data_T_2 ? registers_20 : _GEN_174; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_176 = 5'h15 == _io_debug_read_data_T_2 ? registers_21 : _GEN_175; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_177 = 5'h16 == _io_debug_read_data_T_2 ? registers_22 : _GEN_176; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_178 = 5'h17 == _io_debug_read_data_T_2 ? registers_23 : _GEN_177; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_179 = 5'h18 == _io_debug_read_data_T_2 ? registers_24 : _GEN_178; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_180 = 5'h19 == _io_debug_read_data_T_2 ? registers_25 : _GEN_179; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_181 = 5'h1a == _io_debug_read_data_T_2 ? registers_26 : _GEN_180; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_182 = 5'h1b == _io_debug_read_data_T_2 ? registers_27 : _GEN_181; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_183 = 5'h1c == _io_debug_read_data_T_2 ? registers_28 : _GEN_182; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_184 = 5'h1d == _io_debug_read_data_T_2 ? registers_29 : _GEN_183; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  wire [31:0] _GEN_185 = 5'h1e == _io_debug_read_data_T_2 ? registers_30 : _GEN_184; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
  assign io_read_data1 = _io_read_data1_T ? 32'h0 : _GEN_123; // @[common/src/main/scala/riscv/core/RegisterFile.scala 45:23]
  assign io_read_data2 = _io_read_data2_T ? 32'h0 : _GEN_154; // @[common/src/main/scala/riscv/core/RegisterFile.scala 51:23]
  assign io_debug_read_data = _io_debug_read_data_T ? 32'h0 : _GEN_185; // @[common/src/main/scala/riscv/core/RegisterFile.scala 57:28]
  always @(posedge clock) begin
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_0 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h0 == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_0 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_1 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h1 == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_1 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_2 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h2 == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_2 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_3 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h3 == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_3 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_4 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h4 == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_4 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_5 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h5 == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_5 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_6 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h6 == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_6 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_7 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h7 == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_7 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_8 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h8 == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_8 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_9 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h9 == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_9 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_10 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'ha == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_10 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_11 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'hb == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_11 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_12 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'hc == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_12 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_13 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'hd == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_13 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_14 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'he == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_14 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_15 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'hf == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_15 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_16 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h10 == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_16 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_17 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h11 == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_17 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_18 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h12 == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_18 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_19 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h13 == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_19 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_20 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h14 == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_20 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_21 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h15 == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_21 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_22 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h16 == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_22 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_23 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h17 == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_23 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_24 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h18 == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_24 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_25 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h19 == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_25 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_26 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h1a == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_26 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_27 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h1b == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_27 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_28 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h1c == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_28 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_29 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h1d == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_29 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_30 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h1e == _T_5) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_30 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  registers_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  registers_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  registers_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  registers_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  registers_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  registers_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  registers_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  registers_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  registers_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  registers_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  registers_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  registers_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  registers_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  registers_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  registers_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  registers_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  registers_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  registers_17 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  registers_18 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  registers_19 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  registers_20 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  registers_21 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  registers_22 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  registers_23 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  registers_24 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  registers_25 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  registers_26 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  registers_27 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  registers_28 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  registers_29 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  registers_30 = _RAND_30[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module InstructionFetch(
  input         clock,
  input         reset,
  input         io_jump_flag_id, // @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 28:14]
  input  [31:0] io_jump_address_id, // @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 28:14]
  input  [31:0] io_instruction_read_data, // @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 28:14]
  input         io_instruction_valid, // @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 28:14]
  output [31:0] io_instruction_address, // @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 28:14]
  output [31:0] io_instruction // @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 28:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] pc; // @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 39:19]
  wire [31:0] _pc_T_1 = pc + 32'h4; // @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 70:55]
  assign io_instruction_address = pc; // @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 79:26]
  assign io_instruction = io_instruction_valid ? io_instruction_read_data : 32'h13; // @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 62:30 63:20 77:20]
  always @(posedge clock) begin
    if (reset) begin // @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 39:19]
      pc <= 32'h1000; // @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 39:19]
    end else if (io_instruction_valid) begin // @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 62:30]
      if (io_jump_flag_id) begin // @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 70:14]
        pc <= io_jump_address_id;
      end else begin
        pc <= _pc_T_1;
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  pc = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module InstructionDecode(
  input  [31:0] io_instruction, // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]
  output [4:0]  io_regs_reg1_read_address, // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]
  output [4:0]  io_regs_reg2_read_address, // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]
  output [31:0] io_ex_immediate, // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]
  output        io_ex_aluop1_source, // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]
  output        io_ex_aluop2_source, // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]
  output        io_memory_read_enable, // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]
  output        io_memory_write_enable, // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]
  output [1:0]  io_wb_reg_write_source, // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]
  output        io_reg_write_enable, // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]
  output [4:0]  io_reg_write_address // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]
);
  wire [6:0] opcode = io_instruction[6:0]; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 166:32]
  wire [4:0] rs1 = io_instruction[19:15]; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 167:32]
  wire [4:0] rs2 = io_instruction[24:20]; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 168:32]
  wire [4:0] rd = io_instruction[11:7]; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 169:32]
  wire  isLoad = opcode == 7'h3; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 171:25]
  wire  isStore = opcode == 7'h23; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 172:25]
  wire  isOpImm = opcode == 7'h13; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 173:25]
  wire  isOp = opcode == 7'h33; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 174:25]
  wire  isLui = opcode == 7'h37; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 175:25]
  wire  isAuipc = opcode == 7'h17; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 176:25]
  wire  isJal = opcode == 7'h6f; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 177:25]
  wire  isJalr = opcode == 7'h67; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 178:25]
  wire  isBranch = opcode == 7'h63; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 179:25]
  wire  _usesRs1_T_1 = isLoad | isStore | isOpImm; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 180:36]
  wire  usesRs1 = isLoad | isStore | isOpImm | isOp | isBranch | isJalr; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 180:67]
  wire  usesRs2 = isStore | isOp | isBranch; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 181:34]
  wire  _regWrite_T = isLoad | isOpImm; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 182:25]
  wire [1:0] _GEN_0 = isJal | isJalr ? 2'h2 : 2'h0; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 204:30 205:14 198:29]
  wire  _T_4 = _regWrite_T | isJalr; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 231:26]
  wire [1:0] _GEN_5 = isStore ? 2'h2 : {{1'd0}, _T_4}; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 234:17 235:13]
  wire [1:0] _GEN_6 = isBranch ? 2'h3 : _GEN_5; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 237:18 238:13]
  wire [2:0] _GEN_7 = isLui | isAuipc ? 3'h4 : {{1'd0}, _GEN_6}; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 240:26 241:13]
  wire [2:0] immKind = isJal ? 3'h5 : _GEN_7; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 243:15 244:13]
  wire [19:0] _immI_T_1 = io_instruction[31] ? 20'hfffff : 20'h0; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 269:9]
  wire [31:0] immI = {_immI_T_1,io_instruction[31:20]}; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 268:17]
  wire [31:0] immS = {_immI_T_1,io_instruction[31:25],rd}; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 279:17]
  wire [18:0] _immB_T_1 = io_instruction[31] ? 19'h7ffff : 19'h0; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 293:9]
  wire [31:0] immB = {_immB_T_1,io_instruction[31],io_instruction[7],io_instruction[30:25],io_instruction[11:8],1'h0}; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 292:17]
  wire [31:0] immU = {io_instruction[31:12],12'h0}; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 305:17]
  wire [10:0] _immJ_T_1 = io_instruction[31] ? 11'h7ff : 11'h0; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 315:9]
  wire [31:0] immJ = {_immJ_T_1,io_instruction[31],io_instruction[19:12],io_instruction[20],io_instruction[30:21],1'h0}; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 314:17]
  wire [31:0] _immediate_T_7 = 3'h1 == immKind ? immI : 32'h0; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 323:72]
  wire [31:0] _immediate_T_9 = 3'h2 == immKind ? immS : _immediate_T_7; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 323:72]
  wire [31:0] _immediate_T_11 = 3'h3 == immKind ? immB : _immediate_T_9; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 323:72]
  wire [31:0] _immediate_T_13 = 3'h4 == immKind ? immU : _immediate_T_11; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 323:72]
  assign io_regs_reg1_read_address = usesRs1 ? rs1 : 5'h0; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 247:35]
  assign io_regs_reg2_read_address = usesRs2 ? rs2 : 5'h0; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 248:35]
  assign io_ex_immediate = 3'h5 == immKind ? immJ : _immediate_T_13; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 323:72]
  assign io_ex_aluop1_source = isBranch | isAuipc | isJal; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 215:28]
  assign io_ex_aluop2_source = _usesRs1_T_1 | isBranch | isLui | isAuipc | isJal | isJalr; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 222:94]
  assign io_memory_read_enable = opcode == 7'h3; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 171:25]
  assign io_memory_write_enable = opcode == 7'h23; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 172:25]
  assign io_wb_reg_write_source = isLoad ? 2'h1 : _GEN_0; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 200:16 201:14]
  assign io_reg_write_enable = isLoad | isOpImm | isOp | isLui | isAuipc | isJal | isJalr; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 182:73]
  assign io_reg_write_address = io_instruction[11:7]; // @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 169:32]
endmodule
module ALU(
  input  [3:0]  io_func, // @[common/src/main/scala/riscv/core/ALU.scala 27:14]
  input  [31:0] io_op1, // @[common/src/main/scala/riscv/core/ALU.scala 27:14]
  input  [31:0] io_op2, // @[common/src/main/scala/riscv/core/ALU.scala 27:14]
  output [31:0] io_result // @[common/src/main/scala/riscv/core/ALU.scala 27:14]
);
  wire [31:0] _io_result_T_1 = io_op1 + io_op2; // @[common/src/main/scala/riscv/core/ALU.scala 39:27]
  wire [31:0] _io_result_T_3 = io_op1 - io_op2; // @[common/src/main/scala/riscv/core/ALU.scala 42:27]
  wire [62:0] _GEN_10 = {{31'd0}, io_op1}; // @[common/src/main/scala/riscv/core/ALU.scala 45:27]
  wire [62:0] _io_result_T_5 = _GEN_10 << io_op2[4:0]; // @[common/src/main/scala/riscv/core/ALU.scala 45:27]
  wire [31:0] _io_result_T_6 = io_op1; // @[common/src/main/scala/riscv/core/ALU.scala 48:27]
  wire [31:0] _io_result_T_7 = io_op2; // @[common/src/main/scala/riscv/core/ALU.scala 48:43]
  wire [31:0] _io_result_T_9 = io_op1 ^ io_op2; // @[common/src/main/scala/riscv/core/ALU.scala 51:27]
  wire [31:0] _io_result_T_10 = io_op1 | io_op2; // @[common/src/main/scala/riscv/core/ALU.scala 54:27]
  wire [31:0] _io_result_T_11 = io_op1 & io_op2; // @[common/src/main/scala/riscv/core/ALU.scala 57:27]
  wire [31:0] _io_result_T_13 = io_op1 >> io_op2[4:0]; // @[common/src/main/scala/riscv/core/ALU.scala 60:27]
  wire [31:0] _io_result_T_17 = $signed(io_op1) >>> io_op2[4:0]; // @[common/src/main/scala/riscv/core/ALU.scala 63:52]
  wire  _GEN_0 = 4'ha == io_func & io_op1 < io_op2; // @[common/src/main/scala/riscv/core/ALU.scala 36:13 37:19 66:17]
  wire [31:0] _GEN_1 = 4'h9 == io_func ? _io_result_T_17 : {{31'd0}, _GEN_0}; // @[common/src/main/scala/riscv/core/ALU.scala 37:19 63:17]
  wire [31:0] _GEN_2 = 4'h8 == io_func ? _io_result_T_13 : _GEN_1; // @[common/src/main/scala/riscv/core/ALU.scala 37:19 60:17]
  wire [31:0] _GEN_3 = 4'h7 == io_func ? _io_result_T_11 : _GEN_2; // @[common/src/main/scala/riscv/core/ALU.scala 37:19 57:17]
  wire [31:0] _GEN_4 = 4'h6 == io_func ? _io_result_T_10 : _GEN_3; // @[common/src/main/scala/riscv/core/ALU.scala 37:19 54:17]
  wire [31:0] _GEN_5 = 4'h5 == io_func ? _io_result_T_9 : _GEN_4; // @[common/src/main/scala/riscv/core/ALU.scala 37:19 51:17]
  wire [31:0] _GEN_6 = 4'h4 == io_func ? {{31'd0}, $signed(_io_result_T_6) < $signed(_io_result_T_7)} : _GEN_5; // @[common/src/main/scala/riscv/core/ALU.scala 37:19 48:17]
  wire [62:0] _GEN_7 = 4'h3 == io_func ? _io_result_T_5 : {{31'd0}, _GEN_6}; // @[common/src/main/scala/riscv/core/ALU.scala 37:19 45:17]
  wire [62:0] _GEN_8 = 4'h2 == io_func ? {{31'd0}, _io_result_T_3} : _GEN_7; // @[common/src/main/scala/riscv/core/ALU.scala 37:19 42:17]
  wire [62:0] _GEN_9 = 4'h1 == io_func ? {{31'd0}, _io_result_T_1} : _GEN_8; // @[common/src/main/scala/riscv/core/ALU.scala 37:19 39:17]
  assign io_result = _GEN_9[31:0];
endmodule
module ALUControl(
  input  [6:0] io_opcode, // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 21:14]
  input  [2:0] io_funct3, // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 21:14]
  input  [6:0] io_funct7, // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 21:14]
  output [3:0] io_alu_funct // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 21:14]
);
  wire [3:0] _io_alu_funct_T_1 = io_funct7[5] ? 4'h9 : 4'h8; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 66:41]
  wire  _io_alu_funct_T_2 = 3'h1 == io_funct3; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
  wire [1:0] _io_alu_funct_T_3 = 3'h1 == io_funct3 ? 2'h3 : 2'h1; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
  wire  _io_alu_funct_T_4 = 3'h2 == io_funct3; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
  wire [2:0] _io_alu_funct_T_5 = 3'h2 == io_funct3 ? 3'h4 : {{1'd0}, _io_alu_funct_T_3}; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
  wire  _io_alu_funct_T_6 = 3'h3 == io_funct3; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
  wire [3:0] _io_alu_funct_T_7 = 3'h3 == io_funct3 ? 4'ha : {{1'd0}, _io_alu_funct_T_5}; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
  wire  _io_alu_funct_T_8 = 3'h4 == io_funct3; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
  wire [3:0] _io_alu_funct_T_9 = 3'h4 == io_funct3 ? 4'h5 : _io_alu_funct_T_7; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
  wire  _io_alu_funct_T_10 = 3'h6 == io_funct3; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
  wire [3:0] _io_alu_funct_T_11 = 3'h6 == io_funct3 ? 4'h6 : _io_alu_funct_T_9; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
  wire  _io_alu_funct_T_12 = 3'h7 == io_funct3; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
  wire [3:0] _io_alu_funct_T_13 = 3'h7 == io_funct3 ? 4'h7 : _io_alu_funct_T_11; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
  wire  _io_alu_funct_T_14 = 3'h5 == io_funct3; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
  wire [3:0] _io_alu_funct_T_15 = 3'h5 == io_funct3 ? _io_alu_funct_T_1 : _io_alu_funct_T_13; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
  wire [1:0] _io_alu_funct_T_17 = io_funct7[5] ? 2'h2 : 2'h1; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 83:43]
  wire [1:0] _io_alu_funct_T_21 = _io_alu_funct_T_2 ? 2'h3 : _io_alu_funct_T_17; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 77:62]
  wire [2:0] _io_alu_funct_T_23 = _io_alu_funct_T_4 ? 3'h4 : {{1'd0}, _io_alu_funct_T_21}; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 77:62]
  wire [3:0] _io_alu_funct_T_25 = _io_alu_funct_T_6 ? 4'ha : {{1'd0}, _io_alu_funct_T_23}; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 77:62]
  wire [3:0] _io_alu_funct_T_27 = _io_alu_funct_T_8 ? 4'h5 : _io_alu_funct_T_25; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 77:62]
  wire [3:0] _io_alu_funct_T_29 = _io_alu_funct_T_10 ? 4'h6 : _io_alu_funct_T_27; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 77:62]
  wire [3:0] _io_alu_funct_T_31 = _io_alu_funct_T_12 ? 4'h7 : _io_alu_funct_T_29; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 77:62]
  wire [3:0] _io_alu_funct_T_33 = _io_alu_funct_T_14 ? _io_alu_funct_T_1 : _io_alu_funct_T_31; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 77:62]
  wire [3:0] _GEN_0 = 7'h33 == io_opcode ? _io_alu_funct_T_33 : 4'h1; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 43:16 45:21 77:20]
  assign io_alu_funct = 7'h13 == io_opcode ? _io_alu_funct_T_15 : _GEN_0; // @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 45:21 48:20]
endmodule
module Execute(
  input  [31:0] io_instruction, // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 45:14]
  input  [31:0] io_instruction_address, // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 45:14]
  input  [31:0] io_reg1_data, // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 45:14]
  input  [31:0] io_reg2_data, // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 45:14]
  input  [31:0] io_immediate, // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 45:14]
  input         io_aluop1_source, // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 45:14]
  input         io_aluop2_source, // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 45:14]
  output [31:0] io_mem_alu_result, // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 45:14]
  output        io_if_jump_flag, // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 45:14]
  output [31:0] io_if_jump_address // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 45:14]
);
  wire [3:0] alu_io_func; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 65:24]
  wire [31:0] alu_io_op1; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 65:24]
  wire [31:0] alu_io_op2; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 65:24]
  wire [31:0] alu_io_result; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 65:24]
  wire [6:0] alu_ctrl_io_opcode; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 66:24]
  wire [2:0] alu_ctrl_io_funct3; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 66:24]
  wire [6:0] alu_ctrl_io_funct7; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 66:24]
  wire [3:0] alu_ctrl_io_alu_funct; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 66:24]
  wire [6:0] opcode = io_instruction[6:0]; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 60:30]
  wire [2:0] funct3 = io_instruction[14:12]; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 61:30]
  wire  _branchCondition_T = io_reg1_data == io_reg2_data; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 96:47]
  wire  _branchCondition_T_1 = io_reg1_data != io_reg2_data; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 99:47]
  wire  _branchCondition_T_4 = $signed(io_reg1_data) < $signed(io_reg2_data); // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 103:54]
  wire  _branchCondition_T_7 = $signed(io_reg1_data) >= $signed(io_reg2_data); // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 106:54]
  wire  _branchCondition_T_8 = io_reg1_data < io_reg2_data; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 110:47]
  wire  _branchCondition_T_9 = io_reg1_data >= io_reg2_data; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 113:47]
  wire  _branchCondition_T_13 = 3'h1 == funct3 ? _branchCondition_T_1 : 3'h0 == funct3 & _branchCondition_T; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 90:51]
  wire  _branchCondition_T_15 = 3'h4 == funct3 ? _branchCondition_T_4 : _branchCondition_T_13; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 90:51]
  wire  _branchCondition_T_17 = 3'h5 == funct3 ? _branchCondition_T_7 : _branchCondition_T_15; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 90:51]
  wire  _branchCondition_T_19 = 3'h6 == funct3 ? _branchCondition_T_8 : _branchCondition_T_17; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 90:51]
  wire  branchCondition = 3'h7 == funct3 ? _branchCondition_T_9 : _branchCondition_T_19; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 90:51]
  wire  isBranch = opcode == 7'h63; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 116:25]
  wire  isJal = opcode == 7'h6f; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 117:25]
  wire  isJalr = opcode == 7'h67; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 118:25]
  wire [31:0] branchTarget = io_instruction_address + io_immediate; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 131:45]
  wire [31:0] jalrSum = io_reg1_data + io_immediate; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 139:35]
  wire [31:0] jalrTarget = {jalrSum[31:1],1'h0}; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 143:23]
  wire  branchTaken = isBranch & branchCondition; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 145:30]
  ALU alu ( // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 65:24]
    .io_func(alu_io_func),
    .io_op1(alu_io_op1),
    .io_op2(alu_io_op2),
    .io_result(alu_io_result)
  );
  ALUControl alu_ctrl ( // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 66:24]
    .io_opcode(alu_ctrl_io_opcode),
    .io_funct3(alu_ctrl_io_funct3),
    .io_funct7(alu_ctrl_io_funct7),
    .io_alu_funct(alu_ctrl_io_alu_funct)
  );
  assign io_mem_alu_result = alu_io_result; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 79:21]
  assign io_if_jump_flag = branchTaken | isJal | isJalr; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 146:43]
  assign io_if_jump_address = isJalr ? jalrTarget : branchTarget; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 147:28]
  assign alu_io_func = alu_ctrl_io_alu_funct; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 73:15]
  assign alu_io_op1 = io_aluop1_source ? io_instruction_address : io_reg1_data; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 74:19]
  assign alu_io_op2 = io_aluop2_source ? io_immediate : io_reg2_data; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 75:19]
  assign alu_ctrl_io_opcode = io_instruction[6:0]; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 60:30]
  assign alu_ctrl_io_funct3 = io_instruction[14:12]; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 61:30]
  assign alu_ctrl_io_funct7 = io_instruction[31:25]; // @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 62:30]
endmodule
module MemoryAccess(
  input  [31:0] io_alu_result, // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
  input  [31:0] io_reg2_data, // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
  input         io_memory_read_enable, // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
  input         io_memory_write_enable, // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
  input  [2:0]  io_funct3, // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
  output [31:0] io_wb_memory_read_data, // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
  output [31:0] io_memory_bundle_address, // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
  output [31:0] io_memory_bundle_write_data, // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
  output        io_memory_bundle_write_enable, // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
  output        io_memory_bundle_write_strobe_0, // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
  output        io_memory_bundle_write_strobe_1, // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
  output        io_memory_bundle_write_strobe_2, // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
  output        io_memory_bundle_write_strobe_3, // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
  input  [31:0] io_memory_bundle_read_data // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
);
  wire [1:0] mem_address_index = io_alu_result[1:0]; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 35:40]
  wire [7:0] bytes_0 = io_memory_bundle_read_data[7:0]; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 64:23]
  wire [7:0] bytes_1 = io_memory_bundle_read_data[15:8]; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 64:23]
  wire [7:0] bytes_2 = io_memory_bundle_read_data[23:16]; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 64:23]
  wire [7:0] bytes_3 = io_memory_bundle_read_data[31:24]; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 64:23]
  wire [15:0] _half_T_1 = {bytes_3,bytes_2}; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 69:45]
  wire [15:0] _half_T_2 = {bytes_1,bytes_0}; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 69:70]
  wire [15:0] half = mem_address_index[1] ? _half_T_1 : _half_T_2; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 69:19]
  wire [7:0] _GEN_1 = 2'h1 == mem_address_index ? bytes_1 : bytes_0; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 84:{65,65}]
  wire [7:0] _GEN_2 = 2'h2 == mem_address_index ? bytes_2 : _GEN_1; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 84:{65,65}]
  wire [7:0] _GEN_3 = 2'h3 == mem_address_index ? bytes_3 : _GEN_2; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 84:{65,65}]
  wire [23:0] _io_wb_memory_read_data_T_1 = _GEN_3[7] ? 24'hffffff : 24'h0; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 84:17]
  wire [31:0] _io_wb_memory_read_data_T_2 = {_io_wb_memory_read_data_T_1,_GEN_3}; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 83:14]
  wire [31:0] _io_wb_memory_read_data_T_4 = {24'h0,_GEN_3}; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 92:14]
  wire [15:0] _io_wb_memory_read_data_T_6 = half[15] ? 16'hffff : 16'h0; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 102:17]
  wire [31:0] _io_wb_memory_read_data_T_7 = {_io_wb_memory_read_data_T_6,half}; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 101:14]
  wire [31:0] _io_wb_memory_read_data_T_9 = {16'h0,half}; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 110:14]
  wire  _io_wb_memory_read_data_T_10 = 3'h0 == io_funct3; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 77:56]
  wire [31:0] _io_wb_memory_read_data_T_11 = 3'h0 == io_funct3 ? _io_wb_memory_read_data_T_2 : 32'h0; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 77:56]
  wire [31:0] _io_wb_memory_read_data_T_13 = 3'h4 == io_funct3 ? _io_wb_memory_read_data_T_4 :
    _io_wb_memory_read_data_T_11; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 77:56]
  wire  _io_wb_memory_read_data_T_14 = 3'h1 == io_funct3; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 77:56]
  wire [31:0] _io_wb_memory_read_data_T_15 = 3'h1 == io_funct3 ? _io_wb_memory_read_data_T_7 :
    _io_wb_memory_read_data_T_13; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 77:56]
  wire [31:0] _io_wb_memory_read_data_T_17 = 3'h5 == io_funct3 ? _io_wb_memory_read_data_T_9 :
    _io_wb_memory_read_data_T_15; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 77:56]
  wire  _io_wb_memory_read_data_T_18 = 3'h2 == io_funct3; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 77:56]
  wire [31:0] _io_wb_memory_read_data_T_19 = 3'h2 == io_funct3 ? io_memory_bundle_read_data :
    _io_wb_memory_read_data_T_17; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 77:56]
  wire  _GEN_4 = 2'h0 == mem_address_index; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 151:32 160:{41,41}]
  wire  _GEN_5 = 2'h1 == mem_address_index; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 151:32 160:{41,41}]
  wire  _GEN_6 = 2'h2 == mem_address_index; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 151:32 160:{41,41}]
  wire  _GEN_7 = 2'h3 == mem_address_index; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 151:32 160:{41,41}]
  wire [4:0] _writeData_T_1 = {mem_address_index, 3'h0}; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 161:55]
  wire [38:0] _GEN_0 = {{31'd0}, io_reg2_data[7:0]}; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 161:33]
  wire [38:0] _writeData_T_2 = _GEN_0 << _writeData_T_1; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 161:33]
  wire  _T_3 = ~mem_address_index[1]; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 166:35]
  wire [31:0] _writeData_T_5 = {io_reg2_data[15:0], 16'h0}; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 177:42]
  wire [31:0] _GEN_10 = ~mem_address_index[1] ? {{16'd0}, io_reg2_data[15:0]} : _writeData_T_5; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 166:44 171:27 177:27]
  wire  _GEN_11 = ~mem_address_index[1] ? 1'h0 : 1'h1; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 151:32 166:44 175:27]
  wire [31:0] _GEN_17 = _io_wb_memory_read_data_T_18 ? io_reg2_data : 32'h0; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23 183:22 152:35]
  wire  _GEN_18 = _io_wb_memory_read_data_T_14 ? _T_3 : _io_wb_memory_read_data_T_18; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23]
  wire [31:0] _GEN_20 = _io_wb_memory_read_data_T_14 ? _GEN_10 : _GEN_17; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23]
  wire  _GEN_21 = _io_wb_memory_read_data_T_14 ? _GEN_11 : _io_wb_memory_read_data_T_18; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23]
  wire  writeStrobes_0 = _io_wb_memory_read_data_T_10 ? _GEN_4 : _GEN_18; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23]
  wire  writeStrobes_1 = _io_wb_memory_read_data_T_10 ? _GEN_5 : _GEN_18; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23]
  wire  writeStrobes_2 = _io_wb_memory_read_data_T_10 ? _GEN_6 : _GEN_21; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23]
  wire  writeStrobes_3 = _io_wb_memory_read_data_T_10 ? _GEN_7 : _GEN_21; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23]
  wire [38:0] _GEN_27 = _io_wb_memory_read_data_T_10 ? _writeData_T_2 : {{7'd0}, _GEN_20}; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23 161:19]
  wire [31:0] writeData = _GEN_27[31:0]; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 152:35]
  wire [31:0] _GEN_30 = io_memory_write_enable ? writeData : 32'h0; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 142:38 186:35 38:33]
  wire  _GEN_31 = io_memory_write_enable & writeStrobes_0; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 142:38 187:35 40:33]
  wire  _GEN_32 = io_memory_write_enable & writeStrobes_1; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 142:38 187:35 40:33]
  wire  _GEN_33 = io_memory_write_enable & writeStrobes_2; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 142:38 187:35 40:33]
  wire  _GEN_34 = io_memory_write_enable & writeStrobes_3; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 142:38 187:35 40:33]
  assign io_wb_memory_read_data = io_memory_read_enable ? _io_wb_memory_read_data_T_19 : 32'h0; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 59:31 77:28 41:33]
  assign io_memory_bundle_address = io_alu_result; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 59:31 39:33]
  assign io_memory_bundle_write_data = io_memory_read_enable ? 32'h0 : _GEN_30; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 59:31 38:33]
  assign io_memory_bundle_write_enable = io_memory_read_enable ? 1'h0 : io_memory_write_enable; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 59:31 37:33]
  assign io_memory_bundle_write_strobe_0 = io_memory_read_enable ? 1'h0 : _GEN_31; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 59:31 40:33]
  assign io_memory_bundle_write_strobe_1 = io_memory_read_enable ? 1'h0 : _GEN_32; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 59:31 40:33]
  assign io_memory_bundle_write_strobe_2 = io_memory_read_enable ? 1'h0 : _GEN_33; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 59:31 40:33]
  assign io_memory_bundle_write_strobe_3 = io_memory_read_enable ? 1'h0 : _GEN_34; // @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 59:31 40:33]
endmodule
module WriteBack(
  input  [31:0] io_instruction_address, // @[1-single-cycle/src/main/scala/riscv/core/WriteBack.scala 21:14]
  input  [31:0] io_alu_result, // @[1-single-cycle/src/main/scala/riscv/core/WriteBack.scala 21:14]
  input  [31:0] io_memory_read_data, // @[1-single-cycle/src/main/scala/riscv/core/WriteBack.scala 21:14]
  input  [1:0]  io_regs_write_source, // @[1-single-cycle/src/main/scala/riscv/core/WriteBack.scala 21:14]
  output [31:0] io_regs_write_data // @[1-single-cycle/src/main/scala/riscv/core/WriteBack.scala 21:14]
);
  wire [31:0] _io_regs_write_data_T_1 = io_instruction_address + 32'h4; // @[1-single-cycle/src/main/scala/riscv/core/WriteBack.scala 49:72]
  wire [31:0] _io_regs_write_data_T_3 = 2'h1 == io_regs_write_source ? io_memory_read_data : io_alu_result; // @[1-single-cycle/src/main/scala/riscv/core/WriteBack.scala 46:71]
  assign io_regs_write_data = 2'h2 == io_regs_write_source ? _io_regs_write_data_T_1 : _io_regs_write_data_T_3; // @[1-single-cycle/src/main/scala/riscv/core/WriteBack.scala 46:71]
endmodule
module CPU(
  input         clock,
  input         reset,
  output [31:0] io_instruction_address, // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
  input  [31:0] io_instruction, // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
  output [31:0] io_memory_bundle_address, // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
  output [31:0] io_memory_bundle_write_data, // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
  output        io_memory_bundle_write_enable, // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
  output        io_memory_bundle_write_strobe_0, // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
  output        io_memory_bundle_write_strobe_1, // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
  output        io_memory_bundle_write_strobe_2, // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
  output        io_memory_bundle_write_strobe_3, // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
  input  [31:0] io_memory_bundle_read_data, // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
  input         io_instruction_valid, // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
  input  [4:0]  io_debug_read_address, // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
  output [31:0] io_debug_read_data // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
);
  wire  regs_clock; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 48:26]
  wire  regs_reset; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 48:26]
  wire  regs_io_write_enable; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 48:26]
  wire [4:0] regs_io_write_address; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 48:26]
  wire [31:0] regs_io_write_data; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 48:26]
  wire [4:0] regs_io_read_address1; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 48:26]
  wire [4:0] regs_io_read_address2; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 48:26]
  wire [31:0] regs_io_read_data1; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 48:26]
  wire [31:0] regs_io_read_data2; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 48:26]
  wire [4:0] regs_io_debug_read_address; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 48:26]
  wire [31:0] regs_io_debug_read_data; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 48:26]
  wire  inst_fetch_clock; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 49:26]
  wire  inst_fetch_reset; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 49:26]
  wire  inst_fetch_io_jump_flag_id; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 49:26]
  wire [31:0] inst_fetch_io_jump_address_id; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 49:26]
  wire [31:0] inst_fetch_io_instruction_read_data; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 49:26]
  wire  inst_fetch_io_instruction_valid; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 49:26]
  wire [31:0] inst_fetch_io_instruction_address; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 49:26]
  wire [31:0] inst_fetch_io_instruction; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 49:26]
  wire [31:0] id_io_instruction; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 50:26]
  wire [4:0] id_io_regs_reg1_read_address; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 50:26]
  wire [4:0] id_io_regs_reg2_read_address; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 50:26]
  wire [31:0] id_io_ex_immediate; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 50:26]
  wire  id_io_ex_aluop1_source; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 50:26]
  wire  id_io_ex_aluop2_source; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 50:26]
  wire  id_io_memory_read_enable; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 50:26]
  wire  id_io_memory_write_enable; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 50:26]
  wire [1:0] id_io_wb_reg_write_source; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 50:26]
  wire  id_io_reg_write_enable; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 50:26]
  wire [4:0] id_io_reg_write_address; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 50:26]
  wire [31:0] ex_io_instruction; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 51:26]
  wire [31:0] ex_io_instruction_address; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 51:26]
  wire [31:0] ex_io_reg1_data; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 51:26]
  wire [31:0] ex_io_reg2_data; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 51:26]
  wire [31:0] ex_io_immediate; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 51:26]
  wire  ex_io_aluop1_source; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 51:26]
  wire  ex_io_aluop2_source; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 51:26]
  wire [31:0] ex_io_mem_alu_result; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 51:26]
  wire  ex_io_if_jump_flag; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 51:26]
  wire [31:0] ex_io_if_jump_address; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 51:26]
  wire [31:0] mem_io_alu_result; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 52:26]
  wire [31:0] mem_io_reg2_data; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 52:26]
  wire  mem_io_memory_read_enable; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 52:26]
  wire  mem_io_memory_write_enable; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 52:26]
  wire [2:0] mem_io_funct3; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 52:26]
  wire [31:0] mem_io_wb_memory_read_data; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 52:26]
  wire [31:0] mem_io_memory_bundle_address; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 52:26]
  wire [31:0] mem_io_memory_bundle_write_data; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 52:26]
  wire  mem_io_memory_bundle_write_enable; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 52:26]
  wire  mem_io_memory_bundle_write_strobe_0; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 52:26]
  wire  mem_io_memory_bundle_write_strobe_1; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 52:26]
  wire  mem_io_memory_bundle_write_strobe_2; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 52:26]
  wire  mem_io_memory_bundle_write_strobe_3; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 52:26]
  wire [31:0] mem_io_memory_bundle_read_data; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 52:26]
  wire [31:0] wb_io_instruction_address; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 53:26]
  wire [31:0] wb_io_alu_result; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 53:26]
  wire [31:0] wb_io_memory_read_data; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 53:26]
  wire [1:0] wb_io_regs_write_source; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 53:26]
  wire [31:0] wb_io_regs_write_data; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 53:26]
  RegisterFile regs ( // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 48:26]
    .clock(regs_clock),
    .reset(regs_reset),
    .io_write_enable(regs_io_write_enable),
    .io_write_address(regs_io_write_address),
    .io_write_data(regs_io_write_data),
    .io_read_address1(regs_io_read_address1),
    .io_read_address2(regs_io_read_address2),
    .io_read_data1(regs_io_read_data1),
    .io_read_data2(regs_io_read_data2),
    .io_debug_read_address(regs_io_debug_read_address),
    .io_debug_read_data(regs_io_debug_read_data)
  );
  InstructionFetch inst_fetch ( // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 49:26]
    .clock(inst_fetch_clock),
    .reset(inst_fetch_reset),
    .io_jump_flag_id(inst_fetch_io_jump_flag_id),
    .io_jump_address_id(inst_fetch_io_jump_address_id),
    .io_instruction_read_data(inst_fetch_io_instruction_read_data),
    .io_instruction_valid(inst_fetch_io_instruction_valid),
    .io_instruction_address(inst_fetch_io_instruction_address),
    .io_instruction(inst_fetch_io_instruction)
  );
  InstructionDecode id ( // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 50:26]
    .io_instruction(id_io_instruction),
    .io_regs_reg1_read_address(id_io_regs_reg1_read_address),
    .io_regs_reg2_read_address(id_io_regs_reg2_read_address),
    .io_ex_immediate(id_io_ex_immediate),
    .io_ex_aluop1_source(id_io_ex_aluop1_source),
    .io_ex_aluop2_source(id_io_ex_aluop2_source),
    .io_memory_read_enable(id_io_memory_read_enable),
    .io_memory_write_enable(id_io_memory_write_enable),
    .io_wb_reg_write_source(id_io_wb_reg_write_source),
    .io_reg_write_enable(id_io_reg_write_enable),
    .io_reg_write_address(id_io_reg_write_address)
  );
  Execute ex ( // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 51:26]
    .io_instruction(ex_io_instruction),
    .io_instruction_address(ex_io_instruction_address),
    .io_reg1_data(ex_io_reg1_data),
    .io_reg2_data(ex_io_reg2_data),
    .io_immediate(ex_io_immediate),
    .io_aluop1_source(ex_io_aluop1_source),
    .io_aluop2_source(ex_io_aluop2_source),
    .io_mem_alu_result(ex_io_mem_alu_result),
    .io_if_jump_flag(ex_io_if_jump_flag),
    .io_if_jump_address(ex_io_if_jump_address)
  );
  MemoryAccess mem ( // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 52:26]
    .io_alu_result(mem_io_alu_result),
    .io_reg2_data(mem_io_reg2_data),
    .io_memory_read_enable(mem_io_memory_read_enable),
    .io_memory_write_enable(mem_io_memory_write_enable),
    .io_funct3(mem_io_funct3),
    .io_wb_memory_read_data(mem_io_wb_memory_read_data),
    .io_memory_bundle_address(mem_io_memory_bundle_address),
    .io_memory_bundle_write_data(mem_io_memory_bundle_write_data),
    .io_memory_bundle_write_enable(mem_io_memory_bundle_write_enable),
    .io_memory_bundle_write_strobe_0(mem_io_memory_bundle_write_strobe_0),
    .io_memory_bundle_write_strobe_1(mem_io_memory_bundle_write_strobe_1),
    .io_memory_bundle_write_strobe_2(mem_io_memory_bundle_write_strobe_2),
    .io_memory_bundle_write_strobe_3(mem_io_memory_bundle_write_strobe_3),
    .io_memory_bundle_read_data(mem_io_memory_bundle_read_data)
  );
  WriteBack wb ( // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 53:26]
    .io_instruction_address(wb_io_instruction_address),
    .io_alu_result(wb_io_alu_result),
    .io_memory_read_data(wb_io_memory_read_data),
    .io_regs_write_source(wb_io_regs_write_source),
    .io_regs_write_data(wb_io_regs_write_data)
  );
  assign io_instruction_address = inst_fetch_io_instruction_address; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 62:39]
  assign io_memory_bundle_address = {3'h0,mem_io_memory_bundle_address[28:0]}; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 89:34]
  assign io_memory_bundle_write_data = mem_io_memory_bundle_write_data; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 94:34]
  assign io_memory_bundle_write_enable = mem_io_memory_bundle_write_enable; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 93:34]
  assign io_memory_bundle_write_strobe_0 = mem_io_memory_bundle_write_strobe_0; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 95:34]
  assign io_memory_bundle_write_strobe_1 = mem_io_memory_bundle_write_strobe_1; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 95:34]
  assign io_memory_bundle_write_strobe_2 = mem_io_memory_bundle_write_strobe_2; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 95:34]
  assign io_memory_bundle_write_strobe_3 = mem_io_memory_bundle_write_strobe_3; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 95:34]
  assign io_debug_read_data = regs_io_debug_read_data; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 71:30]
  assign regs_clock = clock;
  assign regs_reset = reset;
  assign regs_io_write_enable = id_io_reg_write_enable; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 64:25]
  assign regs_io_write_address = id_io_reg_write_address; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 65:25]
  assign regs_io_write_data = wb_io_regs_write_data; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 66:25]
  assign regs_io_read_address1 = id_io_regs_reg1_read_address; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 67:25]
  assign regs_io_read_address2 = id_io_regs_reg2_read_address; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 68:25]
  assign regs_io_debug_read_address = io_debug_read_address; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 70:30]
  assign inst_fetch_clock = clock;
  assign inst_fetch_reset = reset;
  assign inst_fetch_io_jump_flag_id = ex_io_if_jump_flag; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 59:39]
  assign inst_fetch_io_jump_address_id = ex_io_if_jump_address; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 58:39]
  assign inst_fetch_io_instruction_read_data = io_instruction; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 61:39]
  assign inst_fetch_io_instruction_valid = io_instruction_valid; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 60:39]
  assign id_io_instruction = inst_fetch_io_instruction; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 73:21]
  assign ex_io_instruction = inst_fetch_io_instruction; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 78:29]
  assign ex_io_instruction_address = inst_fetch_io_instruction_address; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 79:29]
  assign ex_io_reg1_data = regs_io_read_data1; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 80:29]
  assign ex_io_reg2_data = regs_io_read_data2; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 81:29]
  assign ex_io_immediate = id_io_ex_immediate; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 77:29]
  assign ex_io_aluop1_source = id_io_ex_aluop1_source; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 75:29]
  assign ex_io_aluop2_source = id_io_ex_aluop2_source; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 76:29]
  assign mem_io_alu_result = ex_io_mem_alu_result; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 83:30]
  assign mem_io_reg2_data = regs_io_read_data2; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 84:30]
  assign mem_io_memory_read_enable = id_io_memory_read_enable; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 85:30]
  assign mem_io_memory_write_enable = id_io_memory_write_enable; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 86:30]
  assign mem_io_funct3 = inst_fetch_io_instruction[14:12]; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 87:58]
  assign mem_io_memory_bundle_read_data = io_memory_bundle_read_data; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 96:34]
  assign wb_io_instruction_address = inst_fetch_io_instruction_address; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 98:29]
  assign wb_io_alu_result = ex_io_mem_alu_result; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 99:29]
  assign wb_io_memory_read_data = mem_io_wb_memory_read_data; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 100:29]
  assign wb_io_regs_write_source = id_io_wb_reg_write_source; // @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 101:29]
endmodule
module TestTopModule(
  input         clock,
  input         reset,
  input  [31:0] io_mem_debug_read_address, // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 22:14]
  input  [4:0]  io_regs_debug_read_address, // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 22:14]
  output [31:0] io_regs_debug_read_data, // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 22:14]
  output [31:0] io_mem_debug_read_data // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 22:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  mem_clock; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 29:31]
  wire [31:0] mem_io_bundle_address; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 29:31]
  wire [31:0] mem_io_bundle_write_data; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 29:31]
  wire  mem_io_bundle_write_enable; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 29:31]
  wire  mem_io_bundle_write_strobe_0; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 29:31]
  wire  mem_io_bundle_write_strobe_1; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 29:31]
  wire  mem_io_bundle_write_strobe_2; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 29:31]
  wire  mem_io_bundle_write_strobe_3; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 29:31]
  wire [31:0] mem_io_bundle_read_data; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 29:31]
  wire [31:0] mem_io_instruction; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 29:31]
  wire [31:0] mem_io_instruction_address; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 29:31]
  wire [31:0] mem_io_debug_read_address; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 29:31]
  wire [31:0] mem_io_debug_read_data; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 29:31]
  wire  instruction_rom_clock; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 30:31]
  wire [31:0] instruction_rom_io_address; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 30:31]
  wire [31:0] instruction_rom_io_data; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 30:31]
  wire  rom_loader_clock; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 31:31]
  wire  rom_loader_reset; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 31:31]
  wire [31:0] rom_loader_io_bundle_address; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 31:31]
  wire [31:0] rom_loader_io_bundle_write_data; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 31:31]
  wire  rom_loader_io_bundle_write_enable; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 31:31]
  wire  rom_loader_io_bundle_write_strobe_0; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 31:31]
  wire  rom_loader_io_bundle_write_strobe_1; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 31:31]
  wire  rom_loader_io_bundle_write_strobe_2; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 31:31]
  wire  rom_loader_io_bundle_write_strobe_3; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 31:31]
  wire [31:0] rom_loader_io_rom_address; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 31:31]
  wire [31:0] rom_loader_io_rom_data; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 31:31]
  wire  rom_loader_io_load_finished; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 31:31]
  wire  cpu_clock; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 45:21]
  wire  cpu_reset; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 45:21]
  wire [31:0] cpu_io_instruction_address; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 45:21]
  wire [31:0] cpu_io_instruction; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 45:21]
  wire [31:0] cpu_io_memory_bundle_address; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 45:21]
  wire [31:0] cpu_io_memory_bundle_write_data; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 45:21]
  wire  cpu_io_memory_bundle_write_enable; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 45:21]
  wire  cpu_io_memory_bundle_write_strobe_0; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 45:21]
  wire  cpu_io_memory_bundle_write_strobe_1; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 45:21]
  wire  cpu_io_memory_bundle_write_strobe_2; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 45:21]
  wire  cpu_io_memory_bundle_write_strobe_3; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 45:21]
  wire [31:0] cpu_io_memory_bundle_read_data; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 45:21]
  wire  cpu_io_instruction_valid; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 45:21]
  wire [4:0] cpu_io_debug_read_address; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 45:21]
  wire [31:0] cpu_io_debug_read_data; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 45:21]
  reg [1:0] CPU_clkdiv; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 37:27]
  wire [1:0] _CPU_next_T_2 = CPU_clkdiv + 2'h1; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 40:57]
  Memory mem ( // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 29:31]
    .clock(mem_clock),
    .io_bundle_address(mem_io_bundle_address),
    .io_bundle_write_data(mem_io_bundle_write_data),
    .io_bundle_write_enable(mem_io_bundle_write_enable),
    .io_bundle_write_strobe_0(mem_io_bundle_write_strobe_0),
    .io_bundle_write_strobe_1(mem_io_bundle_write_strobe_1),
    .io_bundle_write_strobe_2(mem_io_bundle_write_strobe_2),
    .io_bundle_write_strobe_3(mem_io_bundle_write_strobe_3),
    .io_bundle_read_data(mem_io_bundle_read_data),
    .io_instruction(mem_io_instruction),
    .io_instruction_address(mem_io_instruction_address),
    .io_debug_read_address(mem_io_debug_read_address),
    .io_debug_read_data(mem_io_debug_read_data)
  );
  InstructionROM instruction_rom ( // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 30:31]
    .clock(instruction_rom_clock),
    .io_address(instruction_rom_io_address),
    .io_data(instruction_rom_io_data)
  );
  ROMLoader rom_loader ( // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 31:31]
    .clock(rom_loader_clock),
    .reset(rom_loader_reset),
    .io_bundle_address(rom_loader_io_bundle_address),
    .io_bundle_write_data(rom_loader_io_bundle_write_data),
    .io_bundle_write_enable(rom_loader_io_bundle_write_enable),
    .io_bundle_write_strobe_0(rom_loader_io_bundle_write_strobe_0),
    .io_bundle_write_strobe_1(rom_loader_io_bundle_write_strobe_1),
    .io_bundle_write_strobe_2(rom_loader_io_bundle_write_strobe_2),
    .io_bundle_write_strobe_3(rom_loader_io_bundle_write_strobe_3),
    .io_rom_address(rom_loader_io_rom_address),
    .io_rom_data(rom_loader_io_rom_data),
    .io_load_finished(rom_loader_io_load_finished)
  );
  CPU cpu ( // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 45:21]
    .clock(cpu_clock),
    .reset(cpu_reset),
    .io_instruction_address(cpu_io_instruction_address),
    .io_instruction(cpu_io_instruction),
    .io_memory_bundle_address(cpu_io_memory_bundle_address),
    .io_memory_bundle_write_data(cpu_io_memory_bundle_write_data),
    .io_memory_bundle_write_enable(cpu_io_memory_bundle_write_enable),
    .io_memory_bundle_write_strobe_0(cpu_io_memory_bundle_write_strobe_0),
    .io_memory_bundle_write_strobe_1(cpu_io_memory_bundle_write_strobe_1),
    .io_memory_bundle_write_strobe_2(cpu_io_memory_bundle_write_strobe_2),
    .io_memory_bundle_write_strobe_3(cpu_io_memory_bundle_write_strobe_3),
    .io_memory_bundle_read_data(cpu_io_memory_bundle_read_data),
    .io_instruction_valid(cpu_io_instruction_valid),
    .io_debug_read_address(cpu_io_debug_read_address),
    .io_debug_read_data(cpu_io_debug_read_data)
  );
  assign io_regs_debug_read_data = cpu_io_debug_read_data; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 60:31]
  assign io_mem_debug_read_data = mem_io_debug_read_data; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 64:29]
  assign mem_clock = clock;
  assign mem_io_bundle_address = ~rom_loader_io_load_finished ? rom_loader_io_bundle_address :
    cpu_io_memory_bundle_address; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 51:40 52:28 56:28]
  assign mem_io_bundle_write_data = ~rom_loader_io_load_finished ? rom_loader_io_bundle_write_data :
    cpu_io_memory_bundle_write_data; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 51:40 52:28 56:28]
  assign mem_io_bundle_write_enable = ~rom_loader_io_load_finished ? rom_loader_io_bundle_write_enable :
    cpu_io_memory_bundle_write_enable; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 51:40 52:28 56:28]
  assign mem_io_bundle_write_strobe_0 = ~rom_loader_io_load_finished ? rom_loader_io_bundle_write_strobe_0 :
    cpu_io_memory_bundle_write_strobe_0; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 51:40 52:28 56:28]
  assign mem_io_bundle_write_strobe_1 = ~rom_loader_io_load_finished ? rom_loader_io_bundle_write_strobe_1 :
    cpu_io_memory_bundle_write_strobe_1; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 51:40 52:28 56:28]
  assign mem_io_bundle_write_strobe_2 = ~rom_loader_io_load_finished ? rom_loader_io_bundle_write_strobe_2 :
    cpu_io_memory_bundle_write_strobe_2; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 51:40 52:28 56:28]
  assign mem_io_bundle_write_strobe_3 = ~rom_loader_io_load_finished ? rom_loader_io_bundle_write_strobe_3 :
    cpu_io_memory_bundle_write_strobe_3; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 51:40 52:28 56:28]
  assign mem_io_instruction_address = cpu_io_instruction_address; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 48:32]
  assign mem_io_debug_read_address = io_mem_debug_read_address; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 63:29]
  assign instruction_rom_clock = clock;
  assign instruction_rom_io_address = rom_loader_io_rom_address; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 35:30]
  assign rom_loader_clock = clock;
  assign rom_loader_reset = reset;
  assign rom_loader_io_rom_data = instruction_rom_io_data; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 33:30]
  assign cpu_clock = CPU_clkdiv == 2'h0; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 44:22]
  assign cpu_reset = reset;
  assign cpu_io_instruction = mem_io_instruction; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 49:32]
  assign cpu_io_memory_bundle_read_data = ~rom_loader_io_load_finished ? 32'h0 : mem_io_bundle_read_data; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 51:40 53:38 56:28]
  assign cpu_io_instruction_valid = rom_loader_io_load_finished; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 47:32]
  assign cpu_io_debug_read_address = io_regs_debug_read_address; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 59:31]
  always @(posedge clock) begin
    if (reset) begin // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 37:27]
      CPU_clkdiv <= 2'h0; // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 37:27]
    end else if (CPU_clkdiv == 2'h3) begin // @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 40:20]
      CPU_clkdiv <= 2'h0;
    end else begin
      CPU_clkdiv <= _CPU_next_T_2;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  CPU_clkdiv = _RAND_0[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
