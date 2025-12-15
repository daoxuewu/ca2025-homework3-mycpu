// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VTop__Syms.h"


void VTop___024root__trace_chg_0_sub_0(VTop___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void VTop___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root__trace_chg_0\n"); );
    // Init
    VTop___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<VTop___024root*>(voidSelf);
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    VTop___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void VTop___024root__trace_chg_0_sub_0(VTop___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root__trace_chg_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[1U])) {
        bufp->chgBit(oldp+0,(vlSelf->Top__DOT__cpu__DOT__regs_io_write_enable));
        bufp->chgCData(oldp+1,(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd),5);
        bufp->chgCData(oldp+2,(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1),5);
        bufp->chgCData(oldp+3,(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2),5);
        bufp->chgIData(oldp+4,(vlSelf->Top__DOT__cpu__DOT__id_io_ex_immediate),32);
        bufp->chgBit(oldp+5,(((0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                              | ((0x17U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                                 | (0x6fU == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))))));
        bufp->chgBit(oldp+6,(((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT___usesRs1_T_1) 
                              | ((0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                                 | (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h55278dfd__0)))));
        bufp->chgBit(oldp+7,((3U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
        bufp->chgBit(oldp+8,((0x23U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
        bufp->chgCData(oldp+9,(vlSelf->Top__DOT__cpu__DOT__id_io_wb_reg_write_source),2);
        bufp->chgCData(oldp+10,(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3),3);
        bufp->chgCData(oldp+11,(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_io_func),4);
        bufp->chgCData(oldp+12,(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode),7);
        bufp->chgBit(oldp+13,((0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
        bufp->chgBit(oldp+14,((0x6fU == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
        bufp->chgBit(oldp+15,((0x67U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
        bufp->chgBit(oldp+16,((0x13U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
        bufp->chgBit(oldp+17,((0x33U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
        bufp->chgBit(oldp+18,((0x37U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
        bufp->chgBit(oldp+19,((0x17U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
        bufp->chgBit(oldp+20,(((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT___usesRs1_T_1) 
                               | ((0x33U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                                  | ((0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                                     | (0x67U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)))))));
        bufp->chgBit(oldp+21,(((0x23U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                               | ((0x33U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                                  | (0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))))));
        bufp->chgCData(oldp+22,(vlSelf->Top__DOT__cpu__DOT__id__DOT__immKind),3);
    }
    if (VL_UNLIKELY((vlSelf->__Vm_traceActivity[1U] 
                     | vlSelf->__Vm_traceActivity[2U]))) {
        bufp->chgIData(oldp+23,(vlSelf->Top__DOT__cpu__DOT__regs_io_write_data),32);
        bufp->chgIData(oldp+24,(vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1),32);
        bufp->chgIData(oldp+25,(vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2),32);
        bufp->chgBit(oldp+26,((((0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                                & ((7U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                    ? (vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 
                                       >= vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                    : ((6U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                        ? (vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 
                                           < vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                        : ((5U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                            ? VL_GTES_III(32, vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1, vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                            : ((4U 
                                                == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                                ? VL_LTS_III(32, vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1, vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                                : (
                                                   (1U 
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
        bufp->chgIData(oldp+27,(((0x67U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))
                                  ? (0xfffffffeU & 
                                     (vlSelf->Top__DOT__cpu__DOT__id_io_ex_immediate 
                                      + vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1))
                                  : (vlSelf->Top__DOT__cpu__DOT__id_io_ex_immediate 
                                     + vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT__pc))),32);
        bufp->chgIData(oldp+28,((IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9)),32);
        bufp->chgIData(oldp+29,(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_6),32);
        bufp->chgIData(oldp+30,(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_7),32);
        bufp->chgBit(oldp+31,(((7U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
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
                                                      == vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)))))))));
        bufp->chgIData(oldp+32,((vlSelf->Top__DOT__cpu__DOT__id_io_ex_immediate 
                                 + vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT__pc)),32);
        bufp->chgIData(oldp+33,((vlSelf->Top__DOT__cpu__DOT__id_io_ex_immediate 
                                 + vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1)),32);
        bufp->chgIData(oldp+34,((0xfffffffeU & (vlSelf->Top__DOT__cpu__DOT__id_io_ex_immediate 
                                                + vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1))),32);
        bufp->chgBit(oldp+35,(((0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
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
                                                      == vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2))))))))));
        bufp->chgCData(oldp+36,((3U & (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9))),2);
        bufp->chgSData(oldp+37,(vlSelf->Top__DOT__cpu__DOT__mem__DOT__half),16);
        bufp->chgBit(oldp+38,(((0U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                ? (0U == (3U & (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9)))
                                : (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_18))));
        bufp->chgBit(oldp+39,(((0U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                ? (1U == (3U & (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9)))
                                : (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_18))));
        bufp->chgBit(oldp+40,(((0U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                ? (2U == (3U & (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9)))
                                : (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_21))));
        bufp->chgBit(oldp+41,(((0U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                ? (3U == (3U & (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9)))
                                : (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_21))));
        bufp->chgIData(oldp+42,((IData)((0x7fffffffffULL 
                                         & ((0U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                             ? ((QData)((IData)(
                                                                ((0U 
                                                                  == (IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2))
                                                                  ? 0U
                                                                  : 
                                                                 (0xffU 
                                                                  & vlSelf->Top__DOT__cpu__DOT__regs__DOT___GEN_154)))) 
                                                << 
                                                (0x18U 
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
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[2U])) {
        bufp->chgIData(oldp+43,(vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT__pc),32);
        bufp->chgIData(oldp+44,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_0),32);
        bufp->chgIData(oldp+45,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_1),32);
        bufp->chgIData(oldp+46,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_2),32);
        bufp->chgIData(oldp+47,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_3),32);
        bufp->chgIData(oldp+48,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_4),32);
        bufp->chgIData(oldp+49,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_5),32);
        bufp->chgIData(oldp+50,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_6),32);
        bufp->chgIData(oldp+51,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_7),32);
        bufp->chgIData(oldp+52,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_8),32);
        bufp->chgIData(oldp+53,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_9),32);
        bufp->chgIData(oldp+54,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_10),32);
        bufp->chgIData(oldp+55,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_11),32);
        bufp->chgIData(oldp+56,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_12),32);
        bufp->chgIData(oldp+57,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_13),32);
        bufp->chgIData(oldp+58,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_14),32);
        bufp->chgIData(oldp+59,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_15),32);
        bufp->chgIData(oldp+60,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_16),32);
        bufp->chgIData(oldp+61,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_17),32);
        bufp->chgIData(oldp+62,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_18),32);
        bufp->chgIData(oldp+63,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_19),32);
        bufp->chgIData(oldp+64,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_20),32);
        bufp->chgIData(oldp+65,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_21),32);
        bufp->chgIData(oldp+66,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_22),32);
        bufp->chgIData(oldp+67,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_23),32);
        bufp->chgIData(oldp+68,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_24),32);
        bufp->chgIData(oldp+69,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_25),32);
        bufp->chgIData(oldp+70,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_26),32);
        bufp->chgIData(oldp+71,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_27),32);
        bufp->chgIData(oldp+72,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_28),32);
        bufp->chgIData(oldp+73,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_29),32);
        bufp->chgIData(oldp+74,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_30),32);
    }
    bufp->chgBit(oldp+75,(vlSelf->clock));
    bufp->chgBit(oldp+76,(vlSelf->reset));
    bufp->chgIData(oldp+77,(vlSelf->io_instruction_address),32);
    bufp->chgIData(oldp+78,(vlSelf->io_instruction),32);
    bufp->chgIData(oldp+79,(vlSelf->io_memory_bundle_address),32);
    bufp->chgIData(oldp+80,(vlSelf->io_memory_bundle_write_data),32);
    bufp->chgBit(oldp+81,(vlSelf->io_memory_bundle_write_enable));
    bufp->chgBit(oldp+82,(vlSelf->io_memory_bundle_write_strobe_0));
    bufp->chgBit(oldp+83,(vlSelf->io_memory_bundle_write_strobe_1));
    bufp->chgBit(oldp+84,(vlSelf->io_memory_bundle_write_strobe_2));
    bufp->chgBit(oldp+85,(vlSelf->io_memory_bundle_write_strobe_3));
    bufp->chgIData(oldp+86,(vlSelf->io_memory_bundle_read_data),32);
    bufp->chgBit(oldp+87,(vlSelf->io_instruction_valid));
    bufp->chgCData(oldp+88,(vlSelf->io_deviceSelect),3);
    bufp->chgCData(oldp+89,(vlSelf->io_debug_read_address),5);
    bufp->chgIData(oldp+90,(vlSelf->io_debug_read_data),32);
    bufp->chgIData(oldp+91,(((IData)(vlSelf->io_instruction_valid)
                              ? vlSelf->io_instruction
                              : 0x13U)),32);
    bufp->chgIData(oldp+92,(((3U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))
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
    bufp->chgCData(oldp+93,(((IData)(vlSelf->io_instruction_valid)
                              ? (vlSelf->io_instruction 
                                 >> 0x19U) : 0U)),7);
    bufp->chgCData(oldp+94,(((IData)(vlSelf->io_instruction_valid)
                              ? (0x1fU & (vlSelf->io_instruction 
                                          >> 0xfU))
                              : 0U)),5);
    bufp->chgCData(oldp+95,(((IData)(vlSelf->io_instruction_valid)
                              ? (0x1fU & (vlSelf->io_instruction 
                                          >> 0x14U))
                              : 0U)),5);
    bufp->chgIData(oldp+96,(((((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h61009027__0)
                                ? 0xfffffU : 0U) << 0xcU) 
                             | ((IData)(vlSelf->io_instruction_valid)
                                 ? (vlSelf->io_instruction 
                                    >> 0x14U) : 0U))),32);
    bufp->chgIData(oldp+97,(((((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h61009027__0)
                                ? 0xfffffU : 0U) << 0xcU) 
                             | ((((IData)(vlSelf->io_instruction_valid)
                                   ? (vlSelf->io_instruction 
                                      >> 0x19U) : 0U) 
                                 << 5U) | (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd)))),32);
    bufp->chgIData(oldp+98,(((((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h61009027__0)
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
    bufp->chgIData(oldp+99,((((IData)(vlSelf->io_instruction_valid)
                               ? (vlSelf->io_instruction 
                                  >> 0xcU) : 0U) << 0xcU)),32);
    bufp->chgIData(oldp+100,(((((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h61009027__0)
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
    bufp->chgCData(oldp+101,((0xffU & vlSelf->io_memory_bundle_read_data)),8);
    bufp->chgCData(oldp+102,((0xffU & (vlSelf->io_memory_bundle_read_data 
                                       >> 8U))),8);
    bufp->chgCData(oldp+103,((0xffU & (vlSelf->io_memory_bundle_read_data 
                                       >> 0x10U))),8);
    bufp->chgCData(oldp+104,((vlSelf->io_memory_bundle_read_data 
                              >> 0x18U)),8);
}

void VTop___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root__trace_cleanup\n"); );
    // Init
    VTop___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<VTop___024root*>(voidSelf);
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[2U] = 0U;
}
