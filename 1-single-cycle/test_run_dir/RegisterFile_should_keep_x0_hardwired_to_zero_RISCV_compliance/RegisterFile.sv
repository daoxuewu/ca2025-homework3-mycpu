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
  wire [4:0] _T_4 = io_write_address - 5'h1; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:34]
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
        if (5'h0 == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_0 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_1 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h1 == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_1 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_2 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h2 == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_2 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_3 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h3 == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_3 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_4 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h4 == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_4 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_5 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h5 == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_5 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_6 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h6 == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_6 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_7 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h7 == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_7 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_8 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h8 == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_8 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_9 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h9 == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_9 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_10 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'ha == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_10 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_11 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'hb == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_11 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_12 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'hc == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_12 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_13 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'hd == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_13 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_14 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'he == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_14 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_15 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'hf == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_15 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_16 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h10 == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_16 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_17 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h11 == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_17 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_18 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h12 == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_18 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_19 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h13 == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_19 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_20 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h14 == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_20 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_21 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h15 == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_21 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_22 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h16 == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_22 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_23 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h17 == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_23 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_24 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h18 == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_24 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_25 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h19 == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_25 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_26 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h1a == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_26 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_27 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h1b == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_27 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_28 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h1c == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_28 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_29 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h1d == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
          registers_29 <= io_write_data; // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
        end
      end
    end
    if (reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
      registers_30 <= 32'h0; // @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    end else if (~reset) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 39:55]
        if (5'h1e == _T_4) begin // @[common/src/main/scala/riscv/core/RegisterFile.scala 41:41]
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
