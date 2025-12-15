FIRRTL version 1.2.0
circuit TestTopModule :
  module Memory :
    input clock : Clock
    input reset : UInt<1>
    input io_bundle_address : UInt<32> @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
    input io_bundle_write_data : UInt<32> @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
    input io_bundle_write_enable : UInt<1> @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
    input io_bundle_write_strobe_0 : UInt<1> @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
    input io_bundle_write_strobe_1 : UInt<1> @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
    input io_bundle_write_strobe_2 : UInt<1> @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
    input io_bundle_write_strobe_3 : UInt<1> @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
    output io_bundle_read_data : UInt<32> @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
    output io_instruction : UInt<32> @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
    input io_instruction_address : UInt<32> @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
    input io_debug_read_address : UInt<32> @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]
    output io_debug_read_data : UInt<32> @[1-single-cycle/src/main/scala/peripheral/Memory.scala 58:14]

    mem mem_0 : @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
      data-type => UInt<8>
      depth => 8192
      read-latency => 1
      write-latency => 1
      reader => io_bundle_read_data_MPORT
      reader => io_debug_read_data_MPORT
      reader => io_instruction_MPORT
      writer => MPORT
      read-under-write => undefined
    mem mem_1 : @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
      data-type => UInt<8>
      depth => 8192
      read-latency => 1
      write-latency => 1
      reader => io_bundle_read_data_MPORT
      reader => io_debug_read_data_MPORT
      reader => io_instruction_MPORT
      writer => MPORT
      read-under-write => undefined
    mem mem_2 : @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
      data-type => UInt<8>
      depth => 8192
      read-latency => 1
      write-latency => 1
      reader => io_bundle_read_data_MPORT
      reader => io_debug_read_data_MPORT
      reader => io_instruction_MPORT
      writer => MPORT
      read-under-write => undefined
    mem mem_3 : @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24]
      data-type => UInt<8>
      depth => 8192
      read-latency => 1
      write-latency => 1
      reader => io_bundle_read_data_MPORT
      reader => io_debug_read_data_MPORT
      reader => io_instruction_MPORT
      writer => MPORT
      read-under-write => undefined
    node _write_data_vec_0_T = bits(io_bundle_write_data, 7, 0) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 76:48]
    node _write_data_vec_1_T = bits(io_bundle_write_data, 15, 8) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 76:48]
    node _write_data_vec_2_T = bits(io_bundle_write_data, 23, 16) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 76:48]
    node _write_data_vec_3_T = bits(io_bundle_write_data, 31, 24) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 76:48]
    node write_word_addr = dshr(io_bundle_address, UInt<2>("h2")) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 78:46]
    node _T = leq(write_word_addr, UInt<13>("h1fff")) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 80:26]
    node _T_1 = bits(write_word_addr, 12, 0)
    node write_data_vec_0 = _write_data_vec_0_T @[1-single-cycle/src/main/scala/peripheral/Memory.scala 74:30 76:25]
    node _GEN_0 = validif(io_bundle_write_strobe_0, write_data_vec_0)
    node _GEN_1 = mux(io_bundle_write_strobe_0, UInt<1>("h1"), UInt<1>("h0"))
    node write_data_vec_1 = _write_data_vec_1_T @[1-single-cycle/src/main/scala/peripheral/Memory.scala 74:30 76:25]
    node _GEN_2 = validif(io_bundle_write_strobe_1, write_data_vec_1)
    node _GEN_3 = mux(io_bundle_write_strobe_1, UInt<1>("h1"), UInt<1>("h0"))
    node write_data_vec_2 = _write_data_vec_2_T @[1-single-cycle/src/main/scala/peripheral/Memory.scala 74:30 76:25]
    node _GEN_4 = validif(io_bundle_write_strobe_2, write_data_vec_2)
    node _GEN_5 = mux(io_bundle_write_strobe_2, UInt<1>("h1"), UInt<1>("h0"))
    node write_data_vec_3 = _write_data_vec_3_T @[1-single-cycle/src/main/scala/peripheral/Memory.scala 74:30 76:25]
    node _GEN_6 = validif(io_bundle_write_strobe_3, write_data_vec_3)
    node _GEN_7 = mux(io_bundle_write_strobe_3, UInt<1>("h1"), UInt<1>("h0"))
    node _GEN_8 = validif(_T, _T_1) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 80:47]
    node _GEN_9 = validif(_T, clock) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 80:47]
    node _GEN_10 = mux(_T, UInt<1>("h1"), UInt<1>("h0")) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24 80:47]
    node _GEN_11 = validif(_T, _GEN_1) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 80:47]
    node _GEN_12 = validif(_T, _GEN_3) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 80:47]
    node _GEN_13 = validif(_T, _GEN_5) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 80:47]
    node _GEN_14 = validif(_T, _GEN_7) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 80:47]
    node _GEN_15 = validif(_T, _GEN_0) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 80:47]
    node _GEN_16 = validif(_T, _GEN_2) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 80:47]
    node _GEN_17 = validif(_T, _GEN_4) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 80:47]
    node _GEN_18 = validif(_T, _GEN_6) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 80:47]
    node _GEN_19 = validif(io_bundle_write_enable, _GEN_8) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 73:32]
    node _GEN_20 = validif(io_bundle_write_enable, _GEN_9) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 73:32]
    node _GEN_21 = mux(io_bundle_write_enable, _GEN_10, UInt<1>("h0")) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 68:24 73:32]
    node _GEN_22 = validif(io_bundle_write_enable, _GEN_11) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 73:32]
    node _GEN_23 = validif(io_bundle_write_enable, _GEN_12) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 73:32]
    node _GEN_24 = validif(io_bundle_write_enable, _GEN_13) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 73:32]
    node _GEN_25 = validif(io_bundle_write_enable, _GEN_14) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 73:32]
    node _GEN_26 = validif(io_bundle_write_enable, _GEN_15) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 73:32]
    node _GEN_27 = validif(io_bundle_write_enable, _GEN_16) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 73:32]
    node _GEN_28 = validif(io_bundle_write_enable, _GEN_17) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 73:32]
    node _GEN_29 = validif(io_bundle_write_enable, _GEN_18) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 73:32]
    node _read_word_addr_T = dshr(io_bundle_address, UInt<2>("h2")) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 87:24]
    node _read_word_addr_T_1 = leq(_read_word_addr_T, UInt<13>("h1fff")) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 87:39]
    node _read_word_addr_T_2 = dshr(io_bundle_address, UInt<2>("h2")) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 88:24]
    node read_word_addr = mux(_read_word_addr_T_1, _read_word_addr_T_2, UInt<1>("h0")) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 86:27]
    node _debug_word_addr_T = dshr(io_debug_read_address, UInt<2>("h2")) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 92:28]
    node _debug_word_addr_T_1 = leq(_debug_word_addr_T, UInt<13>("h1fff")) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 92:43]
    node _debug_word_addr_T_2 = dshr(io_debug_read_address, UInt<2>("h2")) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 93:28]
    node debug_word_addr = mux(_debug_word_addr_T_1, _debug_word_addr_T_2, UInt<1>("h0")) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 91:28]
    node _inst_word_addr_T = dshr(io_instruction_address, UInt<2>("h2")) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 97:29]
    node _inst_word_addr_T_1 = leq(_inst_word_addr_T, UInt<13>("h1fff")) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 97:44]
    node _inst_word_addr_T_2 = dshr(io_instruction_address, UInt<2>("h2")) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 98:29]
    node inst_word_addr = mux(_inst_word_addr_T_1, _inst_word_addr_T_2, UInt<1>("h0")) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 96:27]
    node _GEN_30 = validif(UInt<1>("h1"), read_word_addr) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 102:{34,34}]
    node _io_bundle_read_data_WIRE = _GEN_30 @[1-single-cycle/src/main/scala/peripheral/Memory.scala 102:34]
    node _io_bundle_read_data_T = or(_io_bundle_read_data_WIRE, UInt<13>("h0")) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 102:34]
    node _io_bundle_read_data_T_1 = bits(_io_bundle_read_data_T, 12, 0) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 102:34]
    node _GEN_31 = mux(UInt<1>("h1"), UInt<1>("h1"), UInt<1>("h0")) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 102:{34,34} 68:24]
    node _GEN_32 = validif(UInt<1>("h1"), _io_bundle_read_data_T_1) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 102:{34,34}]
    node _GEN_33 = validif(UInt<1>("h1"), clock) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 102:{34,34}]
    node io_bundle_read_data_lo = cat(mem_1.io_bundle_read_data_MPORT.data, mem_0.io_bundle_read_data_MPORT.data) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 102:59]
    node io_bundle_read_data_hi = cat(mem_3.io_bundle_read_data_MPORT.data, mem_2.io_bundle_read_data_MPORT.data) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 102:59]
    node _io_bundle_read_data_T_2 = cat(io_bundle_read_data_hi, io_bundle_read_data_lo) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 102:59]
    node _GEN_34 = validif(UInt<1>("h1"), debug_word_addr) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 103:{34,34}]
    node _io_debug_read_data_WIRE = _GEN_34 @[1-single-cycle/src/main/scala/peripheral/Memory.scala 103:34]
    node _io_debug_read_data_T = or(_io_debug_read_data_WIRE, UInt<13>("h0")) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 103:34]
    node _io_debug_read_data_T_1 = bits(_io_debug_read_data_T, 12, 0) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 103:34]
    node _GEN_35 = validif(UInt<1>("h1"), _io_debug_read_data_T_1) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 103:{34,34}]
    node io_debug_read_data_lo = cat(mem_1.io_debug_read_data_MPORT.data, mem_0.io_debug_read_data_MPORT.data) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 103:60]
    node io_debug_read_data_hi = cat(mem_3.io_debug_read_data_MPORT.data, mem_2.io_debug_read_data_MPORT.data) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 103:60]
    node _io_debug_read_data_T_2 = cat(io_debug_read_data_hi, io_debug_read_data_lo) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 103:60]
    node _GEN_36 = validif(UInt<1>("h1"), inst_word_addr) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 104:{34,34}]
    node _io_instruction_WIRE = _GEN_36 @[1-single-cycle/src/main/scala/peripheral/Memory.scala 104:34]
    node _io_instruction_T = or(_io_instruction_WIRE, UInt<13>("h0")) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 104:34]
    node _io_instruction_T_1 = bits(_io_instruction_T, 12, 0) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 104:34]
    node _GEN_37 = validif(UInt<1>("h1"), _io_instruction_T_1) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 104:{34,34}]
    node io_instruction_lo = cat(mem_1.io_instruction_MPORT.data, mem_0.io_instruction_MPORT.data) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 104:59]
    node io_instruction_hi = cat(mem_3.io_instruction_MPORT.data, mem_2.io_instruction_MPORT.data) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 104:59]
    node _io_instruction_T_2 = cat(io_instruction_hi, io_instruction_lo) @[1-single-cycle/src/main/scala/peripheral/Memory.scala 104:59]
    io_bundle_read_data <= _io_bundle_read_data_T_2 @[1-single-cycle/src/main/scala/peripheral/Memory.scala 102:23]
    io_instruction <= _io_instruction_T_2 @[1-single-cycle/src/main/scala/peripheral/Memory.scala 104:23]
    io_debug_read_data <= _io_debug_read_data_T_2 @[1-single-cycle/src/main/scala/peripheral/Memory.scala 103:23]
    mem_0.io_bundle_read_data_MPORT.addr <= _GEN_32
    mem_1.io_bundle_read_data_MPORT.addr <= _GEN_32
    mem_2.io_bundle_read_data_MPORT.addr <= _GEN_32
    mem_3.io_bundle_read_data_MPORT.addr <= _GEN_32
    mem_0.io_bundle_read_data_MPORT.en <= _GEN_31
    mem_1.io_bundle_read_data_MPORT.en <= _GEN_31
    mem_2.io_bundle_read_data_MPORT.en <= _GEN_31
    mem_3.io_bundle_read_data_MPORT.en <= _GEN_31
    mem_0.io_bundle_read_data_MPORT.clk <= _GEN_33
    mem_1.io_bundle_read_data_MPORT.clk <= _GEN_33
    mem_2.io_bundle_read_data_MPORT.clk <= _GEN_33
    mem_3.io_bundle_read_data_MPORT.clk <= _GEN_33
    mem_0.io_debug_read_data_MPORT.addr <= _GEN_35
    mem_1.io_debug_read_data_MPORT.addr <= _GEN_35
    mem_2.io_debug_read_data_MPORT.addr <= _GEN_35
    mem_3.io_debug_read_data_MPORT.addr <= _GEN_35
    mem_0.io_debug_read_data_MPORT.en <= _GEN_31
    mem_1.io_debug_read_data_MPORT.en <= _GEN_31
    mem_2.io_debug_read_data_MPORT.en <= _GEN_31
    mem_3.io_debug_read_data_MPORT.en <= _GEN_31
    mem_0.io_debug_read_data_MPORT.clk <= _GEN_33
    mem_1.io_debug_read_data_MPORT.clk <= _GEN_33
    mem_2.io_debug_read_data_MPORT.clk <= _GEN_33
    mem_3.io_debug_read_data_MPORT.clk <= _GEN_33
    mem_0.io_instruction_MPORT.addr <= _GEN_37
    mem_1.io_instruction_MPORT.addr <= _GEN_37
    mem_2.io_instruction_MPORT.addr <= _GEN_37
    mem_3.io_instruction_MPORT.addr <= _GEN_37
    mem_0.io_instruction_MPORT.en <= _GEN_31
    mem_1.io_instruction_MPORT.en <= _GEN_31
    mem_2.io_instruction_MPORT.en <= _GEN_31
    mem_3.io_instruction_MPORT.en <= _GEN_31
    mem_0.io_instruction_MPORT.clk <= _GEN_33
    mem_1.io_instruction_MPORT.clk <= _GEN_33
    mem_2.io_instruction_MPORT.clk <= _GEN_33
    mem_3.io_instruction_MPORT.clk <= _GEN_33
    mem_0.MPORT.addr <= _GEN_19
    mem_1.MPORT.addr <= _GEN_19
    mem_2.MPORT.addr <= _GEN_19
    mem_3.MPORT.addr <= _GEN_19
    mem_0.MPORT.en <= _GEN_21
    mem_1.MPORT.en <= _GEN_21
    mem_2.MPORT.en <= _GEN_21
    mem_3.MPORT.en <= _GEN_21
    mem_0.MPORT.clk <= _GEN_20
    mem_1.MPORT.clk <= _GEN_20
    mem_2.MPORT.clk <= _GEN_20
    mem_3.MPORT.clk <= _GEN_20
    mem_0.MPORT.data <= _GEN_26
    mem_1.MPORT.data <= _GEN_27
    mem_2.MPORT.data <= _GEN_28
    mem_3.MPORT.data <= _GEN_29
    mem_0.MPORT.mask <= _GEN_22
    mem_1.MPORT.mask <= _GEN_23
    mem_2.MPORT.mask <= _GEN_24
    mem_3.MPORT.mask <= _GEN_25

  module InstructionROM :
    input clock : Clock
    input reset : UInt<1>
    input io_address : UInt<32> @[1-single-cycle/src/main/scala/peripheral/InstructionROM.scala 18:14]
    output io_data : UInt<32> @[1-single-cycle/src/main/scala/peripheral/InstructionROM.scala 18:14]

    mem mem : @[1-single-cycle/src/main/scala/peripheral/InstructionROM.scala 24:45]
      data-type => UInt<32>
      depth => 12
      read-latency => 0
      write-latency => 1
      reader => io_data_MPORT
      read-under-write => undefined
    node _io_data_T = bits(io_address, 3, 0) @[1-single-cycle/src/main/scala/peripheral/InstructionROM.scala 26:22]
    io_data <= mem.io_data_MPORT.data @[1-single-cycle/src/main/scala/peripheral/InstructionROM.scala 26:11]
    mem.io_data_MPORT.addr <= _io_data_T @[1-single-cycle/src/main/scala/peripheral/InstructionROM.scala 26:22]
    mem.io_data_MPORT.en <= UInt<1>("h1") @[1-single-cycle/src/main/scala/peripheral/InstructionROM.scala 26:22]
    mem.io_data_MPORT.clk <= clock @[1-single-cycle/src/main/scala/peripheral/InstructionROM.scala 26:22]

  module ROMLoader :
    input clock : Clock
    input reset : UInt<1>
    output io_bundle_address : UInt<32> @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]
    output io_bundle_write_data : UInt<32> @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]
    output io_bundle_write_enable : UInt<1> @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]
    output io_bundle_write_strobe_0 : UInt<1> @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]
    output io_bundle_write_strobe_1 : UInt<1> @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]
    output io_bundle_write_strobe_2 : UInt<1> @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]
    output io_bundle_write_strobe_3 : UInt<1> @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]
    input io_bundle_read_data : UInt<32> @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]
    output io_rom_address : UInt<32> @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]
    input io_rom_data : UInt<32> @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]
    input io_load_address : UInt<32> @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]
    output io_load_finished : UInt<1> @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 11:14]

    reg address : UInt<32>, clock with :
      reset => (UInt<1>("h0"), address) @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 21:24]
    reg valid : UInt<1>, clock with :
      reset => (UInt<1>("h0"), valid) @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 22:24]
    node _T = leq(address, UInt<4>("hb")) @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 28:16]
    node _io_bundle_address_T = dshl(address, UInt<2>("h2")) @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 31:40]
    node _io_bundle_address_T_1 = add(_io_bundle_address_T, io_load_address) @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 31:55]
    node _io_bundle_address_T_2 = tail(_io_bundle_address_T_1, 1) @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 31:55]
    node _address_T = add(address, UInt<1>("h1")) @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 33:39]
    node _address_T_1 = tail(_address_T, 1) @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 33:39]
    node _T_1 = eq(address, UInt<4>("hb")) @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 34:18]
    node _GEN_0 = mux(_T_1, UInt<1>("h1"), valid) @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 34:40 35:13 22:24]
    node _GEN_1 = mux(_T, UInt<1>("h1"), UInt<1>("h0")) @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 27:26 28:37 29:28]
    node _GEN_2 = mux(_T, io_rom_data, UInt<1>("h0")) @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 26:26 28:37 30:28]
    node _GEN_3 = mux(_T, _io_bundle_address_T_2, UInt<1>("h0")) @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 25:26 28:37 31:28]
    node _WIRE_1_0 = UInt<1>("h1") @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 32:{38,38}]
    node _WIRE__0 = UInt<1>("h0") @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 24:{36,36}]
    node _GEN_4 = mux(_T, _WIRE_1_0, _WIRE__0) @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 24:26 28:37 32:28]
    node _WIRE_1_1 = UInt<1>("h1") @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 32:{38,38}]
    node _WIRE__1 = UInt<1>("h0") @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 24:{36,36}]
    node _GEN_5 = mux(_T, _WIRE_1_1, _WIRE__1) @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 24:26 28:37 32:28]
    node _WIRE_1_2 = UInt<1>("h1") @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 32:{38,38}]
    node _WIRE__2 = UInt<1>("h0") @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 24:{36,36}]
    node _GEN_6 = mux(_T, _WIRE_1_2, _WIRE__2) @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 24:26 28:37 32:28]
    node _WIRE_1_3 = UInt<1>("h1") @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 32:{38,38}]
    node _WIRE__3 = UInt<1>("h0") @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 24:{36,36}]
    node _GEN_7 = mux(_T, _WIRE_1_3, _WIRE__3) @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 24:26 28:37 32:28]
    node _GEN_8 = mux(_T, _address_T_1, address) @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 21:24 28:37 33:28]
    node _GEN_9 = mux(_T, _GEN_0, valid) @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 22:24 28:37]
    io_bundle_address <= bits(_GEN_3, 31, 0)
    io_bundle_write_data <= _GEN_2
    io_bundle_write_enable <= _GEN_1
    io_bundle_write_strobe_0 <= _GEN_4
    io_bundle_write_strobe_1 <= _GEN_5
    io_bundle_write_strobe_2 <= _GEN_6
    io_bundle_write_strobe_3 <= _GEN_7
    io_rom_address <= address @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 39:20]
    io_load_finished <= valid @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 38:20]
    address <= mux(reset, UInt<32>("h0"), _GEN_8) @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 21:{24,24}]
    valid <= mux(reset, UInt<1>("h0"), _GEN_9) @[1-single-cycle/src/main/scala/peripheral/ROMLoader.scala 22:{24,24}]

  module RegisterFile :
    input clock : Clock
    input reset : UInt<1>
    input io_write_enable : UInt<1> @[common/src/main/scala/riscv/core/RegisterFile.scala 21:14]
    input io_write_address : UInt<5> @[common/src/main/scala/riscv/core/RegisterFile.scala 21:14]
    input io_write_data : UInt<32> @[common/src/main/scala/riscv/core/RegisterFile.scala 21:14]
    input io_read_address1 : UInt<5> @[common/src/main/scala/riscv/core/RegisterFile.scala 21:14]
    input io_read_address2 : UInt<5> @[common/src/main/scala/riscv/core/RegisterFile.scala 21:14]
    output io_read_data1 : UInt<32> @[common/src/main/scala/riscv/core/RegisterFile.scala 21:14]
    output io_read_data2 : UInt<32> @[common/src/main/scala/riscv/core/RegisterFile.scala 21:14]
    input io_debug_read_address : UInt<5> @[common/src/main/scala/riscv/core/RegisterFile.scala 21:14]
    output io_debug_read_data : UInt<32> @[common/src/main/scala/riscv/core/RegisterFile.scala 21:14]

    reg registers_0 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_0) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_1 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_1) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_2 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_2) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_3 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_3) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_4 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_4) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_5 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_5) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_6 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_6) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_7 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_7) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_8 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_8) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_9 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_9) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_10 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_10) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_11 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_11) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_12 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_12) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_13 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_13) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_14 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_14) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_15 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_15) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_16 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_16) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_17 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_17) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_18 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_18) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_19 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_19) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_20 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_20) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_21 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_21) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_22 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_22) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_23 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_23) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_24 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_24) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_25 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_25) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_26 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_26) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_27 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_27) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_28 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_28) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_29 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_29) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    reg registers_30 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_30) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26]
    node _T = asUInt(reset) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:15]
    node _T_1 = eq(_T, UInt<1>("h0")) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:8]
    node _T_2 = neq(io_write_address, UInt<1>("h0")) @[common/src/main/scala/riscv/core/RegisterFile.scala 39:46]
    node _T_3 = and(io_write_enable, _T_2) @[common/src/main/scala/riscv/core/RegisterFile.scala 39:26]
    node _T_4 = sub(io_write_address, UInt<1>("h1")) @[common/src/main/scala/riscv/core/RegisterFile.scala 41:34]
    node _T_5 = tail(_T_4, 1) @[common/src/main/scala/riscv/core/RegisterFile.scala 41:34]
    node _registers_T_5 = io_write_data @[common/src/main/scala/riscv/core/RegisterFile.scala 41:{41,41}]
    node _GEN_0 = mux(eq(UInt<1>("h0"), _T_5), _registers_T_5, registers_0) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_1 = mux(eq(UInt<1>("h1"), _T_5), _registers_T_5, registers_1) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_2 = mux(eq(UInt<2>("h2"), _T_5), _registers_T_5, registers_2) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_3 = mux(eq(UInt<2>("h3"), _T_5), _registers_T_5, registers_3) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_4 = mux(eq(UInt<3>("h4"), _T_5), _registers_T_5, registers_4) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_5 = mux(eq(UInt<3>("h5"), _T_5), _registers_T_5, registers_5) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_6 = mux(eq(UInt<3>("h6"), _T_5), _registers_T_5, registers_6) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_7 = mux(eq(UInt<3>("h7"), _T_5), _registers_T_5, registers_7) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_8 = mux(eq(UInt<4>("h8"), _T_5), _registers_T_5, registers_8) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_9 = mux(eq(UInt<4>("h9"), _T_5), _registers_T_5, registers_9) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_10 = mux(eq(UInt<4>("ha"), _T_5), _registers_T_5, registers_10) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_11 = mux(eq(UInt<4>("hb"), _T_5), _registers_T_5, registers_11) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_12 = mux(eq(UInt<4>("hc"), _T_5), _registers_T_5, registers_12) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_13 = mux(eq(UInt<4>("hd"), _T_5), _registers_T_5, registers_13) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_14 = mux(eq(UInt<4>("he"), _T_5), _registers_T_5, registers_14) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_15 = mux(eq(UInt<4>("hf"), _T_5), _registers_T_5, registers_15) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_16 = mux(eq(UInt<5>("h10"), _T_5), _registers_T_5, registers_16) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_17 = mux(eq(UInt<5>("h11"), _T_5), _registers_T_5, registers_17) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_18 = mux(eq(UInt<5>("h12"), _T_5), _registers_T_5, registers_18) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_19 = mux(eq(UInt<5>("h13"), _T_5), _registers_T_5, registers_19) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_20 = mux(eq(UInt<5>("h14"), _T_5), _registers_T_5, registers_20) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_21 = mux(eq(UInt<5>("h15"), _T_5), _registers_T_5, registers_21) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_22 = mux(eq(UInt<5>("h16"), _T_5), _registers_T_5, registers_22) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_23 = mux(eq(UInt<5>("h17"), _T_5), _registers_T_5, registers_23) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_24 = mux(eq(UInt<5>("h18"), _T_5), _registers_T_5, registers_24) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_25 = mux(eq(UInt<5>("h19"), _T_5), _registers_T_5, registers_25) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_26 = mux(eq(UInt<5>("h1a"), _T_5), _registers_T_5, registers_26) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_27 = mux(eq(UInt<5>("h1b"), _T_5), _registers_T_5, registers_27) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_28 = mux(eq(UInt<5>("h1c"), _T_5), _registers_T_5, registers_28) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_29 = mux(eq(UInt<5>("h1d"), _T_5), _registers_T_5, registers_29) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_30 = mux(eq(UInt<5>("h1e"), _T_5), _registers_T_5, registers_30) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 41:{41,41}]
    node _GEN_31 = mux(_T_3, _GEN_0, registers_0) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_32 = mux(_T_3, _GEN_1, registers_1) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_33 = mux(_T_3, _GEN_2, registers_2) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_34 = mux(_T_3, _GEN_3, registers_3) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_35 = mux(_T_3, _GEN_4, registers_4) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_36 = mux(_T_3, _GEN_5, registers_5) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_37 = mux(_T_3, _GEN_6, registers_6) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_38 = mux(_T_3, _GEN_7, registers_7) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_39 = mux(_T_3, _GEN_8, registers_8) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_40 = mux(_T_3, _GEN_9, registers_9) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_41 = mux(_T_3, _GEN_10, registers_10) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_42 = mux(_T_3, _GEN_11, registers_11) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_43 = mux(_T_3, _GEN_12, registers_12) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_44 = mux(_T_3, _GEN_13, registers_13) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_45 = mux(_T_3, _GEN_14, registers_14) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_46 = mux(_T_3, _GEN_15, registers_15) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_47 = mux(_T_3, _GEN_16, registers_16) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_48 = mux(_T_3, _GEN_17, registers_17) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_49 = mux(_T_3, _GEN_18, registers_18) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_50 = mux(_T_3, _GEN_19, registers_19) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_51 = mux(_T_3, _GEN_20, registers_20) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_52 = mux(_T_3, _GEN_21, registers_21) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_53 = mux(_T_3, _GEN_22, registers_22) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_54 = mux(_T_3, _GEN_23, registers_23) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_55 = mux(_T_3, _GEN_24, registers_24) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_56 = mux(_T_3, _GEN_25, registers_25) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_57 = mux(_T_3, _GEN_26, registers_26) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_58 = mux(_T_3, _GEN_27, registers_27) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_59 = mux(_T_3, _GEN_28, registers_28) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_60 = mux(_T_3, _GEN_29, registers_29) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_61 = mux(_T_3, _GEN_30, registers_30) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:26 39:55]
    node _GEN_62 = mux(_T_1, _GEN_31, registers_0) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_63 = mux(_T_1, _GEN_32, registers_1) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_64 = mux(_T_1, _GEN_33, registers_2) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_65 = mux(_T_1, _GEN_34, registers_3) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_66 = mux(_T_1, _GEN_35, registers_4) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_67 = mux(_T_1, _GEN_36, registers_5) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_68 = mux(_T_1, _GEN_37, registers_6) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_69 = mux(_T_1, _GEN_38, registers_7) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_70 = mux(_T_1, _GEN_39, registers_8) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_71 = mux(_T_1, _GEN_40, registers_9) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_72 = mux(_T_1, _GEN_41, registers_10) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_73 = mux(_T_1, _GEN_42, registers_11) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_74 = mux(_T_1, _GEN_43, registers_12) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_75 = mux(_T_1, _GEN_44, registers_13) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_76 = mux(_T_1, _GEN_45, registers_14) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_77 = mux(_T_1, _GEN_46, registers_15) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_78 = mux(_T_1, _GEN_47, registers_16) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_79 = mux(_T_1, _GEN_48, registers_17) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_80 = mux(_T_1, _GEN_49, registers_18) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_81 = mux(_T_1, _GEN_50, registers_19) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_82 = mux(_T_1, _GEN_51, registers_20) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_83 = mux(_T_1, _GEN_52, registers_21) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_84 = mux(_T_1, _GEN_53, registers_22) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_85 = mux(_T_1, _GEN_54, registers_23) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_86 = mux(_T_1, _GEN_55, registers_24) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_87 = mux(_T_1, _GEN_56, registers_25) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_88 = mux(_T_1, _GEN_57, registers_26) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_89 = mux(_T_1, _GEN_58, registers_27) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_90 = mux(_T_1, _GEN_59, registers_28) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_91 = mux(_T_1, _GEN_60, registers_29) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _GEN_92 = mux(_T_1, _GEN_61, registers_30) @[common/src/main/scala/riscv/core/RegisterFile.scala 38:23 36:26]
    node _io_read_data1_T = eq(io_read_address1, UInt<1>("h0")) @[common/src/main/scala/riscv/core/RegisterFile.scala 46:22]
    node _io_read_data1_T_1 = sub(io_read_address1, UInt<1>("h1")) @[common/src/main/scala/riscv/core/RegisterFile.scala 48:32]
    node _io_read_data1_T_2 = tail(_io_read_data1_T_1, 1) @[common/src/main/scala/riscv/core/RegisterFile.scala 48:32]
    node _GEN_93 = validif(eq(UInt<1>("h0"), _io_read_data1_T_2), registers_0) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_94 = mux(eq(UInt<1>("h1"), _io_read_data1_T_2), registers_1, _GEN_93) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_95 = mux(eq(UInt<2>("h2"), _io_read_data1_T_2), registers_2, _GEN_94) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_96 = mux(eq(UInt<2>("h3"), _io_read_data1_T_2), registers_3, _GEN_95) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_97 = mux(eq(UInt<3>("h4"), _io_read_data1_T_2), registers_4, _GEN_96) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_98 = mux(eq(UInt<3>("h5"), _io_read_data1_T_2), registers_5, _GEN_97) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_99 = mux(eq(UInt<3>("h6"), _io_read_data1_T_2), registers_6, _GEN_98) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_100 = mux(eq(UInt<3>("h7"), _io_read_data1_T_2), registers_7, _GEN_99) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_101 = mux(eq(UInt<4>("h8"), _io_read_data1_T_2), registers_8, _GEN_100) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_102 = mux(eq(UInt<4>("h9"), _io_read_data1_T_2), registers_9, _GEN_101) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_103 = mux(eq(UInt<4>("ha"), _io_read_data1_T_2), registers_10, _GEN_102) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_104 = mux(eq(UInt<4>("hb"), _io_read_data1_T_2), registers_11, _GEN_103) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_105 = mux(eq(UInt<4>("hc"), _io_read_data1_T_2), registers_12, _GEN_104) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_106 = mux(eq(UInt<4>("hd"), _io_read_data1_T_2), registers_13, _GEN_105) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_107 = mux(eq(UInt<4>("he"), _io_read_data1_T_2), registers_14, _GEN_106) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_108 = mux(eq(UInt<4>("hf"), _io_read_data1_T_2), registers_15, _GEN_107) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_109 = mux(eq(UInt<5>("h10"), _io_read_data1_T_2), registers_16, _GEN_108) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_110 = mux(eq(UInt<5>("h11"), _io_read_data1_T_2), registers_17, _GEN_109) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_111 = mux(eq(UInt<5>("h12"), _io_read_data1_T_2), registers_18, _GEN_110) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_112 = mux(eq(UInt<5>("h13"), _io_read_data1_T_2), registers_19, _GEN_111) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_113 = mux(eq(UInt<5>("h14"), _io_read_data1_T_2), registers_20, _GEN_112) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_114 = mux(eq(UInt<5>("h15"), _io_read_data1_T_2), registers_21, _GEN_113) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_115 = mux(eq(UInt<5>("h16"), _io_read_data1_T_2), registers_22, _GEN_114) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_116 = mux(eq(UInt<5>("h17"), _io_read_data1_T_2), registers_23, _GEN_115) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_117 = mux(eq(UInt<5>("h18"), _io_read_data1_T_2), registers_24, _GEN_116) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_118 = mux(eq(UInt<5>("h19"), _io_read_data1_T_2), registers_25, _GEN_117) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_119 = mux(eq(UInt<5>("h1a"), _io_read_data1_T_2), registers_26, _GEN_118) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_120 = mux(eq(UInt<5>("h1b"), _io_read_data1_T_2), registers_27, _GEN_119) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_121 = mux(eq(UInt<5>("h1c"), _io_read_data1_T_2), registers_28, _GEN_120) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_122 = mux(eq(UInt<5>("h1d"), _io_read_data1_T_2), registers_29, _GEN_121) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _GEN_123 = mux(eq(UInt<5>("h1e"), _io_read_data1_T_2), registers_30, _GEN_122) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:{23,23}]
    node _registers_io_read_data1_T_2 = _GEN_123 @[common/src/main/scala/riscv/core/RegisterFile.scala 45:23]
    node _io_read_data1_T_3 = mux(_io_read_data1_T, UInt<1>("h0"), _registers_io_read_data1_T_2) @[common/src/main/scala/riscv/core/RegisterFile.scala 45:23]
    node _io_read_data2_T = eq(io_read_address2, UInt<1>("h0")) @[common/src/main/scala/riscv/core/RegisterFile.scala 52:22]
    node _io_read_data2_T_1 = sub(io_read_address2, UInt<1>("h1")) @[common/src/main/scala/riscv/core/RegisterFile.scala 54:32]
    node _io_read_data2_T_2 = tail(_io_read_data2_T_1, 1) @[common/src/main/scala/riscv/core/RegisterFile.scala 54:32]
    node _GEN_124 = validif(eq(UInt<1>("h0"), _io_read_data2_T_2), registers_0) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_125 = mux(eq(UInt<1>("h1"), _io_read_data2_T_2), registers_1, _GEN_124) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_126 = mux(eq(UInt<2>("h2"), _io_read_data2_T_2), registers_2, _GEN_125) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_127 = mux(eq(UInt<2>("h3"), _io_read_data2_T_2), registers_3, _GEN_126) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_128 = mux(eq(UInt<3>("h4"), _io_read_data2_T_2), registers_4, _GEN_127) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_129 = mux(eq(UInt<3>("h5"), _io_read_data2_T_2), registers_5, _GEN_128) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_130 = mux(eq(UInt<3>("h6"), _io_read_data2_T_2), registers_6, _GEN_129) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_131 = mux(eq(UInt<3>("h7"), _io_read_data2_T_2), registers_7, _GEN_130) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_132 = mux(eq(UInt<4>("h8"), _io_read_data2_T_2), registers_8, _GEN_131) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_133 = mux(eq(UInt<4>("h9"), _io_read_data2_T_2), registers_9, _GEN_132) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_134 = mux(eq(UInt<4>("ha"), _io_read_data2_T_2), registers_10, _GEN_133) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_135 = mux(eq(UInt<4>("hb"), _io_read_data2_T_2), registers_11, _GEN_134) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_136 = mux(eq(UInt<4>("hc"), _io_read_data2_T_2), registers_12, _GEN_135) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_137 = mux(eq(UInt<4>("hd"), _io_read_data2_T_2), registers_13, _GEN_136) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_138 = mux(eq(UInt<4>("he"), _io_read_data2_T_2), registers_14, _GEN_137) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_139 = mux(eq(UInt<4>("hf"), _io_read_data2_T_2), registers_15, _GEN_138) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_140 = mux(eq(UInt<5>("h10"), _io_read_data2_T_2), registers_16, _GEN_139) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_141 = mux(eq(UInt<5>("h11"), _io_read_data2_T_2), registers_17, _GEN_140) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_142 = mux(eq(UInt<5>("h12"), _io_read_data2_T_2), registers_18, _GEN_141) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_143 = mux(eq(UInt<5>("h13"), _io_read_data2_T_2), registers_19, _GEN_142) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_144 = mux(eq(UInt<5>("h14"), _io_read_data2_T_2), registers_20, _GEN_143) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_145 = mux(eq(UInt<5>("h15"), _io_read_data2_T_2), registers_21, _GEN_144) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_146 = mux(eq(UInt<5>("h16"), _io_read_data2_T_2), registers_22, _GEN_145) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_147 = mux(eq(UInt<5>("h17"), _io_read_data2_T_2), registers_23, _GEN_146) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_148 = mux(eq(UInt<5>("h18"), _io_read_data2_T_2), registers_24, _GEN_147) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_149 = mux(eq(UInt<5>("h19"), _io_read_data2_T_2), registers_25, _GEN_148) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_150 = mux(eq(UInt<5>("h1a"), _io_read_data2_T_2), registers_26, _GEN_149) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_151 = mux(eq(UInt<5>("h1b"), _io_read_data2_T_2), registers_27, _GEN_150) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_152 = mux(eq(UInt<5>("h1c"), _io_read_data2_T_2), registers_28, _GEN_151) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_153 = mux(eq(UInt<5>("h1d"), _io_read_data2_T_2), registers_29, _GEN_152) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _GEN_154 = mux(eq(UInt<5>("h1e"), _io_read_data2_T_2), registers_30, _GEN_153) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:{23,23}]
    node _registers_io_read_data2_T_2 = _GEN_154 @[common/src/main/scala/riscv/core/RegisterFile.scala 51:23]
    node _io_read_data2_T_3 = mux(_io_read_data2_T, UInt<1>("h0"), _registers_io_read_data2_T_2) @[common/src/main/scala/riscv/core/RegisterFile.scala 51:23]
    node _io_debug_read_data_T = eq(io_debug_read_address, UInt<1>("h0")) @[common/src/main/scala/riscv/core/RegisterFile.scala 58:27]
    node _io_debug_read_data_T_1 = sub(io_debug_read_address, UInt<1>("h1")) @[common/src/main/scala/riscv/core/RegisterFile.scala 60:37]
    node _io_debug_read_data_T_2 = tail(_io_debug_read_data_T_1, 1) @[common/src/main/scala/riscv/core/RegisterFile.scala 60:37]
    node _GEN_155 = validif(eq(UInt<1>("h0"), _io_debug_read_data_T_2), registers_0) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_156 = mux(eq(UInt<1>("h1"), _io_debug_read_data_T_2), registers_1, _GEN_155) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_157 = mux(eq(UInt<2>("h2"), _io_debug_read_data_T_2), registers_2, _GEN_156) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_158 = mux(eq(UInt<2>("h3"), _io_debug_read_data_T_2), registers_3, _GEN_157) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_159 = mux(eq(UInt<3>("h4"), _io_debug_read_data_T_2), registers_4, _GEN_158) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_160 = mux(eq(UInt<3>("h5"), _io_debug_read_data_T_2), registers_5, _GEN_159) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_161 = mux(eq(UInt<3>("h6"), _io_debug_read_data_T_2), registers_6, _GEN_160) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_162 = mux(eq(UInt<3>("h7"), _io_debug_read_data_T_2), registers_7, _GEN_161) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_163 = mux(eq(UInt<4>("h8"), _io_debug_read_data_T_2), registers_8, _GEN_162) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_164 = mux(eq(UInt<4>("h9"), _io_debug_read_data_T_2), registers_9, _GEN_163) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_165 = mux(eq(UInt<4>("ha"), _io_debug_read_data_T_2), registers_10, _GEN_164) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_166 = mux(eq(UInt<4>("hb"), _io_debug_read_data_T_2), registers_11, _GEN_165) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_167 = mux(eq(UInt<4>("hc"), _io_debug_read_data_T_2), registers_12, _GEN_166) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_168 = mux(eq(UInt<4>("hd"), _io_debug_read_data_T_2), registers_13, _GEN_167) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_169 = mux(eq(UInt<4>("he"), _io_debug_read_data_T_2), registers_14, _GEN_168) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_170 = mux(eq(UInt<4>("hf"), _io_debug_read_data_T_2), registers_15, _GEN_169) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_171 = mux(eq(UInt<5>("h10"), _io_debug_read_data_T_2), registers_16, _GEN_170) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_172 = mux(eq(UInt<5>("h11"), _io_debug_read_data_T_2), registers_17, _GEN_171) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_173 = mux(eq(UInt<5>("h12"), _io_debug_read_data_T_2), registers_18, _GEN_172) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_174 = mux(eq(UInt<5>("h13"), _io_debug_read_data_T_2), registers_19, _GEN_173) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_175 = mux(eq(UInt<5>("h14"), _io_debug_read_data_T_2), registers_20, _GEN_174) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_176 = mux(eq(UInt<5>("h15"), _io_debug_read_data_T_2), registers_21, _GEN_175) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_177 = mux(eq(UInt<5>("h16"), _io_debug_read_data_T_2), registers_22, _GEN_176) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_178 = mux(eq(UInt<5>("h17"), _io_debug_read_data_T_2), registers_23, _GEN_177) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_179 = mux(eq(UInt<5>("h18"), _io_debug_read_data_T_2), registers_24, _GEN_178) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_180 = mux(eq(UInt<5>("h19"), _io_debug_read_data_T_2), registers_25, _GEN_179) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_181 = mux(eq(UInt<5>("h1a"), _io_debug_read_data_T_2), registers_26, _GEN_180) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_182 = mux(eq(UInt<5>("h1b"), _io_debug_read_data_T_2), registers_27, _GEN_181) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_183 = mux(eq(UInt<5>("h1c"), _io_debug_read_data_T_2), registers_28, _GEN_182) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_184 = mux(eq(UInt<5>("h1d"), _io_debug_read_data_T_2), registers_29, _GEN_183) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _GEN_185 = mux(eq(UInt<5>("h1e"), _io_debug_read_data_T_2), registers_30, _GEN_184) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:{28,28}]
    node _registers_io_debug_read_data_T_2 = _GEN_185 @[common/src/main/scala/riscv/core/RegisterFile.scala 57:28]
    node _io_debug_read_data_T_3 = mux(_io_debug_read_data_T, UInt<1>("h0"), _registers_io_debug_read_data_T_2) @[common/src/main/scala/riscv/core/RegisterFile.scala 57:28]
    node _registers_WIRE_0 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_1 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_2 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_3 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_4 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_5 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_6 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_7 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_8 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_9 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_10 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_11 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_12 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_13 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_14 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_15 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_16 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_17 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_18 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_19 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_20 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_21 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_22 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_23 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_24 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_25 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_26 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_27 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_28 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_29 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    node _registers_WIRE_30 = UInt<32>("h0") @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{34,34}]
    io_read_data1 <= _io_read_data1_T_3 @[common/src/main/scala/riscv/core/RegisterFile.scala 45:17]
    io_read_data2 <= _io_read_data2_T_3 @[common/src/main/scala/riscv/core/RegisterFile.scala 51:17]
    io_debug_read_data <= _io_debug_read_data_T_3 @[common/src/main/scala/riscv/core/RegisterFile.scala 57:22]
    registers_0 <= mux(reset, _registers_WIRE_0, _GEN_62) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_1 <= mux(reset, _registers_WIRE_1, _GEN_63) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_2 <= mux(reset, _registers_WIRE_2, _GEN_64) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_3 <= mux(reset, _registers_WIRE_3, _GEN_65) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_4 <= mux(reset, _registers_WIRE_4, _GEN_66) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_5 <= mux(reset, _registers_WIRE_5, _GEN_67) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_6 <= mux(reset, _registers_WIRE_6, _GEN_68) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_7 <= mux(reset, _registers_WIRE_7, _GEN_69) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_8 <= mux(reset, _registers_WIRE_8, _GEN_70) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_9 <= mux(reset, _registers_WIRE_9, _GEN_71) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_10 <= mux(reset, _registers_WIRE_10, _GEN_72) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_11 <= mux(reset, _registers_WIRE_11, _GEN_73) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_12 <= mux(reset, _registers_WIRE_12, _GEN_74) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_13 <= mux(reset, _registers_WIRE_13, _GEN_75) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_14 <= mux(reset, _registers_WIRE_14, _GEN_76) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_15 <= mux(reset, _registers_WIRE_15, _GEN_77) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_16 <= mux(reset, _registers_WIRE_16, _GEN_78) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_17 <= mux(reset, _registers_WIRE_17, _GEN_79) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_18 <= mux(reset, _registers_WIRE_18, _GEN_80) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_19 <= mux(reset, _registers_WIRE_19, _GEN_81) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_20 <= mux(reset, _registers_WIRE_20, _GEN_82) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_21 <= mux(reset, _registers_WIRE_21, _GEN_83) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_22 <= mux(reset, _registers_WIRE_22, _GEN_84) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_23 <= mux(reset, _registers_WIRE_23, _GEN_85) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_24 <= mux(reset, _registers_WIRE_24, _GEN_86) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_25 <= mux(reset, _registers_WIRE_25, _GEN_87) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_26 <= mux(reset, _registers_WIRE_26, _GEN_88) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_27 <= mux(reset, _registers_WIRE_27, _GEN_89) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_28 <= mux(reset, _registers_WIRE_28, _GEN_90) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_29 <= mux(reset, _registers_WIRE_29, _GEN_91) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]
    registers_30 <= mux(reset, _registers_WIRE_30, _GEN_92) @[common/src/main/scala/riscv/core/RegisterFile.scala 36:{26,26}]

  module InstructionFetch :
    input clock : Clock
    input reset : UInt<1>
    input io_jump_flag_id : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 28:14]
    input io_jump_address_id : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 28:14]
    input io_instruction_read_data : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 28:14]
    input io_instruction_valid : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 28:14]
    output io_instruction_address : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 28:14]
    output io_instruction : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 28:14]

    reg pc : UInt<32>, clock with :
      reset => (UInt<1>("h0"), pc) @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 39:19]
    node _pc_T = add(pc, UInt<3>("h4")) @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 70:55]
    node _pc_T_1 = tail(_pc_T, 1) @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 70:55]
    node _pc_T_2 = mux(io_jump_flag_id, io_jump_address_id, _pc_T_1) @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 70:14]
    node _GEN_0 = mux(io_instruction_valid, io_instruction_read_data, UInt<5>("h13")) @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 62:30 63:20 77:20]
    node _GEN_1 = mux(io_instruction_valid, _pc_T_2, pc) @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 62:30 70:8 76:20]
    io_instruction_address <= pc @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 79:26]
    io_instruction <= _GEN_0
    pc <= mux(reset, UInt<32>("h1000"), _GEN_1) @[1-single-cycle/src/main/scala/riscv/core/InstructionFetch.scala 39:{19,19}]

  module InstructionDecode :
    input clock : Clock
    input reset : UInt<1>
    input io_instruction : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]
    output io_regs_reg1_read_address : UInt<5> @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]
    output io_regs_reg2_read_address : UInt<5> @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]
    output io_ex_immediate : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]
    output io_ex_aluop1_source : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]
    output io_ex_aluop2_source : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]
    output io_memory_read_enable : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]
    output io_memory_write_enable : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]
    output io_wb_reg_write_source : UInt<2> @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]
    output io_reg_write_enable : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]
    output io_reg_write_address : UInt<5> @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 150:14]

    node opcode = bits(io_instruction, 6, 0) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 166:32]
    node rs1 = bits(io_instruction, 19, 15) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 167:32]
    node rs2 = bits(io_instruction, 24, 20) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 168:32]
    node rd = bits(io_instruction, 11, 7) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 169:32]
    node isLoad = eq(opcode, UInt<7>("h3")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 171:25]
    node isStore = eq(opcode, UInt<7>("h23")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 172:25]
    node isOpImm = eq(opcode, UInt<7>("h13")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 173:25]
    node isOp = eq(opcode, UInt<7>("h33")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 174:25]
    node isLui = eq(opcode, UInt<7>("h37")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 175:25]
    node isAuipc = eq(opcode, UInt<7>("h17")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 176:25]
    node isJal = eq(opcode, UInt<7>("h6f")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 177:25]
    node isJalr = eq(opcode, UInt<7>("h67")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 178:25]
    node isBranch = eq(opcode, UInt<7>("h63")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 179:25]
    node _usesRs1_T = or(isLoad, isStore) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 180:25]
    node _usesRs1_T_1 = or(_usesRs1_T, isOpImm) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 180:36]
    node _usesRs1_T_2 = or(_usesRs1_T_1, isOp) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 180:47]
    node _usesRs1_T_3 = or(_usesRs1_T_2, isBranch) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 180:55]
    node usesRs1 = or(_usesRs1_T_3, isJalr) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 180:67]
    node _usesRs2_T = or(isStore, isOp) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 181:26]
    node usesRs2 = or(_usesRs2_T, isBranch) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 181:34]
    node _regWrite_T = or(isLoad, isOpImm) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 182:25]
    node _regWrite_T_1 = or(_regWrite_T, isOp) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 182:36]
    node _regWrite_T_2 = or(_regWrite_T_1, isLui) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 182:44]
    node _regWrite_T_3 = or(_regWrite_T_2, isAuipc) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 182:53]
    node _regWrite_T_4 = or(_regWrite_T_3, isJal) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 182:64]
    node regWrite = or(_regWrite_T_4, isJalr) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 182:73]
    node _T = or(isJal, isJalr) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 204:19]
    node _GEN_0 = mux(_T, UInt<2>("h2"), UInt<2>("h0")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 204:30 205:14 198:29]
    node _GEN_1 = mux(isLoad, UInt<2>("h1"), _GEN_0) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 200:16 201:14]
    node _T_1 = or(isBranch, isAuipc) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 215:17]
    node _T_2 = or(_T_1, isJal) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 215:28]
    node _GEN_2 = mux(_T_2, UInt<1>("h1"), UInt<1>("h0")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 215:38 216:15 212:30]
    node _needsImmediate_T = or(isLoad, isStore) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 222:31]
    node _needsImmediate_T_1 = or(_needsImmediate_T, isOpImm) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 222:42]
    node _needsImmediate_T_2 = or(_needsImmediate_T_1, isBranch) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 222:53]
    node _needsImmediate_T_3 = or(_needsImmediate_T_2, isLui) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 222:65]
    node _needsImmediate_T_4 = or(_needsImmediate_T_3, isAuipc) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 222:74]
    node _needsImmediate_T_5 = or(_needsImmediate_T_4, isJal) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 222:85]
    node needsImmediate = or(_needsImmediate_T_5, isJalr) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 222:94]
    node _GEN_3 = mux(needsImmediate, UInt<1>("h1"), UInt<1>("h0")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 226:24 227:15 223:35]
    node _T_3 = or(isLoad, isOpImm) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 231:15]
    node _T_4 = or(_T_3, isJalr) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 231:26]
    node _GEN_4 = mux(_T_4, UInt<1>("h1"), UInt<1>("h0")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 231:37 232:13 230:28]
    node _GEN_5 = mux(isStore, UInt<2>("h2"), _GEN_4) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 234:17 235:13]
    node _GEN_6 = mux(isBranch, UInt<2>("h3"), _GEN_5) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 237:18 238:13]
    node _T_5 = or(isLui, isAuipc) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 240:14]
    node _GEN_7 = mux(_T_5, UInt<3>("h4"), _GEN_6) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 240:26 241:13]
    node _GEN_8 = mux(isJal, UInt<3>("h5"), _GEN_7) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 243:15 244:13]
    node _io_regs_reg1_read_address_T = mux(usesRs1, rs1, UInt<1>("h0")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 247:35]
    node _io_regs_reg2_read_address_T = mux(usesRs2, rs2, UInt<1>("h0")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 248:35]
    node _immI_T = bits(io_instruction, 31, 31) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 269:47]
    node _immI_T_1 = mux(_immI_T, UInt<20>("hfffff"), UInt<20>("h0")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 269:9]
    node _immI_T_2 = bits(io_instruction, 31, 20) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 270:16]
    node immI = cat(_immI_T_1, _immI_T_2) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 268:17]
    node _immS_T = bits(io_instruction, 31, 31) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 280:47]
    node _immS_T_1 = mux(_immS_T, UInt<20>("hfffff"), UInt<20>("h0")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 280:9]
    node _immS_T_2 = bits(io_instruction, 31, 25) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 281:16]
    node _immS_T_3 = bits(io_instruction, 11, 7) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 282:16]
    node immS_hi = cat(_immS_T_1, _immS_T_2) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 279:17]
    node immS = cat(immS_hi, _immS_T_3) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 279:17]
    node _immB_T = bits(io_instruction, 31, 31) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 293:47]
    node _immB_T_1 = mux(_immB_T, UInt<19>("h7ffff"), UInt<19>("h0")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 293:9]
    node _immB_T_2 = bits(io_instruction, 31, 31) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 294:16]
    node _immB_T_3 = bits(io_instruction, 7, 7) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 295:16]
    node _immB_T_4 = bits(io_instruction, 30, 25) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 296:16]
    node _immB_T_5 = bits(io_instruction, 11, 8) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 297:16]
    node immB_lo_hi = cat(_immB_T_4, _immB_T_5) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 292:17]
    node immB_lo = cat(immB_lo_hi, UInt<1>("h0")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 292:17]
    node immB_hi_hi = cat(_immB_T_1, _immB_T_2) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 292:17]
    node immB_hi = cat(immB_hi_hi, _immB_T_3) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 292:17]
    node immB = cat(immB_hi, immB_lo) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 292:17]
    node _immU_T = bits(io_instruction, 31, 12) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 305:29]
    node immU = cat(_immU_T, UInt<12>("h0")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 305:17]
    node _immJ_T = bits(io_instruction, 31, 31) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 315:47]
    node _immJ_T_1 = mux(_immJ_T, UInt<11>("h7ff"), UInt<11>("h0")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 315:9]
    node _immJ_T_2 = bits(io_instruction, 31, 31) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 316:16]
    node _immJ_T_3 = bits(io_instruction, 19, 12) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 317:16]
    node _immJ_T_4 = bits(io_instruction, 20, 20) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 318:16]
    node _immJ_T_5 = bits(io_instruction, 30, 21) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 319:16]
    node immJ_lo_hi = cat(_immJ_T_4, _immJ_T_5) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 314:17]
    node immJ_lo = cat(immJ_lo_hi, UInt<1>("h0")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 314:17]
    node immJ_hi_hi = cat(_immJ_T_1, _immJ_T_2) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 314:17]
    node immJ_hi = cat(immJ_hi_hi, _immJ_T_3) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 314:17]
    node immJ = cat(immJ_hi, immJ_lo) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 314:17]
    node immKind = _GEN_8 @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 230:28]
    node _immediate_T = asUInt(immKind) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 323:37]
    node _immediate_T_1 = asUInt(UInt<1>("h1")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 325:23]
    node _immediate_T_2 = asUInt(UInt<2>("h2")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 326:23]
    node _immediate_T_3 = asUInt(UInt<2>("h3")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 327:23]
    node _immediate_T_4 = asUInt(UInt<3>("h4")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 328:23]
    node _immediate_T_5 = asUInt(UInt<3>("h5")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 329:23]
    node _immediate_T_6 = eq(_immediate_T_1, _immediate_T) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 323:72]
    node _immediate_T_7 = mux(_immediate_T_6, immI, UInt<32>("h0")) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 323:72]
    node _immediate_T_8 = eq(_immediate_T_2, _immediate_T) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 323:72]
    node _immediate_T_9 = mux(_immediate_T_8, immS, _immediate_T_7) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 323:72]
    node _immediate_T_10 = eq(_immediate_T_3, _immediate_T) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 323:72]
    node _immediate_T_11 = mux(_immediate_T_10, immB, _immediate_T_9) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 323:72]
    node _immediate_T_12 = eq(_immediate_T_4, _immediate_T) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 323:72]
    node _immediate_T_13 = mux(_immediate_T_12, immU, _immediate_T_11) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 323:72]
    node _immediate_T_14 = eq(_immediate_T_5, _immediate_T) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 323:72]
    node immediate = mux(_immediate_T_14, immJ, _immediate_T_13) @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 323:72]
    node wbSource = _GEN_1 @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 198:29]
    node aluOp1Sel = _GEN_2 @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 212:30]
    node aluOp2Sel = _GEN_3 @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 223:35]
    io_regs_reg1_read_address <= _io_regs_reg1_read_address_T @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 247:29]
    io_regs_reg2_read_address <= _io_regs_reg2_read_address_T @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 248:29]
    io_ex_immediate <= immediate @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 332:19]
    io_ex_aluop1_source <= aluOp1Sel @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 249:29]
    io_ex_aluop2_source <= aluOp2Sel @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 250:29]
    io_memory_read_enable <= isLoad @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 251:29]
    io_memory_write_enable <= isStore @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 252:29]
    io_wb_reg_write_source <= wbSource @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 253:29]
    io_reg_write_enable <= regWrite @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 254:29]
    io_reg_write_address <= rd @[1-single-cycle/src/main/scala/riscv/core/InstructionDecode.scala 255:29]

  module ALU :
    input clock : Clock
    input reset : UInt<1>
    input io_func : UInt<4> @[common/src/main/scala/riscv/core/ALU.scala 27:14]
    input io_op1 : UInt<32> @[common/src/main/scala/riscv/core/ALU.scala 27:14]
    input io_op2 : UInt<32> @[common/src/main/scala/riscv/core/ALU.scala 27:14]
    output io_result : UInt<32> @[common/src/main/scala/riscv/core/ALU.scala 27:14]

    node _T = asUInt(UInt<1>("h1")) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _T_1 = asUInt(io_func) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _T_2 = eq(_T, _T_1) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _io_result_T = add(io_op1, io_op2) @[common/src/main/scala/riscv/core/ALU.scala 39:27]
    node _io_result_T_1 = tail(_io_result_T, 1) @[common/src/main/scala/riscv/core/ALU.scala 39:27]
    node _T_3 = asUInt(UInt<2>("h2")) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _T_4 = asUInt(io_func) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _T_5 = eq(_T_3, _T_4) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _io_result_T_2 = sub(io_op1, io_op2) @[common/src/main/scala/riscv/core/ALU.scala 42:27]
    node _io_result_T_3 = tail(_io_result_T_2, 1) @[common/src/main/scala/riscv/core/ALU.scala 42:27]
    node _T_6 = asUInt(UInt<2>("h3")) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _T_7 = asUInt(io_func) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _T_8 = eq(_T_6, _T_7) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _io_result_T_4 = bits(io_op2, 4, 0) @[common/src/main/scala/riscv/core/ALU.scala 45:36]
    node _io_result_T_5 = dshl(io_op1, _io_result_T_4) @[common/src/main/scala/riscv/core/ALU.scala 45:27]
    node _T_9 = asUInt(UInt<3>("h4")) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _T_10 = asUInt(io_func) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _T_11 = eq(_T_9, _T_10) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _io_result_T_6 = asSInt(io_op1) @[common/src/main/scala/riscv/core/ALU.scala 48:27]
    node _io_result_T_7 = asSInt(io_op2) @[common/src/main/scala/riscv/core/ALU.scala 48:43]
    node _io_result_T_8 = lt(_io_result_T_6, _io_result_T_7) @[common/src/main/scala/riscv/core/ALU.scala 48:34]
    node _T_12 = asUInt(UInt<3>("h5")) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _T_13 = asUInt(io_func) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _T_14 = eq(_T_12, _T_13) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _io_result_T_9 = xor(io_op1, io_op2) @[common/src/main/scala/riscv/core/ALU.scala 51:27]
    node _T_15 = asUInt(UInt<3>("h6")) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _T_16 = asUInt(io_func) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _T_17 = eq(_T_15, _T_16) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _io_result_T_10 = or(io_op1, io_op2) @[common/src/main/scala/riscv/core/ALU.scala 54:27]
    node _T_18 = asUInt(UInt<3>("h7")) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _T_19 = asUInt(io_func) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _T_20 = eq(_T_18, _T_19) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _io_result_T_11 = and(io_op1, io_op2) @[common/src/main/scala/riscv/core/ALU.scala 57:27]
    node _T_21 = asUInt(UInt<4>("h8")) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _T_22 = asUInt(io_func) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _T_23 = eq(_T_21, _T_22) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _io_result_T_12 = bits(io_op2, 4, 0) @[common/src/main/scala/riscv/core/ALU.scala 60:36]
    node _io_result_T_13 = dshr(io_op1, _io_result_T_12) @[common/src/main/scala/riscv/core/ALU.scala 60:27]
    node _T_24 = asUInt(UInt<4>("h9")) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _T_25 = asUInt(io_func) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _T_26 = eq(_T_24, _T_25) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _io_result_T_14 = asSInt(io_op1) @[common/src/main/scala/riscv/core/ALU.scala 63:28]
    node _io_result_T_15 = bits(io_op2, 4, 0) @[common/src/main/scala/riscv/core/ALU.scala 63:44]
    node _io_result_T_16 = dshr(_io_result_T_14, _io_result_T_15) @[common/src/main/scala/riscv/core/ALU.scala 63:35]
    node _io_result_T_17 = asUInt(_io_result_T_16) @[common/src/main/scala/riscv/core/ALU.scala 63:52]
    node _T_27 = asUInt(UInt<4>("ha")) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _T_28 = asUInt(io_func) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _T_29 = eq(_T_27, _T_28) @[common/src/main/scala/riscv/core/ALU.scala 37:19]
    node _io_result_T_18 = lt(io_op1, io_op2) @[common/src/main/scala/riscv/core/ALU.scala 66:27]
    node _GEN_0 = mux(_T_29, _io_result_T_18, UInt<1>("h0")) @[common/src/main/scala/riscv/core/ALU.scala 36:13 37:19 66:17]
    node _GEN_1 = mux(_T_26, _io_result_T_17, _GEN_0) @[common/src/main/scala/riscv/core/ALU.scala 37:19 63:17]
    node _GEN_2 = mux(_T_23, _io_result_T_13, _GEN_1) @[common/src/main/scala/riscv/core/ALU.scala 37:19 60:17]
    node _GEN_3 = mux(_T_20, _io_result_T_11, _GEN_2) @[common/src/main/scala/riscv/core/ALU.scala 37:19 57:17]
    node _GEN_4 = mux(_T_17, _io_result_T_10, _GEN_3) @[common/src/main/scala/riscv/core/ALU.scala 37:19 54:17]
    node _GEN_5 = mux(_T_14, _io_result_T_9, _GEN_4) @[common/src/main/scala/riscv/core/ALU.scala 37:19 51:17]
    node _GEN_6 = mux(_T_11, _io_result_T_8, _GEN_5) @[common/src/main/scala/riscv/core/ALU.scala 37:19 48:17]
    node _GEN_7 = mux(_T_8, _io_result_T_5, _GEN_6) @[common/src/main/scala/riscv/core/ALU.scala 37:19 45:17]
    node _GEN_8 = mux(_T_5, _io_result_T_3, _GEN_7) @[common/src/main/scala/riscv/core/ALU.scala 37:19 42:17]
    node _GEN_9 = mux(_T_2, _io_result_T_1, _GEN_8) @[common/src/main/scala/riscv/core/ALU.scala 37:19 39:17]
    io_result <= bits(_GEN_9, 31, 0)

  module ALUControl :
    input clock : Clock
    input reset : UInt<1>
    input io_opcode : UInt<7> @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 21:14]
    input io_funct3 : UInt<3> @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 21:14]
    input io_funct7 : UInt<7> @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 21:14]
    output io_alu_funct : UInt<4> @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 21:14]

    node _T = eq(UInt<7>("h13"), io_opcode) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 45:21]
    node _io_alu_funct_T = bits(io_funct7, 5, 5) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 67:24]
    node _io_alu_funct_T_1 = mux(_io_alu_funct_T, UInt<4>("h9"), UInt<4>("h8")) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 66:41]
    node _io_alu_funct_T_2 = eq(UInt<3>("h1"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
    node _io_alu_funct_T_3 = mux(_io_alu_funct_T_2, UInt<2>("h3"), UInt<1>("h1")) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
    node _io_alu_funct_T_4 = eq(UInt<3>("h2"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
    node _io_alu_funct_T_5 = mux(_io_alu_funct_T_4, UInt<3>("h4"), _io_alu_funct_T_3) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
    node _io_alu_funct_T_6 = eq(UInt<3>("h3"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
    node _io_alu_funct_T_7 = mux(_io_alu_funct_T_6, UInt<4>("ha"), _io_alu_funct_T_5) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
    node _io_alu_funct_T_8 = eq(UInt<3>("h4"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
    node _io_alu_funct_T_9 = mux(_io_alu_funct_T_8, UInt<3>("h5"), _io_alu_funct_T_7) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
    node _io_alu_funct_T_10 = eq(UInt<3>("h6"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
    node _io_alu_funct_T_11 = mux(_io_alu_funct_T_10, UInt<3>("h6"), _io_alu_funct_T_9) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
    node _io_alu_funct_T_12 = eq(UInt<3>("h7"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
    node _io_alu_funct_T_13 = mux(_io_alu_funct_T_12, UInt<3>("h7"), _io_alu_funct_T_11) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
    node _io_alu_funct_T_14 = eq(UInt<3>("h5"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
    node _io_alu_funct_T_15 = mux(_io_alu_funct_T_14, _io_alu_funct_T_1, _io_alu_funct_T_13) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 48:62]
    node _T_1 = eq(UInt<7>("h33"), io_opcode) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 45:21]
    node _io_alu_funct_T_16 = bits(io_funct7, 5, 5) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 84:24]
    node _io_alu_funct_T_17 = mux(_io_alu_funct_T_16, UInt<2>("h2"), UInt<1>("h1")) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 83:43]
    node _io_alu_funct_T_18 = bits(io_funct7, 5, 5) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 103:24]
    node _io_alu_funct_T_19 = mux(_io_alu_funct_T_18, UInt<4>("h9"), UInt<4>("h8")) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 102:43]
    node _io_alu_funct_T_20 = eq(UInt<3>("h1"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 77:62]
    node _io_alu_funct_T_21 = mux(_io_alu_funct_T_20, UInt<2>("h3"), _io_alu_funct_T_17) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 77:62]
    node _io_alu_funct_T_22 = eq(UInt<3>("h2"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 77:62]
    node _io_alu_funct_T_23 = mux(_io_alu_funct_T_22, UInt<3>("h4"), _io_alu_funct_T_21) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 77:62]
    node _io_alu_funct_T_24 = eq(UInt<3>("h3"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 77:62]
    node _io_alu_funct_T_25 = mux(_io_alu_funct_T_24, UInt<4>("ha"), _io_alu_funct_T_23) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 77:62]
    node _io_alu_funct_T_26 = eq(UInt<3>("h4"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 77:62]
    node _io_alu_funct_T_27 = mux(_io_alu_funct_T_26, UInt<3>("h5"), _io_alu_funct_T_25) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 77:62]
    node _io_alu_funct_T_28 = eq(UInt<3>("h6"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 77:62]
    node _io_alu_funct_T_29 = mux(_io_alu_funct_T_28, UInt<3>("h6"), _io_alu_funct_T_27) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 77:62]
    node _io_alu_funct_T_30 = eq(UInt<3>("h7"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 77:62]
    node _io_alu_funct_T_31 = mux(_io_alu_funct_T_30, UInt<3>("h7"), _io_alu_funct_T_29) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 77:62]
    node _io_alu_funct_T_32 = eq(UInt<3>("h5"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 77:62]
    node _io_alu_funct_T_33 = mux(_io_alu_funct_T_32, _io_alu_funct_T_19, _io_alu_funct_T_31) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 77:62]
    node _GEN_0 = mux(_T_1, _io_alu_funct_T_33, UInt<1>("h1")) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 43:16 45:21 77:20]
    node _GEN_1 = mux(_T, _io_alu_funct_T_15, _GEN_0) @[1-single-cycle/src/main/scala/riscv/core/ALUControl.scala 45:21 48:20]
    io_alu_funct <= _GEN_1

  module Execute :
    input clock : Clock
    input reset : UInt<1>
    input io_instruction : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 45:14]
    input io_instruction_address : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 45:14]
    input io_reg1_data : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 45:14]
    input io_reg2_data : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 45:14]
    input io_immediate : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 45:14]
    input io_aluop1_source : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 45:14]
    input io_aluop2_source : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 45:14]
    output io_mem_alu_result : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 45:14]
    output io_if_jump_flag : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 45:14]
    output io_if_jump_address : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 45:14]

    inst alu of ALU @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 65:24]
    inst alu_ctrl of ALUControl @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 66:24]
    node opcode = bits(io_instruction, 6, 0) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 60:30]
    node funct3 = bits(io_instruction, 14, 12) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 61:30]
    node funct7 = bits(io_instruction, 31, 25) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 62:30]
    node _aluOp1_T = eq(io_aluop1_source, UInt<1>("h1")) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 74:37]
    node aluOp1 = mux(_aluOp1_T, io_instruction_address, io_reg1_data) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 74:19]
    node _aluOp2_T = eq(io_aluop2_source, UInt<1>("h1")) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 75:37]
    node aluOp2 = mux(_aluOp2_T, io_immediate, io_reg2_data) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 75:19]
    node _branchCondition_T = eq(io_reg1_data, io_reg2_data) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 96:47]
    node _branchCondition_T_1 = neq(io_reg1_data, io_reg2_data) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 99:47]
    node _branchCondition_T_2 = asSInt(io_reg1_data) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 103:47]
    node _branchCondition_T_3 = asSInt(io_reg2_data) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 103:69]
    node _branchCondition_T_4 = lt(_branchCondition_T_2, _branchCondition_T_3) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 103:54]
    node _branchCondition_T_5 = asSInt(io_reg1_data) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 106:47]
    node _branchCondition_T_6 = asSInt(io_reg2_data) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 106:70]
    node _branchCondition_T_7 = geq(_branchCondition_T_5, _branchCondition_T_6) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 106:54]
    node _branchCondition_T_8 = lt(io_reg1_data, io_reg2_data) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 110:47]
    node _branchCondition_T_9 = geq(io_reg1_data, io_reg2_data) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 113:47]
    node _branchCondition_T_10 = eq(UInt<3>("h0"), funct3) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 90:51]
    node _branchCondition_T_11 = mux(_branchCondition_T_10, _branchCondition_T, UInt<1>("h0")) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 90:51]
    node _branchCondition_T_12 = eq(UInt<3>("h1"), funct3) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 90:51]
    node _branchCondition_T_13 = mux(_branchCondition_T_12, _branchCondition_T_1, _branchCondition_T_11) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 90:51]
    node _branchCondition_T_14 = eq(UInt<3>("h4"), funct3) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 90:51]
    node _branchCondition_T_15 = mux(_branchCondition_T_14, _branchCondition_T_4, _branchCondition_T_13) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 90:51]
    node _branchCondition_T_16 = eq(UInt<3>("h5"), funct3) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 90:51]
    node _branchCondition_T_17 = mux(_branchCondition_T_16, _branchCondition_T_7, _branchCondition_T_15) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 90:51]
    node _branchCondition_T_18 = eq(UInt<3>("h6"), funct3) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 90:51]
    node _branchCondition_T_19 = mux(_branchCondition_T_18, _branchCondition_T_8, _branchCondition_T_17) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 90:51]
    node _branchCondition_T_20 = eq(UInt<3>("h7"), funct3) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 90:51]
    node branchCondition = mux(_branchCondition_T_20, _branchCondition_T_9, _branchCondition_T_19) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 90:51]
    node isBranch = eq(opcode, UInt<7>("h63")) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 116:25]
    node isJal = eq(opcode, UInt<7>("h6f")) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 117:25]
    node isJalr = eq(opcode, UInt<7>("h67")) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 118:25]
    node _branchTarget_T = add(io_instruction_address, io_immediate) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 131:45]
    node branchTarget = tail(_branchTarget_T, 1) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 131:45]
    node _jalrSum_T = add(io_reg1_data, io_immediate) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 139:35]
    node jalrSum = tail(_jalrSum_T, 1) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 139:35]
    node _jalrTarget_T = bits(jalrSum, 31, 1) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 143:31]
    node jalrTarget = cat(_jalrTarget_T, UInt<1>("h0")) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 143:23]
    node branchTaken = and(isBranch, branchCondition) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 145:30]
    node _io_if_jump_flag_T = or(branchTaken, isJal) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 146:34]
    node _io_if_jump_flag_T_1 = or(_io_if_jump_flag_T, isJalr) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 146:43]
    node _io_if_jump_address_T = mux(isJal, branchTarget, branchTarget) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 150:8]
    node _io_if_jump_address_T_1 = mux(isJalr, jalrTarget, _io_if_jump_address_T) @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 147:28]
    io_mem_alu_result <= alu.io_result @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 79:21]
    io_if_jump_flag <= _io_if_jump_flag_T_1 @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 146:19]
    io_if_jump_address <= _io_if_jump_address_T_1 @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 147:22]
    alu.clock <= clock
    alu.reset <= reset
    alu.io_func <= alu_ctrl.io_alu_funct @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 73:15]
    alu.io_op1 <= aluOp1 @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 76:14]
    alu.io_op2 <= aluOp2 @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 77:14]
    alu_ctrl.clock <= clock
    alu_ctrl.reset <= reset
    alu_ctrl.io_opcode <= opcode @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 68:22]
    alu_ctrl.io_funct3 <= funct3 @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 69:22]
    alu_ctrl.io_funct7 <= funct7 @[1-single-cycle/src/main/scala/riscv/core/Execute.scala 70:22]

  module MemoryAccess :
    input clock : Clock
    input reset : UInt<1>
    input io_alu_result : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
    input io_reg2_data : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
    input io_memory_read_enable : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
    input io_memory_write_enable : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
    input io_funct3 : UInt<3> @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
    output io_wb_memory_read_data : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
    output io_memory_bundle_address : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
    output io_memory_bundle_write_data : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
    output io_memory_bundle_write_enable : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
    output io_memory_bundle_write_strobe_0 : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
    output io_memory_bundle_write_strobe_1 : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
    output io_memory_bundle_write_strobe_2 : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
    output io_memory_bundle_write_strobe_3 : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]
    input io_memory_bundle_read_data : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 24:14]

    node mem_address_index = bits(io_alu_result, 1, 0) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 35:40]
    node _bytes_0_T = bits(io_memory_bundle_read_data, 7, 0) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 64:23]
    node _bytes_1_T = bits(io_memory_bundle_read_data, 15, 8) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 64:23]
    node _bytes_2_T = bits(io_memory_bundle_read_data, 23, 16) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 64:23]
    node _bytes_3_T = bits(io_memory_bundle_read_data, 31, 24) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 64:23]
    node _half_T = bits(mem_address_index, 1, 1) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 69:37]
    node bytes_3 = _bytes_3_T @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 62:21 64:16]
    node bytes_2 = _bytes_2_T @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 62:21 64:16]
    node _half_T_1 = cat(bytes_3, bytes_2) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 69:45]
    node bytes_1 = _bytes_1_T @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 62:21 64:16]
    node bytes_0 = _bytes_0_T @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 62:21 64:16]
    node _half_T_2 = cat(bytes_1, bytes_0) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 69:70]
    node half = mux(_half_T, _half_T_1, _half_T_2) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 69:19]
    node _GEN_0 = validif(eq(UInt<1>("h0"), mem_address_index), bytes_0) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 84:{65,65}]
    node _GEN_1 = mux(eq(UInt<1>("h1"), mem_address_index), bytes_1, _GEN_0) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 84:{65,65}]
    node _GEN_2 = mux(eq(UInt<2>("h2"), mem_address_index), bytes_2, _GEN_1) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 84:{65,65}]
    node _GEN_3 = mux(eq(UInt<2>("h3"), mem_address_index), bytes_3, _GEN_2) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 84:{65,65}]
    node _bytes_mem_address_index = _GEN_3 @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 84:65]
    node _io_wb_memory_read_data_T = bits(_bytes_mem_address_index, 7, 7) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 84:65]
    node _io_wb_memory_read_data_T_1 = mux(_io_wb_memory_read_data_T, UInt<24>("hffffff"), UInt<24>("h0")) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 84:17]
    node _bytes_mem_address_index_0 = _GEN_3 @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 83:14]
    node _io_wb_memory_read_data_T_2 = cat(_io_wb_memory_read_data_T_1, _bytes_mem_address_index_0) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 83:14]
    node _io_wb_memory_read_data_T_3 = mux(UInt<1>("h0"), UInt<24>("hffffff"), UInt<24>("h0")) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 93:17]
    node _bytes_mem_address_index_1 = _GEN_3 @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 92:14]
    node _io_wb_memory_read_data_T_4 = cat(_io_wb_memory_read_data_T_3, _bytes_mem_address_index_1) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 92:14]
    node _io_wb_memory_read_data_T_5 = bits(half, 15, 15) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 102:69]
    node _io_wb_memory_read_data_T_6 = mux(_io_wb_memory_read_data_T_5, UInt<16>("hffff"), UInt<16>("h0")) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 102:17]
    node _io_wb_memory_read_data_T_7 = cat(_io_wb_memory_read_data_T_6, half) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 101:14]
    node _io_wb_memory_read_data_T_8 = mux(UInt<1>("h0"), UInt<16>("hffff"), UInt<16>("h0")) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 111:17]
    node _io_wb_memory_read_data_T_9 = cat(_io_wb_memory_read_data_T_8, half) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 110:14]
    node _io_wb_memory_read_data_T_10 = eq(UInt<3>("h0"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 77:56]
    node _io_wb_memory_read_data_T_11 = mux(_io_wb_memory_read_data_T_10, _io_wb_memory_read_data_T_2, UInt<1>("h0")) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 77:56]
    node _io_wb_memory_read_data_T_12 = eq(UInt<3>("h4"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 77:56]
    node _io_wb_memory_read_data_T_13 = mux(_io_wb_memory_read_data_T_12, _io_wb_memory_read_data_T_4, _io_wb_memory_read_data_T_11) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 77:56]
    node _io_wb_memory_read_data_T_14 = eq(UInt<3>("h1"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 77:56]
    node _io_wb_memory_read_data_T_15 = mux(_io_wb_memory_read_data_T_14, _io_wb_memory_read_data_T_7, _io_wb_memory_read_data_T_13) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 77:56]
    node _io_wb_memory_read_data_T_16 = eq(UInt<3>("h5"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 77:56]
    node _io_wb_memory_read_data_T_17 = mux(_io_wb_memory_read_data_T_16, _io_wb_memory_read_data_T_9, _io_wb_memory_read_data_T_15) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 77:56]
    node _io_wb_memory_read_data_T_18 = eq(UInt<3>("h2"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 77:56]
    node _io_wb_memory_read_data_T_19 = mux(_io_wb_memory_read_data_T_18, io_memory_bundle_read_data, _io_wb_memory_read_data_T_17) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 77:56]
    node _T = eq(UInt<3>("h0"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23]
    node _writeStrobes_mem_address_index = UInt<1>("h1") @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 160:{41,41}]
    node strobeInit_0 = UInt<1>("h0") @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 149:{31,31}]
    node _GEN_4 = mux(eq(UInt<1>("h0"), mem_address_index), _writeStrobes_mem_address_index, strobeInit_0) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 151:32 160:{41,41}]
    node strobeInit_1 = UInt<1>("h0") @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 149:{31,31}]
    node _GEN_5 = mux(eq(UInt<1>("h1"), mem_address_index), _writeStrobes_mem_address_index, strobeInit_1) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 151:32 160:{41,41}]
    node strobeInit_2 = UInt<1>("h0") @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 149:{31,31}]
    node _GEN_6 = mux(eq(UInt<2>("h2"), mem_address_index), _writeStrobes_mem_address_index, strobeInit_2) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 151:32 160:{41,41}]
    node strobeInit_3 = UInt<1>("h0") @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 149:{31,31}]
    node _GEN_7 = mux(eq(UInt<2>("h3"), mem_address_index), _writeStrobes_mem_address_index, strobeInit_3) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 151:32 160:{41,41}]
    node _writeData_T = bits(io_reg2_data, 7, 0) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 161:26]
    node _writeData_T_1 = shl(mem_address_index, 3) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 161:55]
    node _writeData_T_2 = dshl(_writeData_T, _writeData_T_1) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 161:33]
    node _T_1 = eq(UInt<3>("h1"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23]
    node _T_2 = bits(mem_address_index, 1, 1) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 166:31]
    node _T_3 = eq(_T_2, UInt<1>("h0")) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 166:35]
    node _writeData_T_3 = bits(io_reg2_data, 15, 0) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 171:34]
    node _writeData_T_4 = bits(io_reg2_data, 15, 0) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 177:34]
    node _writeData_T_5 = shl(_writeData_T_4, 16) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 177:42]
    node _GEN_8 = mux(_T_3, UInt<1>("h1"), strobeInit_0) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 166:44 169:27 151:32]
    node _GEN_9 = mux(_T_3, UInt<1>("h1"), strobeInit_1) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 166:44 170:27 151:32]
    node _GEN_10 = mux(_T_3, _writeData_T_3, _writeData_T_5) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 166:44 171:27 177:27]
    node _GEN_11 = mux(_T_3, strobeInit_2, UInt<1>("h1")) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 151:32 166:44 175:27]
    node _GEN_12 = mux(_T_3, strobeInit_3, UInt<1>("h1")) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 151:32 166:44 176:27]
    node _T_4 = eq(UInt<3>("h2"), io_funct3) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23]
    node _WIRE_1_0 = UInt<1>("h1") @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 182:{32,32}]
    node _GEN_13 = mux(_T_4, _WIRE_1_0, strobeInit_0) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23 182:22 151:32]
    node _WIRE_1_1 = UInt<1>("h1") @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 182:{32,32}]
    node _GEN_14 = mux(_T_4, _WIRE_1_1, strobeInit_1) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23 182:22 151:32]
    node _WIRE_1_2 = UInt<1>("h1") @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 182:{32,32}]
    node _GEN_15 = mux(_T_4, _WIRE_1_2, strobeInit_2) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23 182:22 151:32]
    node _WIRE_1_3 = UInt<1>("h1") @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 182:{32,32}]
    node _GEN_16 = mux(_T_4, _WIRE_1_3, strobeInit_3) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23 182:22 151:32]
    node _GEN_17 = mux(_T_4, io_reg2_data, UInt<32>("h0")) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23 183:22 152:35]
    node _GEN_18 = mux(_T_1, _GEN_8, _GEN_13) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23]
    node _GEN_19 = mux(_T_1, _GEN_9, _GEN_14) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23]
    node _GEN_20 = mux(_T_1, _GEN_10, _GEN_17) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23]
    node _GEN_21 = mux(_T_1, _GEN_11, _GEN_15) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23]
    node _GEN_22 = mux(_T_1, _GEN_12, _GEN_16) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23]
    node _GEN_23 = mux(_T, _GEN_4, _GEN_18) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23]
    node _GEN_24 = mux(_T, _GEN_5, _GEN_19) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23]
    node _GEN_25 = mux(_T, _GEN_6, _GEN_21) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23]
    node _GEN_26 = mux(_T, _GEN_7, _GEN_22) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23]
    node _GEN_27 = mux(_T, _writeData_T_2, _GEN_20) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 154:23 161:19]
    node _GEN_28 = mux(io_memory_write_enable, UInt<1>("h1"), UInt<1>("h0")) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 142:38 143:35 37:33]
    node _GEN_29 = mux(io_memory_write_enable, io_alu_result, io_alu_result) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 142:38 144:35 39:33]
    node writeData = bits(_GEN_27, 31, 0) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 152:35]
    node _GEN_30 = mux(io_memory_write_enable, writeData, UInt<1>("h0")) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 142:38 186:35 38:33]
    node writeStrobes_0 = _GEN_23 @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 151:32]
    node _WIRE__0 = UInt<1>("h0") @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 40:{43,43}]
    node _GEN_31 = mux(io_memory_write_enable, writeStrobes_0, _WIRE__0) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 142:38 187:35 40:33]
    node writeStrobes_1 = _GEN_24 @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 151:32]
    node _WIRE__1 = UInt<1>("h0") @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 40:{43,43}]
    node _GEN_32 = mux(io_memory_write_enable, writeStrobes_1, _WIRE__1) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 142:38 187:35 40:33]
    node writeStrobes_2 = _GEN_25 @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 151:32]
    node _WIRE__2 = UInt<1>("h0") @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 40:{43,43}]
    node _GEN_33 = mux(io_memory_write_enable, writeStrobes_2, _WIRE__2) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 142:38 187:35 40:33]
    node writeStrobes_3 = _GEN_26 @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 151:32]
    node _WIRE__3 = UInt<1>("h0") @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 40:{43,43}]
    node _GEN_34 = mux(io_memory_write_enable, writeStrobes_3, _WIRE__3) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 142:38 187:35 40:33]
    node _GEN_35 = mux(io_memory_read_enable, _io_wb_memory_read_data_T_19, UInt<1>("h0")) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 59:31 77:28 41:33]
    node _GEN_36 = mux(io_memory_read_enable, UInt<1>("h0"), _GEN_28) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 59:31 37:33]
    node _GEN_37 = mux(io_memory_read_enable, io_alu_result, _GEN_29) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 59:31 39:33]
    node _GEN_38 = mux(io_memory_read_enable, UInt<1>("h0"), _GEN_30) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 59:31 38:33]
    node _GEN_39 = mux(io_memory_read_enable, _WIRE__0, _GEN_31) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 59:31 40:33]
    node _GEN_40 = mux(io_memory_read_enable, _WIRE__1, _GEN_32) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 59:31 40:33]
    node _GEN_41 = mux(io_memory_read_enable, _WIRE__2, _GEN_33) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 59:31 40:33]
    node _GEN_42 = mux(io_memory_read_enable, _WIRE__3, _GEN_34) @[1-single-cycle/src/main/scala/riscv/core/MemoryAccess.scala 59:31 40:33]
    io_wb_memory_read_data <= _GEN_35
    io_memory_bundle_address <= _GEN_37
    io_memory_bundle_write_data <= _GEN_38
    io_memory_bundle_write_enable <= _GEN_36
    io_memory_bundle_write_strobe_0 <= _GEN_39
    io_memory_bundle_write_strobe_1 <= _GEN_40
    io_memory_bundle_write_strobe_2 <= _GEN_41
    io_memory_bundle_write_strobe_3 <= _GEN_42

  module WriteBack :
    input clock : Clock
    input reset : UInt<1>
    input io_instruction_address : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/WriteBack.scala 21:14]
    input io_alu_result : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/WriteBack.scala 21:14]
    input io_memory_read_data : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/WriteBack.scala 21:14]
    input io_regs_write_source : UInt<2> @[1-single-cycle/src/main/scala/riscv/core/WriteBack.scala 21:14]
    output io_regs_write_data : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/WriteBack.scala 21:14]

    node _io_regs_write_data_T = add(io_instruction_address, UInt<3>("h4")) @[1-single-cycle/src/main/scala/riscv/core/WriteBack.scala 49:72]
    node _io_regs_write_data_T_1 = tail(_io_regs_write_data_T, 1) @[1-single-cycle/src/main/scala/riscv/core/WriteBack.scala 49:72]
    node _io_regs_write_data_T_2 = eq(UInt<2>("h1"), io_regs_write_source) @[1-single-cycle/src/main/scala/riscv/core/WriteBack.scala 46:71]
    node _io_regs_write_data_T_3 = mux(_io_regs_write_data_T_2, io_memory_read_data, io_alu_result) @[1-single-cycle/src/main/scala/riscv/core/WriteBack.scala 46:71]
    node _io_regs_write_data_T_4 = eq(UInt<2>("h2"), io_regs_write_source) @[1-single-cycle/src/main/scala/riscv/core/WriteBack.scala 46:71]
    node _io_regs_write_data_T_5 = mux(_io_regs_write_data_T_4, _io_regs_write_data_T_1, _io_regs_write_data_T_3) @[1-single-cycle/src/main/scala/riscv/core/WriteBack.scala 46:71]
    io_regs_write_data <= _io_regs_write_data_T_5 @[1-single-cycle/src/main/scala/riscv/core/WriteBack.scala 46:22]

  module CPU :
    input clock : Clock
    input reset : UInt<1>
    output io_instruction_address : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
    input io_instruction : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
    output io_memory_bundle_address : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
    output io_memory_bundle_write_data : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
    output io_memory_bundle_write_enable : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
    output io_memory_bundle_write_strobe_0 : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
    output io_memory_bundle_write_strobe_1 : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
    output io_memory_bundle_write_strobe_2 : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
    output io_memory_bundle_write_strobe_3 : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
    input io_memory_bundle_read_data : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
    input io_instruction_valid : UInt<1> @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
    output io_deviceSelect : UInt<3> @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
    input io_debug_read_address : UInt<5> @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]
    output io_debug_read_data : UInt<32> @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 45:14]

    inst regs of RegisterFile @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 48:26]
    inst inst_fetch of InstructionFetch @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 49:26]
    inst id of InstructionDecode @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 50:26]
    inst ex of Execute @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 51:26]
    inst mem of MemoryAccess @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 52:26]
    inst wb of WriteBack @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 53:26]
    node _io_deviceSelect_T = bits(mem.io_memory_bundle_address, 31, 29) @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 56:13]
    node _mem_io_funct3_T = bits(inst_fetch.io_instruction, 14, 12) @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 87:58]
    node _io_memory_bundle_address_T = bits(mem.io_memory_bundle_address, 28, 0) @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 91:33]
    node _io_memory_bundle_address_T_1 = cat(UInt<3>("h0"), _io_memory_bundle_address_T) @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 89:34]
    io_instruction_address <= inst_fetch.io_instruction_address @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 62:39]
    io_memory_bundle_address <= _io_memory_bundle_address_T_1 @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 89:28]
    io_memory_bundle_write_data <= mem.io_memory_bundle_write_data @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 94:34]
    io_memory_bundle_write_enable <= mem.io_memory_bundle_write_enable @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 93:34]
    io_memory_bundle_write_strobe_0 <= mem.io_memory_bundle_write_strobe_0 @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 95:34]
    io_memory_bundle_write_strobe_1 <= mem.io_memory_bundle_write_strobe_1 @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 95:34]
    io_memory_bundle_write_strobe_2 <= mem.io_memory_bundle_write_strobe_2 @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 95:34]
    io_memory_bundle_write_strobe_3 <= mem.io_memory_bundle_write_strobe_3 @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 95:34]
    io_deviceSelect <= _io_deviceSelect_T @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 55:19]
    io_debug_read_data <= regs.io_debug_read_data @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 71:30]
    regs.clock <= clock
    regs.reset <= reset
    regs.io_write_enable <= id.io_reg_write_enable @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 64:25]
    regs.io_write_address <= id.io_reg_write_address @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 65:25]
    regs.io_write_data <= wb.io_regs_write_data @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 66:25]
    regs.io_read_address1 <= id.io_regs_reg1_read_address @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 67:25]
    regs.io_read_address2 <= id.io_regs_reg2_read_address @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 68:25]
    regs.io_debug_read_address <= io_debug_read_address @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 70:30]
    inst_fetch.clock <= clock
    inst_fetch.reset <= reset
    inst_fetch.io_jump_flag_id <= ex.io_if_jump_flag @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 59:39]
    inst_fetch.io_jump_address_id <= ex.io_if_jump_address @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 58:39]
    inst_fetch.io_instruction_read_data <= io_instruction @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 61:39]
    inst_fetch.io_instruction_valid <= io_instruction_valid @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 60:39]
    id.clock <= clock
    id.reset <= reset
    id.io_instruction <= inst_fetch.io_instruction @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 73:21]
    ex.clock <= clock
    ex.reset <= reset
    ex.io_instruction <= inst_fetch.io_instruction @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 78:29]
    ex.io_instruction_address <= inst_fetch.io_instruction_address @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 79:29]
    ex.io_reg1_data <= regs.io_read_data1 @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 80:29]
    ex.io_reg2_data <= regs.io_read_data2 @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 81:29]
    ex.io_immediate <= id.io_ex_immediate @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 77:29]
    ex.io_aluop1_source <= id.io_ex_aluop1_source @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 75:29]
    ex.io_aluop2_source <= id.io_ex_aluop2_source @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 76:29]
    mem.clock <= clock
    mem.reset <= reset
    mem.io_alu_result <= ex.io_mem_alu_result @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 83:30]
    mem.io_reg2_data <= regs.io_read_data2 @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 84:30]
    mem.io_memory_read_enable <= id.io_memory_read_enable @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 85:30]
    mem.io_memory_write_enable <= id.io_memory_write_enable @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 86:30]
    mem.io_funct3 <= _mem_io_funct3_T @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 87:30]
    mem.io_memory_bundle_read_data <= io_memory_bundle_read_data @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 96:34]
    wb.clock <= clock
    wb.reset <= reset
    wb.io_instruction_address <= inst_fetch.io_instruction_address @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 98:29]
    wb.io_alu_result <= ex.io_mem_alu_result @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 99:29]
    wb.io_memory_read_data <= mem.io_wb_memory_read_data @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 100:29]
    wb.io_regs_write_source <= id.io_wb_reg_write_source @[1-single-cycle/src/main/scala/riscv/core/CPU.scala 101:29]

  module TestTopModule :
    input clock : Clock
    input reset : UInt<1>
    input io_mem_debug_read_address : UInt<32> @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 22:14]
    input io_regs_debug_read_address : UInt<5> @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 22:14]
    output io_regs_debug_read_data : UInt<32> @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 22:14]
    output io_mem_debug_read_data : UInt<32> @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 22:14]

    inst mem of Memory @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 29:31]
    inst instruction_rom of InstructionROM @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 30:31]
    inst rom_loader of ROMLoader @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 31:31]
    inst cpu of CPU @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 45:21]
    reg CPU_clkdiv : UInt<2>, clock with :
      reset => (UInt<1>("h0"), CPU_clkdiv) @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 37:27]
    node _CPU_next_T = eq(CPU_clkdiv, UInt<2>("h3")) @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 40:32]
    node _CPU_next_T_1 = add(CPU_clkdiv, UInt<1>("h1")) @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 40:57]
    node _CPU_next_T_2 = tail(_CPU_next_T_1, 1) @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 40:57]
    node _CPU_next_T_3 = mux(_CPU_next_T, UInt<1>("h0"), _CPU_next_T_2) @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 40:20]
    node _CPU_tick_T = eq(CPU_clkdiv, UInt<1>("h0")) @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 41:28]
    node CPU_tick = _CPU_tick_T @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 38:24 41:14]
    node _T = asClock(CPU_tick) @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 44:22]
    node _T_1 = eq(rom_loader.io_load_finished, UInt<1>("h0")) @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 51:10]
    node _GEN_0 = mux(_T_1, rom_loader.io_bundle_address, cpu.io_memory_bundle_address) @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 51:40 52:28 56:28]
    node _GEN_1 = mux(_T_1, rom_loader.io_bundle_write_data, cpu.io_memory_bundle_write_data) @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 51:40 52:28 56:28]
    node _GEN_2 = mux(_T_1, rom_loader.io_bundle_write_enable, cpu.io_memory_bundle_write_enable) @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 51:40 52:28 56:28]
    node _GEN_3 = mux(_T_1, rom_loader.io_bundle_write_strobe_0, cpu.io_memory_bundle_write_strobe_0) @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 51:40 52:28 56:28]
    node _GEN_4 = mux(_T_1, rom_loader.io_bundle_write_strobe_1, cpu.io_memory_bundle_write_strobe_1) @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 51:40 52:28 56:28]
    node _GEN_5 = mux(_T_1, rom_loader.io_bundle_write_strobe_2, cpu.io_memory_bundle_write_strobe_2) @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 51:40 52:28 56:28]
    node _GEN_6 = mux(_T_1, rom_loader.io_bundle_write_strobe_3, cpu.io_memory_bundle_write_strobe_3) @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 51:40 52:28 56:28]
    node _GEN_7 = mux(_T_1, mem.io_bundle_read_data, UInt<1>("h0")) @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 51:40 52:28 55:38]
    node _GEN_8 = mux(_T_1, UInt<1>("h0"), mem.io_bundle_read_data) @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 51:40 53:38 56:28]
    node CPU_next = _CPU_next_T_3 @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 39:24 40:14]
    io_regs_debug_read_data <= cpu.io_debug_read_data @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 60:31]
    io_mem_debug_read_data <= mem.io_debug_read_data @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 64:29]
    mem.clock <= clock
    mem.reset <= reset
    mem.io_bundle_address <= _GEN_0
    mem.io_bundle_write_data <= _GEN_1
    mem.io_bundle_write_enable <= _GEN_2
    mem.io_bundle_write_strobe_0 <= _GEN_3
    mem.io_bundle_write_strobe_1 <= _GEN_4
    mem.io_bundle_write_strobe_2 <= _GEN_5
    mem.io_bundle_write_strobe_3 <= _GEN_6
    mem.io_instruction_address <= cpu.io_instruction_address @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 48:32]
    mem.io_debug_read_address <= io_mem_debug_read_address @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 63:29]
    instruction_rom.clock <= clock
    instruction_rom.reset <= reset
    instruction_rom.io_address <= rom_loader.io_rom_address @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 35:30]
    rom_loader.clock <= clock
    rom_loader.reset <= reset
    rom_loader.io_bundle_read_data <= _GEN_7
    rom_loader.io_rom_data <= instruction_rom.io_data @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 33:30]
    rom_loader.io_load_address <= UInt<32>("h1000") @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 34:30]
    CPU_clkdiv <= mux(reset, UInt<1>("h0"), CPU_next) @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 37:{27,27} 42:14]
    cpu.clock <= _T
    cpu.reset <= reset
    cpu.io_instruction <= mem.io_instruction @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 49:32]
    cpu.io_memory_bundle_read_data <= _GEN_8
    cpu.io_instruction_valid <= rom_loader.io_load_finished @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 47:32]
    cpu.io_debug_read_address <= io_regs_debug_read_address @[1-single-cycle/src/test/scala/riscv/singlecycle/CPUTest.scala 59:31]
