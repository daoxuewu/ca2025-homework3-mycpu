// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VTop__Syms.h"


VL_ATTR_COLD void VTop___024root__trace_init_sub__TOP__0(VTop___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root__trace_init_sub__TOP__0\n"); );
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->declBit(c+76,0,"clock",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+77,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+78,0,"io_instruction_address",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+79,0,"io_instruction",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+80,0,"io_memory_bundle_address",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+81,0,"io_memory_bundle_write_data",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+82,0,"io_memory_bundle_write_enable",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+83,0,"io_memory_bundle_write_strobe_0",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+84,0,"io_memory_bundle_write_strobe_1",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+85,0,"io_memory_bundle_write_strobe_2",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+86,0,"io_memory_bundle_write_strobe_3",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+87,0,"io_memory_bundle_read_data",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+88,0,"io_instruction_valid",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+89,0,"io_deviceSelect",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+90,0,"io_debug_read_address",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+91,0,"io_debug_read_data",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->pushPrefix("Top", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+76,0,"clock",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+77,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+78,0,"io_instruction_address",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+79,0,"io_instruction",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+80,0,"io_memory_bundle_address",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+81,0,"io_memory_bundle_write_data",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+82,0,"io_memory_bundle_write_enable",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+83,0,"io_memory_bundle_write_strobe_0",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+84,0,"io_memory_bundle_write_strobe_1",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+85,0,"io_memory_bundle_write_strobe_2",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+86,0,"io_memory_bundle_write_strobe_3",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+87,0,"io_memory_bundle_read_data",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+88,0,"io_instruction_valid",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+89,0,"io_deviceSelect",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+90,0,"io_debug_read_address",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+91,0,"io_debug_read_data",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+76,0,"cpu_clock",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+77,0,"cpu_reset",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+78,0,"cpu_io_instruction_address",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+79,0,"cpu_io_instruction",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+80,0,"cpu_io_memory_bundle_address",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+81,0,"cpu_io_memory_bundle_write_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+82,0,"cpu_io_memory_bundle_write_enable",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+83,0,"cpu_io_memory_bundle_write_strobe_0",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+84,0,"cpu_io_memory_bundle_write_strobe_1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+85,0,"cpu_io_memory_bundle_write_strobe_2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+86,0,"cpu_io_memory_bundle_write_strobe_3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+87,0,"cpu_io_memory_bundle_read_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+88,0,"cpu_io_instruction_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+89,0,"cpu_io_deviceSelect",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+90,0,"cpu_io_debug_read_address",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+91,0,"cpu_io_debug_read_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->pushPrefix("cpu", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+76,0,"clock",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+77,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+78,0,"io_instruction_address",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+79,0,"io_instruction",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+80,0,"io_memory_bundle_address",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+81,0,"io_memory_bundle_write_data",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+82,0,"io_memory_bundle_write_enable",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+83,0,"io_memory_bundle_write_strobe_0",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+84,0,"io_memory_bundle_write_strobe_1",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+85,0,"io_memory_bundle_write_strobe_2",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+86,0,"io_memory_bundle_write_strobe_3",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+87,0,"io_memory_bundle_read_data",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+88,0,"io_instruction_valid",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+89,0,"io_deviceSelect",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+90,0,"io_debug_read_address",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+91,0,"io_debug_read_data",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+76,0,"regs_clock",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+77,0,"regs_reset",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"regs_io_write_enable",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+2,0,"regs_io_write_address",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+24,0,"regs_io_write_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+3,0,"regs_io_read_address1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+4,0,"regs_io_read_address2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+25,0,"regs_io_read_data1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+26,0,"regs_io_read_data2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+90,0,"regs_io_debug_read_address",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+91,0,"regs_io_debug_read_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+76,0,"inst_fetch_clock",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+77,0,"inst_fetch_reset",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+27,0,"inst_fetch_io_jump_flag_id",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+28,0,"inst_fetch_io_jump_address_id",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+79,0,"inst_fetch_io_instruction_read_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+88,0,"inst_fetch_io_instruction_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+78,0,"inst_fetch_io_instruction_address",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+92,0,"inst_fetch_io_instruction",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+92,0,"id_io_instruction",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+3,0,"id_io_regs_reg1_read_address",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+4,0,"id_io_regs_reg2_read_address",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+5,0,"id_io_ex_immediate",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+6,0,"id_io_ex_aluop1_source",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+7,0,"id_io_ex_aluop2_source",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+8,0,"id_io_memory_read_enable",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"id_io_memory_write_enable",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+10,0,"id_io_wb_reg_write_source",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBit(c+1,0,"id_io_reg_write_enable",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+2,0,"id_io_reg_write_address",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+92,0,"ex_io_instruction",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+78,0,"ex_io_instruction_address",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+25,0,"ex_io_reg1_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+26,0,"ex_io_reg2_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+5,0,"ex_io_immediate",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+6,0,"ex_io_aluop1_source",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+7,0,"ex_io_aluop2_source",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+29,0,"ex_io_mem_alu_result",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+27,0,"ex_io_if_jump_flag",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+28,0,"ex_io_if_jump_address",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+29,0,"mem_io_alu_result",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+26,0,"mem_io_reg2_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+8,0,"mem_io_memory_read_enable",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"mem_io_memory_write_enable",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+11,0,"mem_io_funct3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+93,0,"mem_io_wb_memory_read_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+29,0,"mem_io_memory_bundle_address",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+81,0,"mem_io_memory_bundle_write_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+82,0,"mem_io_memory_bundle_write_enable",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+83,0,"mem_io_memory_bundle_write_strobe_0",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+84,0,"mem_io_memory_bundle_write_strobe_1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+85,0,"mem_io_memory_bundle_write_strobe_2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+86,0,"mem_io_memory_bundle_write_strobe_3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+87,0,"mem_io_memory_bundle_read_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+78,0,"wb_io_instruction_address",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+29,0,"wb_io_alu_result",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+93,0,"wb_io_memory_read_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+10,0,"wb_io_regs_write_source",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+24,0,"wb_io_regs_write_data",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->pushPrefix("ex", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+92,0,"io_instruction",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+78,0,"io_instruction_address",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+25,0,"io_reg1_data",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+26,0,"io_reg2_data",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+5,0,"io_immediate",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+6,0,"io_aluop1_source",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+7,0,"io_aluop2_source",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+29,0,"io_mem_alu_result",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+27,0,"io_if_jump_flag",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+28,0,"io_if_jump_address",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+12,0,"alu_io_func",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+30,0,"alu_io_op1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+31,0,"alu_io_op2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+29,0,"alu_io_result",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+13,0,"alu_ctrl_io_opcode",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+11,0,"alu_ctrl_io_funct3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+94,0,"alu_ctrl_io_funct7",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+12,0,"alu_ctrl_io_alu_funct",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+13,0,"opcode",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+11,0,"funct3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBit(c+32,0,"branchCondition",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+14,0,"isBranch",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+15,0,"isJal",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+16,0,"isJalr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+33,0,"branchTarget",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+34,0,"jalrSum",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+35,0,"jalrTarget",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+36,0,"branchTaken",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("alu", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+12,0,"io_func",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+30,0,"io_op1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+31,0,"io_op2",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+29,0,"io_result",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->popPrefix();
    tracep->pushPrefix("alu_ctrl", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+13,0,"io_opcode",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+11,0,"io_funct3",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+94,0,"io_funct7",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+12,0,"io_alu_funct",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->pushPrefix("id", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+92,0,"io_instruction",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+3,0,"io_regs_reg1_read_address",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+4,0,"io_regs_reg2_read_address",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+5,0,"io_ex_immediate",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+6,0,"io_ex_aluop1_source",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+7,0,"io_ex_aluop2_source",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+8,0,"io_memory_read_enable",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"io_memory_write_enable",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+10,0,"io_wb_reg_write_source",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBit(c+1,0,"io_reg_write_enable",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+2,0,"io_reg_write_address",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+13,0,"opcode",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 6,0);
    tracep->declBus(c+95,0,"rs1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+96,0,"rs2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+2,0,"rd",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBit(c+8,0,"isLoad",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"isStore",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+17,0,"isOpImm",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+18,0,"isOp",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+19,0,"isLui",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+20,0,"isAuipc",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+15,0,"isJal",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+16,0,"isJalr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+14,0,"isBranch",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+21,0,"usesRs1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+22,0,"usesRs2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+23,0,"immKind",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+97,0,"immI",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+98,0,"immS",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+99,0,"immB",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+100,0,"immU",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+101,0,"immJ",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->popPrefix();
    tracep->pushPrefix("inst_fetch", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+76,0,"clock",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+77,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+27,0,"io_jump_flag_id",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+28,0,"io_jump_address_id",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+79,0,"io_instruction_read_data",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+88,0,"io_instruction_valid",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+78,0,"io_instruction_address",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+92,0,"io_instruction",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+44,0,"pc",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->popPrefix();
    tracep->pushPrefix("mem", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+29,0,"io_alu_result",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+26,0,"io_reg2_data",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+8,0,"io_memory_read_enable",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"io_memory_write_enable",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+11,0,"io_funct3",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+93,0,"io_wb_memory_read_data",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+29,0,"io_memory_bundle_address",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+81,0,"io_memory_bundle_write_data",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+82,0,"io_memory_bundle_write_enable",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+83,0,"io_memory_bundle_write_strobe_0",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+84,0,"io_memory_bundle_write_strobe_1",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+85,0,"io_memory_bundle_write_strobe_2",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+86,0,"io_memory_bundle_write_strobe_3",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+87,0,"io_memory_bundle_read_data",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+37,0,"mem_address_index",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+102,0,"bytes_0",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+103,0,"bytes_1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+104,0,"bytes_2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+105,0,"bytes_3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+38,0,"half",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBit(c+39,0,"writeStrobes_0",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+40,0,"writeStrobes_1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+41,0,"writeStrobes_2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+42,0,"writeStrobes_3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+43,0,"writeData",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->popPrefix();
    tracep->pushPrefix("regs", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+76,0,"clock",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+77,0,"reset",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"io_write_enable",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+2,0,"io_write_address",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+24,0,"io_write_data",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+3,0,"io_read_address1",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+4,0,"io_read_address2",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+25,0,"io_read_data1",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+26,0,"io_read_data2",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+90,0,"io_debug_read_address",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+91,0,"io_debug_read_data",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+45,0,"registers_0",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+46,0,"registers_1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+47,0,"registers_2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+48,0,"registers_3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+49,0,"registers_4",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+50,0,"registers_5",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+51,0,"registers_6",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+52,0,"registers_7",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+53,0,"registers_8",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+54,0,"registers_9",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+55,0,"registers_10",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+56,0,"registers_11",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+57,0,"registers_12",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+58,0,"registers_13",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+59,0,"registers_14",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+60,0,"registers_15",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+61,0,"registers_16",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+62,0,"registers_17",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+63,0,"registers_18",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+64,0,"registers_19",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+65,0,"registers_20",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+66,0,"registers_21",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+67,0,"registers_22",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+68,0,"registers_23",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+69,0,"registers_24",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+70,0,"registers_25",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+71,0,"registers_26",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+72,0,"registers_27",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+73,0,"registers_28",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+74,0,"registers_29",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+75,0,"registers_30",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->popPrefix();
    tracep->pushPrefix("wb", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+78,0,"io_instruction_address",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+29,0,"io_alu_result",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+93,0,"io_memory_read_data",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+10,0,"io_regs_write_source",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+24,0,"io_regs_write_data",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->popPrefix();
}

VL_ATTR_COLD void VTop___024root__trace_init_top(VTop___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root__trace_init_top\n"); );
    // Body
    VTop___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void VTop___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
VL_ATTR_COLD void VTop___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void VTop___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void VTop___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void VTop___024root__trace_register(VTop___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root__trace_register\n"); );
    // Body
    tracep->addConstCb(&VTop___024root__trace_const_0, 0U, vlSelf);
    tracep->addFullCb(&VTop___024root__trace_full_0, 0U, vlSelf);
    tracep->addChgCb(&VTop___024root__trace_chg_0, 0U, vlSelf);
    tracep->addCleanupCb(&VTop___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void VTop___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root__trace_const_0\n"); );
    // Init
    VTop___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<VTop___024root*>(voidSelf);
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
}

VL_ATTR_COLD void VTop___024root__trace_full_0_sub_0(VTop___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void VTop___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root__trace_full_0\n"); );
    // Init
    VTop___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<VTop___024root*>(voidSelf);
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    VTop___024root__trace_full_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void VTop___024root__trace_full_0_sub_0(VTop___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root__trace_full_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullBit(oldp+1,(vlSelf->Top__DOT__cpu__DOT__regs_io_write_enable));
    bufp->fullCData(oldp+2,(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd),5);
    bufp->fullCData(oldp+3,(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1),5);
    bufp->fullCData(oldp+4,(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2),5);
    bufp->fullIData(oldp+5,(vlSelf->Top__DOT__cpu__DOT__id_io_ex_immediate),32);
    bufp->fullBit(oldp+6,(((0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                           | ((0x17U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                              | (0x6fU == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))))));
    bufp->fullBit(oldp+7,(((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT___usesRs1_T_1) 
                           | ((0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                              | (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h55278dfd__0)))));
    bufp->fullBit(oldp+8,((3U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
    bufp->fullBit(oldp+9,((0x23U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
    bufp->fullCData(oldp+10,(vlSelf->Top__DOT__cpu__DOT__id_io_wb_reg_write_source),2);
    bufp->fullCData(oldp+11,(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3),3);
    bufp->fullCData(oldp+12,(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_io_func),4);
    bufp->fullCData(oldp+13,(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode),7);
    bufp->fullBit(oldp+14,((0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
    bufp->fullBit(oldp+15,((0x6fU == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
    bufp->fullBit(oldp+16,((0x67U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
    bufp->fullBit(oldp+17,((0x13U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
    bufp->fullBit(oldp+18,((0x33U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
    bufp->fullBit(oldp+19,((0x37U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
    bufp->fullBit(oldp+20,((0x17U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
    bufp->fullBit(oldp+21,(((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT___usesRs1_T_1) 
                            | ((0x33U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                               | ((0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                                  | (0x67U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)))))));
    bufp->fullBit(oldp+22,(((0x23U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                            | ((0x33U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                               | (0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))))));
    bufp->fullCData(oldp+23,(vlSelf->Top__DOT__cpu__DOT__id__DOT__immKind),3);
    bufp->fullIData(oldp+24,(vlSelf->Top__DOT__cpu__DOT__regs_io_write_data),32);
    bufp->fullIData(oldp+25,(vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1),32);
    bufp->fullIData(oldp+26,(vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2),32);
    bufp->fullBit(oldp+27,((((0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                             & ((7U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                 ? (vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 
                                    >= vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                 : ((6U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                     ? (vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 
                                        < vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                     : ((5U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                         ? VL_GTES_III(32, vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1, vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                         : ((4U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                             ? VL_LTS_III(32, vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1, vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                             : ((1U 
                                                 == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                                 ? 
                                                (vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 
                                                 != vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                                 : 
                                                ((0U 
                                                  == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3)) 
                                                 & (vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 
                                                    == vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)))))))) 
                            | (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_ha77ee14f__0))));
    bufp->fullIData(oldp+28,(((0x67U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))
                               ? (0xfffffffeU & (vlSelf->Top__DOT__cpu__DOT__id_io_ex_immediate 
                                                 + vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1))
                               : (vlSelf->Top__DOT__cpu__DOT__id_io_ex_immediate 
                                  + vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT__pc))),32);
    bufp->fullIData(oldp+29,((IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9)),32);
    bufp->fullIData(oldp+30,(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_6),32);
    bufp->fullIData(oldp+31,(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_7),32);
    bufp->fullBit(oldp+32,(((7U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                             ? (vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 
                                >= vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                             : ((6U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                 ? (vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 
                                    < vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                 : ((5U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                     ? VL_GTES_III(32, vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1, vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                     : ((4U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                         ? VL_LTS_III(32, vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1, vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                         : ((1U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                             ? (vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 
                                                != vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                             : ((0U 
                                                 == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3)) 
                                                & (vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 
                                                   == vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)))))))));
    bufp->fullIData(oldp+33,((vlSelf->Top__DOT__cpu__DOT__id_io_ex_immediate 
                              + vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT__pc)),32);
    bufp->fullIData(oldp+34,((vlSelf->Top__DOT__cpu__DOT__id_io_ex_immediate 
                              + vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1)),32);
    bufp->fullIData(oldp+35,((0xfffffffeU & (vlSelf->Top__DOT__cpu__DOT__id_io_ex_immediate 
                                             + vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1))),32);
    bufp->fullBit(oldp+36,(((0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                            & ((7U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                ? (vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 
                                   >= vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                : ((6U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                    ? (vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 
                                       < vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                    : ((5U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                        ? VL_GTES_III(32, vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1, vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                        : ((4U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                            ? VL_LTS_III(32, vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1, vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                            : ((1U 
                                                == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                                ? (vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 
                                                   != vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                                : (
                                                   (0U 
                                                    == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3)) 
                                                   & (vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 
                                                      == vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2))))))))));
    bufp->fullCData(oldp+37,((3U & (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9))),2);
    bufp->fullSData(oldp+38,(vlSelf->Top__DOT__cpu__DOT__mem__DOT__half),16);
    bufp->fullBit(oldp+39,(((0U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                             ? (0U == (3U & (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9)))
                             : (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_18))));
    bufp->fullBit(oldp+40,(((0U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                             ? (1U == (3U & (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9)))
                             : (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_18))));
    bufp->fullBit(oldp+41,(((0U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                             ? (2U == (3U & (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9)))
                             : (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_21))));
    bufp->fullBit(oldp+42,(((0U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                             ? (3U == (3U & (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9)))
                             : (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_21))));
    bufp->fullIData(oldp+43,((IData)((0x7fffffffffULL 
                                      & ((0U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                          ? ((QData)((IData)(
                                                             ((0U 
                                                               == (IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2))
                                                               ? 0U
                                                               : 
                                                              (0xffU 
                                                               & vlSelf->Top__DOT__cpu__DOT__regs__DOT___GEN_154)))) 
                                             << (0x18U 
                                                 & ((IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9) 
                                                    << 3U)))
                                          : (QData)((IData)(
                                                            ((1U 
                                                              == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                                              ? 
                                                             ((1U 
                                                               & (IData)(
                                                                         (vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9 
                                                                          >> 1U)))
                                                               ? 
                                                              VL_SHIFTL_III(32,32,32, vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2, 0x10U)
                                                               : 
                                                              ((0U 
                                                                == (IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2))
                                                                ? 0U
                                                                : 
                                                               (0xffffU 
                                                                & vlSelf->Top__DOT__cpu__DOT__regs__DOT___GEN_154)))
                                                              : 
                                                             ((2U 
                                                               == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                                               ? vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2
                                                               : 0U)))))))),32);
    bufp->fullIData(oldp+44,(vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT__pc),32);
    bufp->fullIData(oldp+45,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_0),32);
    bufp->fullIData(oldp+46,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_1),32);
    bufp->fullIData(oldp+47,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_2),32);
    bufp->fullIData(oldp+48,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_3),32);
    bufp->fullIData(oldp+49,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_4),32);
    bufp->fullIData(oldp+50,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_5),32);
    bufp->fullIData(oldp+51,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_6),32);
    bufp->fullIData(oldp+52,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_7),32);
    bufp->fullIData(oldp+53,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_8),32);
    bufp->fullIData(oldp+54,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_9),32);
    bufp->fullIData(oldp+55,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_10),32);
    bufp->fullIData(oldp+56,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_11),32);
    bufp->fullIData(oldp+57,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_12),32);
    bufp->fullIData(oldp+58,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_13),32);
    bufp->fullIData(oldp+59,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_14),32);
    bufp->fullIData(oldp+60,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_15),32);
    bufp->fullIData(oldp+61,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_16),32);
    bufp->fullIData(oldp+62,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_17),32);
    bufp->fullIData(oldp+63,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_18),32);
    bufp->fullIData(oldp+64,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_19),32);
    bufp->fullIData(oldp+65,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_20),32);
    bufp->fullIData(oldp+66,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_21),32);
    bufp->fullIData(oldp+67,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_22),32);
    bufp->fullIData(oldp+68,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_23),32);
    bufp->fullIData(oldp+69,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_24),32);
    bufp->fullIData(oldp+70,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_25),32);
    bufp->fullIData(oldp+71,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_26),32);
    bufp->fullIData(oldp+72,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_27),32);
    bufp->fullIData(oldp+73,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_28),32);
    bufp->fullIData(oldp+74,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_29),32);
    bufp->fullIData(oldp+75,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_30),32);
    bufp->fullBit(oldp+76,(vlSelf->clock));
    bufp->fullBit(oldp+77,(vlSelf->reset));
    bufp->fullIData(oldp+78,(vlSelf->io_instruction_address),32);
    bufp->fullIData(oldp+79,(vlSelf->io_instruction),32);
    bufp->fullIData(oldp+80,(vlSelf->io_memory_bundle_address),32);
    bufp->fullIData(oldp+81,(vlSelf->io_memory_bundle_write_data),32);
    bufp->fullBit(oldp+82,(vlSelf->io_memory_bundle_write_enable));
    bufp->fullBit(oldp+83,(vlSelf->io_memory_bundle_write_strobe_0));
    bufp->fullBit(oldp+84,(vlSelf->io_memory_bundle_write_strobe_1));
    bufp->fullBit(oldp+85,(vlSelf->io_memory_bundle_write_strobe_2));
    bufp->fullBit(oldp+86,(vlSelf->io_memory_bundle_write_strobe_3));
    bufp->fullIData(oldp+87,(vlSelf->io_memory_bundle_read_data),32);
    bufp->fullBit(oldp+88,(vlSelf->io_instruction_valid));
    bufp->fullCData(oldp+89,(vlSelf->io_deviceSelect),3);
    bufp->fullCData(oldp+90,(vlSelf->io_debug_read_address),5);
    bufp->fullIData(oldp+91,(vlSelf->io_debug_read_data),32);
    bufp->fullIData(oldp+92,(((IData)(vlSelf->io_instruction_valid)
                               ? vlSelf->io_instruction
                               : 0x13U)),32);
    bufp->fullIData(oldp+93,(((3U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))
                               ? ((2U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                   ? vlSelf->io_memory_bundle_read_data
                                   : ((5U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                       ? (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT__half)
                                       : ((1U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                           ? ((((0x8000U 
                                                 & (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT__half))
                                                 ? 0xffffU
                                                 : 0U) 
                                               << 0x10U) 
                                              | (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT__half))
                                           : ((4U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                               ? (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_3)
                                               : ((0U 
                                                   == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                                   ? 
                                                  ((((0x80U 
                                                      & (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_3))
                                                      ? 0xffffffU
                                                      : 0U) 
                                                    << 8U) 
                                                   | (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_3))
                                                   : 0U)))))
                               : 0U)),32);
    bufp->fullCData(oldp+94,(((IData)(vlSelf->io_instruction_valid)
                               ? (vlSelf->io_instruction 
                                  >> 0x19U) : 0U)),7);
    bufp->fullCData(oldp+95,(((IData)(vlSelf->io_instruction_valid)
                               ? (0x1fU & (vlSelf->io_instruction 
                                           >> 0xfU))
                               : 0U)),5);
    bufp->fullCData(oldp+96,(((IData)(vlSelf->io_instruction_valid)
                               ? (0x1fU & (vlSelf->io_instruction 
                                           >> 0x14U))
                               : 0U)),5);
    bufp->fullIData(oldp+97,(((((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h61009027__0)
                                 ? 0xfffffU : 0U) << 0xcU) 
                              | ((IData)(vlSelf->io_instruction_valid)
                                  ? (vlSelf->io_instruction 
                                     >> 0x14U) : 0U))),32);
    bufp->fullIData(oldp+98,(((((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h61009027__0)
                                 ? 0xfffffU : 0U) << 0xcU) 
                              | ((((IData)(vlSelf->io_instruction_valid)
                                    ? (vlSelf->io_instruction 
                                       >> 0x19U) : 0U) 
                                  << 5U) | (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd)))),32);
    bufp->fullIData(oldp+99,(((((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h61009027__0)
                                 ? 0x7ffffU : 0U) << 0xdU) 
                              | (((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h61009027__0) 
                                  << 0xcU) | ((0xfffff800U 
                                               & (((IData)(vlSelf->io_instruction_valid) 
                                                   << 0xbU) 
                                                  & (vlSelf->io_instruction 
                                                     << 4U))) 
                                              | ((((IData)(vlSelf->io_instruction_valid)
                                                    ? 
                                                   (0x3fU 
                                                    & (vlSelf->io_instruction 
                                                       >> 0x19U))
                                                    : 0U) 
                                                  << 5U) 
                                                 | (((IData)(vlSelf->io_instruction_valid)
                                                      ? 
                                                     (0xfU 
                                                      & (vlSelf->io_instruction 
                                                         >> 8U))
                                                      : 0U) 
                                                    << 1U)))))),32);
    bufp->fullIData(oldp+100,((((IData)(vlSelf->io_instruction_valid)
                                 ? (vlSelf->io_instruction 
                                    >> 0xcU) : 0U) 
                               << 0xcU)),32);
    bufp->fullIData(oldp+101,(((((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h61009027__0)
                                  ? 0x7ffU : 0U) << 0x15U) 
                               | (((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h61009027__0) 
                                   << 0x14U) | ((((IData)(vlSelf->io_instruction_valid)
                                                   ? 
                                                  (0xffU 
                                                   & (vlSelf->io_instruction 
                                                      >> 0xcU))
                                                   : 0U) 
                                                 << 0xcU) 
                                                | ((0x7ff800U 
                                                    & (((IData)(vlSelf->io_instruction_valid) 
                                                        << 0xbU) 
                                                       & (vlSelf->io_instruction 
                                                          >> 9U))) 
                                                   | (((IData)(vlSelf->io_instruction_valid)
                                                        ? 
                                                       (0x3ffU 
                                                        & (vlSelf->io_instruction 
                                                           >> 0x15U))
                                                        : 0U) 
                                                      << 1U)))))),32);
    bufp->fullCData(oldp+102,((0xffU & vlSelf->io_memory_bundle_read_data)),8);
    bufp->fullCData(oldp+103,((0xffU & (vlSelf->io_memory_bundle_read_data 
                                        >> 8U))),8);
    bufp->fullCData(oldp+104,((0xffU & (vlSelf->io_memory_bundle_read_data 
                                        >> 0x10U))),8);
    bufp->fullCData(oldp+105,((vlSelf->io_memory_bundle_read_data 
                               >> 0x18U)),8);
}
