// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VTop.h for the primary calling header

#include "VTop__pch.h"
#include "VTop___024root.h"

VL_ATTR_COLD void VTop___024root___eval_static(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___eval_static\n"); );
}

VL_ATTR_COLD void VTop___024root___eval_initial(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigprevexpr___TOP__clock__0 = vlSelf->clock;
}

VL_ATTR_COLD void VTop___024root___eval_final(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___eval_final\n"); );
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VTop___024root___dump_triggers__stl(VTop___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool VTop___024root___eval_phase__stl(VTop___024root* vlSelf);

VL_ATTR_COLD void VTop___024root___eval_settle(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___eval_settle\n"); );
    // Init
    IData/*31:0*/ __VstlIterCount;
    CData/*0:0*/ __VstlContinue;
    // Body
    __VstlIterCount = 0U;
    vlSelf->__VstlFirstIteration = 1U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        if (VL_UNLIKELY((0x64U < __VstlIterCount))) {
#ifdef VL_DEBUG
            VTop___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("Top.v", 1103, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (VTop___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelf->__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VTop___024root___dump_triggers__stl(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void VTop___024root___stl_sequent__TOP__0(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___stl_sequent__TOP__0\n"); );
    // Init
    IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT___GEN_108;
    Top__DOT__cpu__DOT__regs__DOT___GEN_108 = 0;
    IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT___GEN_139;
    Top__DOT__cpu__DOT__regs__DOT___GEN_139 = 0;
    IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT___GEN_170;
    Top__DOT__cpu__DOT__regs__DOT___GEN_170 = 0;
    CData/*0:0*/ Top__DOT__cpu__DOT__id__DOT___regWrite_T;
    Top__DOT__cpu__DOT__id__DOT___regWrite_T = 0;
    CData/*0:0*/ Top__DOT__cpu__DOT__ex__DOT__alu_ctrl__DOT____VdfgTmp_hbf806e4e__0;
    Top__DOT__cpu__DOT__ex__DOT__alu_ctrl__DOT____VdfgTmp_hbf806e4e__0 = 0;
    // Body
    vlSelf->io_instruction_address = vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT__pc;
    vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT___pc_T_1 
        = ((IData)(4U) + vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT__pc);
    Top__DOT__cpu__DOT__regs__DOT___GEN_170 = ((0xfU 
                                                == 
                                                (0x1fU 
                                                 & ((IData)(vlSelf->io_debug_read_address) 
                                                    - (IData)(1U))))
                                                ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_15
                                                : (
                                                   (0xeU 
                                                    == 
                                                    (0x1fU 
                                                     & ((IData)(vlSelf->io_debug_read_address) 
                                                        - (IData)(1U))))
                                                    ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_14
                                                    : 
                                                   ((0xdU 
                                                     == 
                                                     (0x1fU 
                                                      & ((IData)(vlSelf->io_debug_read_address) 
                                                         - (IData)(1U))))
                                                     ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_13
                                                     : 
                                                    ((0xcU 
                                                      == 
                                                      (0x1fU 
                                                       & ((IData)(vlSelf->io_debug_read_address) 
                                                          - (IData)(1U))))
                                                      ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_12
                                                      : 
                                                     ((0xbU 
                                                       == 
                                                       (0x1fU 
                                                        & ((IData)(vlSelf->io_debug_read_address) 
                                                           - (IData)(1U))))
                                                       ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_11
                                                       : 
                                                      ((0xaU 
                                                        == 
                                                        (0x1fU 
                                                         & ((IData)(vlSelf->io_debug_read_address) 
                                                            - (IData)(1U))))
                                                        ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_10
                                                        : 
                                                       ((9U 
                                                         == 
                                                         (0x1fU 
                                                          & ((IData)(vlSelf->io_debug_read_address) 
                                                             - (IData)(1U))))
                                                         ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_9
                                                         : 
                                                        ((8U 
                                                          == 
                                                          (0x1fU 
                                                           & ((IData)(vlSelf->io_debug_read_address) 
                                                              - (IData)(1U))))
                                                          ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_8
                                                          : 
                                                         ((7U 
                                                           == 
                                                           (0x1fU 
                                                            & ((IData)(vlSelf->io_debug_read_address) 
                                                               - (IData)(1U))))
                                                           ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_7
                                                           : 
                                                          ((6U 
                                                            == 
                                                            (0x1fU 
                                                             & ((IData)(vlSelf->io_debug_read_address) 
                                                                - (IData)(1U))))
                                                            ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_6
                                                            : 
                                                           ((5U 
                                                             == 
                                                             (0x1fU 
                                                              & ((IData)(vlSelf->io_debug_read_address) 
                                                                 - (IData)(1U))))
                                                             ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_5
                                                             : 
                                                            ((4U 
                                                              == 
                                                              (0x1fU 
                                                               & ((IData)(vlSelf->io_debug_read_address) 
                                                                  - (IData)(1U))))
                                                              ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_4
                                                              : 
                                                             ((3U 
                                                               == 
                                                               (0x1fU 
                                                                & ((IData)(vlSelf->io_debug_read_address) 
                                                                   - (IData)(1U))))
                                                               ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_3
                                                               : 
                                                              ((2U 
                                                                == 
                                                                (0x1fU 
                                                                 & ((IData)(vlSelf->io_debug_read_address) 
                                                                    - (IData)(1U))))
                                                                ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_2
                                                                : 
                                                               ((1U 
                                                                 == 
                                                                 (0x1fU 
                                                                  & ((IData)(vlSelf->io_debug_read_address) 
                                                                     - (IData)(1U))))
                                                                 ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_1
                                                                 : vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_0)))))))))))))));
    if (vlSelf->io_instruction_valid) {
        Top__DOT__cpu__DOT__ex__DOT__alu_ctrl__DOT____VdfgTmp_hbf806e4e__0 
            = (1U & (vlSelf->io_instruction >> 0x1eU));
        vlSelf->Top__DOT__cpu__DOT__id__DOT__rd = (0x1fU 
                                                   & (vlSelf->io_instruction 
                                                      >> 7U));
        vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3 
            = (7U & (vlSelf->io_instruction >> 0xcU));
        vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode 
            = (0x7fU & vlSelf->io_instruction);
        vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h61009027__0 
            = (vlSelf->io_instruction >> 0x1fU);
    } else {
        Top__DOT__cpu__DOT__ex__DOT__alu_ctrl__DOT____VdfgTmp_hbf806e4e__0 = 0U;
        vlSelf->Top__DOT__cpu__DOT__id__DOT__rd = 0U;
        vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3 = 0U;
        vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode = 0x13U;
        vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h61009027__0 = 0U;
    }
    vlSelf->io_debug_read_data = ((0U == (IData)(vlSelf->io_debug_read_address))
                                   ? 0U : ((0x1eU == 
                                            (0x1fU 
                                             & ((IData)(vlSelf->io_debug_read_address) 
                                                - (IData)(1U))))
                                            ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_30
                                            : ((0x1dU 
                                                == 
                                                (0x1fU 
                                                 & ((IData)(vlSelf->io_debug_read_address) 
                                                    - (IData)(1U))))
                                                ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_29
                                                : (
                                                   (0x1cU 
                                                    == 
                                                    (0x1fU 
                                                     & ((IData)(vlSelf->io_debug_read_address) 
                                                        - (IData)(1U))))
                                                    ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_28
                                                    : 
                                                   ((0x1bU 
                                                     == 
                                                     (0x1fU 
                                                      & ((IData)(vlSelf->io_debug_read_address) 
                                                         - (IData)(1U))))
                                                     ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_27
                                                     : 
                                                    ((0x1aU 
                                                      == 
                                                      (0x1fU 
                                                       & ((IData)(vlSelf->io_debug_read_address) 
                                                          - (IData)(1U))))
                                                      ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_26
                                                      : 
                                                     ((0x19U 
                                                       == 
                                                       (0x1fU 
                                                        & ((IData)(vlSelf->io_debug_read_address) 
                                                           - (IData)(1U))))
                                                       ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_25
                                                       : 
                                                      ((0x18U 
                                                        == 
                                                        (0x1fU 
                                                         & ((IData)(vlSelf->io_debug_read_address) 
                                                            - (IData)(1U))))
                                                        ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_24
                                                        : 
                                                       ((0x17U 
                                                         == 
                                                         (0x1fU 
                                                          & ((IData)(vlSelf->io_debug_read_address) 
                                                             - (IData)(1U))))
                                                         ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_23
                                                         : 
                                                        ((0x16U 
                                                          == 
                                                          (0x1fU 
                                                           & ((IData)(vlSelf->io_debug_read_address) 
                                                              - (IData)(1U))))
                                                          ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_22
                                                          : 
                                                         ((0x15U 
                                                           == 
                                                           (0x1fU 
                                                            & ((IData)(vlSelf->io_debug_read_address) 
                                                               - (IData)(1U))))
                                                           ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_21
                                                           : 
                                                          ((0x14U 
                                                            == 
                                                            (0x1fU 
                                                             & ((IData)(vlSelf->io_debug_read_address) 
                                                                - (IData)(1U))))
                                                            ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_20
                                                            : 
                                                           ((0x13U 
                                                             == 
                                                             (0x1fU 
                                                              & ((IData)(vlSelf->io_debug_read_address) 
                                                                 - (IData)(1U))))
                                                             ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_19
                                                             : 
                                                            ((0x12U 
                                                              == 
                                                              (0x1fU 
                                                               & ((IData)(vlSelf->io_debug_read_address) 
                                                                  - (IData)(1U))))
                                                              ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_18
                                                              : 
                                                             ((0x11U 
                                                               == 
                                                               (0x1fU 
                                                                & ((IData)(vlSelf->io_debug_read_address) 
                                                                   - (IData)(1U))))
                                                               ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_17
                                                               : 
                                                              ((0x10U 
                                                                == 
                                                                (0x1fU 
                                                                 & ((IData)(vlSelf->io_debug_read_address) 
                                                                    - (IData)(1U))))
                                                                ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_16
                                                                : Top__DOT__cpu__DOT__regs__DOT___GEN_170))))))))))))))));
    vlSelf->io_memory_bundle_write_enable = ((3U != (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                                             & (0x23U 
                                                == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)));
    vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_io_func 
        = ((0x13U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))
            ? ((5U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                ? ((IData)(Top__DOT__cpu__DOT__ex__DOT__alu_ctrl__DOT____VdfgTmp_hbf806e4e__0)
                    ? 9U : 8U) : ((7U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                   ? 7U : ((6U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                            ? 6U : 
                                           ((4U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                             ? 5U : 
                                            ((3U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                              ? 0xaU
                                              : ((2U 
                                                  == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                                  ? 4U
                                                  : 
                                                 ((1U 
                                                   == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                                   ? 3U
                                                   : 1U)))))))
            : ((0x33U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))
                ? ((5U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                    ? ((IData)(Top__DOT__cpu__DOT__ex__DOT__alu_ctrl__DOT____VdfgTmp_hbf806e4e__0)
                        ? 9U : 8U) : ((7U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                       ? 7U : ((6U 
                                                == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                                ? 6U
                                                : (
                                                   (4U 
                                                    == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                                    ? 5U
                                                    : 
                                                   ((3U 
                                                     == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                                     ? 0xaU
                                                     : 
                                                    ((2U 
                                                      == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                                      ? 4U
                                                      : 
                                                     ((1U 
                                                       == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                                       ? 3U
                                                       : 
                                                      ((IData)(Top__DOT__cpu__DOT__ex__DOT__alu_ctrl__DOT____VdfgTmp_hbf806e4e__0)
                                                        ? 2U
                                                        : 1U))))))))
                : 1U));
    Top__DOT__cpu__DOT__id__DOT___regWrite_T = ((3U 
                                                 == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                                                | (0x13U 
                                                   == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)));
    vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_ha77ee14f__0 
        = ((0x6fU == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
           | (0x67U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)));
    vlSelf->Top__DOT__cpu__DOT__id__DOT___usesRs1_T_1 
        = ((3U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
           | ((0x23U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
              | (0x13U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
    vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2 
        = (((0x23U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
            | ((0x33U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
               | (0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))))
            ? ((IData)(vlSelf->io_instruction_valid)
                ? (0x1fU & (vlSelf->io_instruction 
                            >> 0x14U)) : 0U) : 0U);
    vlSelf->Top__DOT__cpu__DOT__id__DOT__immKind = 
        ((0x6fU == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))
          ? 5U : (((0x37U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                   | (0x17U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)))
                   ? 4U : ((0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))
                            ? 3U : ((0x23U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))
                                     ? 2U : ((IData)(Top__DOT__cpu__DOT__id__DOT___regWrite_T) 
                                             | (0x67U 
                                                == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)))))));
    vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h55278dfd__0 
        = ((0x37U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
           | ((0x17U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
              | (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_ha77ee14f__0)));
    vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1 
        = (((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT___usesRs1_T_1) 
            | ((0x33U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
               | ((0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                  | (0x67U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)))))
            ? ((IData)(vlSelf->io_instruction_valid)
                ? (0x1fU & (vlSelf->io_instruction 
                            >> 0xfU)) : 0U) : 0U);
    Top__DOT__cpu__DOT__regs__DOT___GEN_139 = ((0xfU 
                                                == 
                                                (0x1fU 
                                                 & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                    - (IData)(1U))))
                                                ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_15
                                                : (
                                                   (0xeU 
                                                    == 
                                                    (0x1fU 
                                                     & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                        - (IData)(1U))))
                                                    ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_14
                                                    : 
                                                   ((0xdU 
                                                     == 
                                                     (0x1fU 
                                                      & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                         - (IData)(1U))))
                                                     ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_13
                                                     : 
                                                    ((0xcU 
                                                      == 
                                                      (0x1fU 
                                                       & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                          - (IData)(1U))))
                                                      ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_12
                                                      : 
                                                     ((0xbU 
                                                       == 
                                                       (0x1fU 
                                                        & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                           - (IData)(1U))))
                                                       ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_11
                                                       : 
                                                      ((0xaU 
                                                        == 
                                                        (0x1fU 
                                                         & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                            - (IData)(1U))))
                                                        ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_10
                                                        : 
                                                       ((9U 
                                                         == 
                                                         (0x1fU 
                                                          & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                             - (IData)(1U))))
                                                         ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_9
                                                         : 
                                                        ((8U 
                                                          == 
                                                          (0x1fU 
                                                           & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                              - (IData)(1U))))
                                                          ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_8
                                                          : 
                                                         ((7U 
                                                           == 
                                                           (0x1fU 
                                                            & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                               - (IData)(1U))))
                                                           ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_7
                                                           : 
                                                          ((6U 
                                                            == 
                                                            (0x1fU 
                                                             & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                                - (IData)(1U))))
                                                            ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_6
                                                            : 
                                                           ((5U 
                                                             == 
                                                             (0x1fU 
                                                              & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                                 - (IData)(1U))))
                                                             ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_5
                                                             : 
                                                            ((4U 
                                                              == 
                                                              (0x1fU 
                                                               & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                                  - (IData)(1U))))
                                                              ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_4
                                                              : 
                                                             ((3U 
                                                               == 
                                                               (0x1fU 
                                                                & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                                   - (IData)(1U))))
                                                               ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_3
                                                               : 
                                                              ((2U 
                                                                == 
                                                                (0x1fU 
                                                                 & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                                    - (IData)(1U))))
                                                                ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_2
                                                                : 
                                                               ((1U 
                                                                 == 
                                                                 (0x1fU 
                                                                  & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                                     - (IData)(1U))))
                                                                 ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_1
                                                                 : vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_0)))))))))))))));
    vlSelf->Top__DOT__cpu__DOT__id_io_ex_immediate 
        = ((5U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__immKind))
            ? ((((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h61009027__0)
                  ? 0x7ffU : 0U) << 0x15U) | (((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h61009027__0) 
                                               << 0x14U) 
                                              | ((((IData)(vlSelf->io_instruction_valid)
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
                                                       << 1U)))))
            : ((4U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__immKind))
                ? (((IData)(vlSelf->io_instruction_valid)
                     ? (vlSelf->io_instruction >> 0xcU)
                     : 0U) << 0xcU) : ((3U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__immKind))
                                        ? ((((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h61009027__0)
                                              ? 0x7ffffU
                                              : 0U) 
                                            << 0xdU) 
                                           | (((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h61009027__0) 
                                               << 0xcU) 
                                              | ((0xfffff800U 
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
                                                       << 1U)))))
                                        : ((2U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__immKind))
                                            ? ((((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h61009027__0)
                                                  ? 0xfffffU
                                                  : 0U) 
                                                << 0xcU) 
                                               | ((((IData)(vlSelf->io_instruction_valid)
                                                     ? 
                                                    (vlSelf->io_instruction 
                                                     >> 0x19U)
                                                     : 0U) 
                                                   << 5U) 
                                                  | (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd)))
                                            : ((1U 
                                                == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__immKind))
                                                ? (
                                                   (((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h61009027__0)
                                                      ? 0xfffffU
                                                      : 0U) 
                                                    << 0xcU) 
                                                   | ((IData)(vlSelf->io_instruction_valid)
                                                       ? 
                                                      (vlSelf->io_instruction 
                                                       >> 0x14U)
                                                       : 0U))
                                                : 0U)))));
    vlSelf->Top__DOT__cpu__DOT__regs_io_write_enable 
        = ((IData)(Top__DOT__cpu__DOT__id__DOT___regWrite_T) 
           | ((0x33U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
              | (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h55278dfd__0)));
    Top__DOT__cpu__DOT__regs__DOT___GEN_108 = ((0xfU 
                                                == 
                                                (0x1fU 
                                                 & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                    - (IData)(1U))))
                                                ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_15
                                                : (
                                                   (0xeU 
                                                    == 
                                                    (0x1fU 
                                                     & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                        - (IData)(1U))))
                                                    ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_14
                                                    : 
                                                   ((0xdU 
                                                     == 
                                                     (0x1fU 
                                                      & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                         - (IData)(1U))))
                                                     ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_13
                                                     : 
                                                    ((0xcU 
                                                      == 
                                                      (0x1fU 
                                                       & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                          - (IData)(1U))))
                                                      ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_12
                                                      : 
                                                     ((0xbU 
                                                       == 
                                                       (0x1fU 
                                                        & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                           - (IData)(1U))))
                                                       ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_11
                                                       : 
                                                      ((0xaU 
                                                        == 
                                                        (0x1fU 
                                                         & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                            - (IData)(1U))))
                                                        ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_10
                                                        : 
                                                       ((9U 
                                                         == 
                                                         (0x1fU 
                                                          & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                             - (IData)(1U))))
                                                         ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_9
                                                         : 
                                                        ((8U 
                                                          == 
                                                          (0x1fU 
                                                           & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                              - (IData)(1U))))
                                                          ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_8
                                                          : 
                                                         ((7U 
                                                           == 
                                                           (0x1fU 
                                                            & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                               - (IData)(1U))))
                                                           ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_7
                                                           : 
                                                          ((6U 
                                                            == 
                                                            (0x1fU 
                                                             & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                                - (IData)(1U))))
                                                            ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_6
                                                            : 
                                                           ((5U 
                                                             == 
                                                             (0x1fU 
                                                              & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                                 - (IData)(1U))))
                                                             ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_5
                                                             : 
                                                            ((4U 
                                                              == 
                                                              (0x1fU 
                                                               & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                                  - (IData)(1U))))
                                                              ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_4
                                                              : 
                                                             ((3U 
                                                               == 
                                                               (0x1fU 
                                                                & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                                   - (IData)(1U))))
                                                               ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_3
                                                               : 
                                                              ((2U 
                                                                == 
                                                                (0x1fU 
                                                                 & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                                    - (IData)(1U))))
                                                                ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_2
                                                                : 
                                                               ((1U 
                                                                 == 
                                                                 (0x1fU 
                                                                  & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                                     - (IData)(1U))))
                                                                 ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_1
                                                                 : vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_0)))))))))))))));
    vlSelf->Top__DOT__cpu__DOT__regs__DOT___GEN_154 
        = ((0x1eU == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                               - (IData)(1U)))) ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_30
            : ((0x1dU == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                   - (IData)(1U))))
                ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_29
                : ((0x1cU == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                       - (IData)(1U))))
                    ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_28
                    : ((0x1bU == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                           - (IData)(1U))))
                        ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_27
                        : ((0x1aU == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                               - (IData)(1U))))
                            ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_26
                            : ((0x19U == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                   - (IData)(1U))))
                                ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_25
                                : ((0x18U == (0x1fU 
                                              & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                 - (IData)(1U))))
                                    ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_24
                                    : ((0x17U == (0x1fU 
                                                  & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                     - (IData)(1U))))
                                        ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_23
                                        : ((0x16U == 
                                            (0x1fU 
                                             & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                - (IData)(1U))))
                                            ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_22
                                            : ((0x15U 
                                                == 
                                                (0x1fU 
                                                 & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                    - (IData)(1U))))
                                                ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_21
                                                : (
                                                   (0x14U 
                                                    == 
                                                    (0x1fU 
                                                     & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                        - (IData)(1U))))
                                                    ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_20
                                                    : 
                                                   ((0x13U 
                                                     == 
                                                     (0x1fU 
                                                      & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                         - (IData)(1U))))
                                                     ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_19
                                                     : 
                                                    ((0x12U 
                                                      == 
                                                      (0x1fU 
                                                       & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                          - (IData)(1U))))
                                                      ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_18
                                                      : 
                                                     ((0x11U 
                                                       == 
                                                       (0x1fU 
                                                        & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                           - (IData)(1U))))
                                                       ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_17
                                                       : 
                                                      ((0x10U 
                                                        == 
                                                        (0x1fU 
                                                         & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2) 
                                                            - (IData)(1U))))
                                                        ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_16
                                                        : Top__DOT__cpu__DOT__regs__DOT___GEN_139)))))))))))))));
    vlSelf->Top__DOT__cpu__DOT__ex__DOT__branchTarget 
        = (vlSelf->Top__DOT__cpu__DOT__id_io_ex_immediate 
           + vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT__pc);
    vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 
        = ((0U == (IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1))
            ? 0U : ((0x1eU == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                        - (IData)(1U))))
                     ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_30
                     : ((0x1dU == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                            - (IData)(1U))))
                         ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_29
                         : ((0x1cU == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                - (IData)(1U))))
                             ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_28
                             : ((0x1bU == (0x1fU & 
                                           ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                            - (IData)(1U))))
                                 ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_27
                                 : ((0x1aU == (0x1fU 
                                               & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                  - (IData)(1U))))
                                     ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_26
                                     : ((0x19U == (0x1fU 
                                                   & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                      - (IData)(1U))))
                                         ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_25
                                         : ((0x18U 
                                             == (0x1fU 
                                                 & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                    - (IData)(1U))))
                                             ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_24
                                             : ((0x17U 
                                                 == 
                                                 (0x1fU 
                                                  & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                     - (IData)(1U))))
                                                 ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_23
                                                 : 
                                                ((0x16U 
                                                  == 
                                                  (0x1fU 
                                                   & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                      - (IData)(1U))))
                                                  ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_22
                                                  : 
                                                 ((0x15U 
                                                   == 
                                                   (0x1fU 
                                                    & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                       - (IData)(1U))))
                                                   ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_21
                                                   : 
                                                  ((0x14U 
                                                    == 
                                                    (0x1fU 
                                                     & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                        - (IData)(1U))))
                                                    ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_20
                                                    : 
                                                   ((0x13U 
                                                     == 
                                                     (0x1fU 
                                                      & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                         - (IData)(1U))))
                                                     ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_19
                                                     : 
                                                    ((0x12U 
                                                      == 
                                                      (0x1fU 
                                                       & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                          - (IData)(1U))))
                                                      ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_18
                                                      : 
                                                     ((0x11U 
                                                       == 
                                                       (0x1fU 
                                                        & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                           - (IData)(1U))))
                                                       ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_17
                                                       : 
                                                      ((0x10U 
                                                        == 
                                                        (0x1fU 
                                                         & ((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1) 
                                                            - (IData)(1U))))
                                                        ? vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_16
                                                        : Top__DOT__cpu__DOT__regs__DOT___GEN_108))))))))))))))));
    vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2 
        = ((0U == (IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2))
            ? 0U : vlSelf->Top__DOT__cpu__DOT__regs__DOT___GEN_154);
    vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_6 
        = (((0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
            | ((0x17U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
               | (0x6fU == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))))
            ? vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT__pc
            : vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1);
    vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_7 
        = (((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT___usesRs1_T_1) 
            | ((0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
               | (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h55278dfd__0)))
            ? vlSelf->Top__DOT__cpu__DOT__id_io_ex_immediate
            : vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2);
    vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9 
        = (0x7fffffffffffffffULL & ((1U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_io_func))
                                     ? (QData)((IData)(
                                                       (vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_6 
                                                        + vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_7)))
                                     : ((2U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_io_func))
                                         ? (QData)((IData)(
                                                           (vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_6 
                                                            - vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_7)))
                                         : ((3U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_io_func))
                                             ? ((QData)((IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_6)) 
                                                << 
                                                (0x1fU 
                                                 & vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_7))
                                             : (QData)((IData)(
                                                               ((4U 
                                                                 == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_io_func))
                                                                 ? 
                                                                VL_LTS_III(32, vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_6, vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_7)
                                                                 : 
                                                                ((5U 
                                                                  == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_io_func))
                                                                  ? 
                                                                 (vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_6 
                                                                  ^ vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_7)
                                                                  : 
                                                                 ((6U 
                                                                   == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_io_func))
                                                                   ? 
                                                                  (vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_6 
                                                                   | vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_7)
                                                                   : 
                                                                  ((7U 
                                                                    == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_io_func))
                                                                    ? 
                                                                   (vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_6 
                                                                    & vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_7)
                                                                    : 
                                                                   ((8U 
                                                                     == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_io_func))
                                                                     ? 
                                                                    (vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_6 
                                                                     >> 
                                                                     (0x1fU 
                                                                      & vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_7))
                                                                     : 
                                                                    ((9U 
                                                                      == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_io_func))
                                                                      ? 
                                                                     VL_SHIFTRS_III(32,32,5, vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_6, 
                                                                                (0x1fU 
                                                                                & vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_7))
                                                                      : 
                                                                     ((0xaU 
                                                                       == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_io_func)) 
                                                                      & (vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_6 
                                                                         < vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_7))))))))))))));
    if ((3U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))) {
        vlSelf->Top__DOT__cpu__DOT__id_io_wb_reg_write_source = 1U;
        vlSelf->io_memory_bundle_write_data = 0U;
    } else {
        vlSelf->Top__DOT__cpu__DOT__id_io_wb_reg_write_source 
            = ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_ha77ee14f__0)
                ? 2U : 0U);
        vlSelf->io_memory_bundle_write_data = ((0x23U 
                                                == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))
                                                ? (IData)(
                                                          (0x7fffffffffULL 
                                                           & ((0U 
                                                               == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                                               ? 
                                                              ((QData)((IData)(
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
                                                                                 : 0U)))))))
                                                : 0U);
    }
    vlSelf->io_memory_bundle_address = (0x1fffffffU 
                                        & (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9));
    vlSelf->io_deviceSelect = (7U & (IData)((vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9 
                                             >> 0x1dU)));
    vlSelf->Top__DOT__cpu__DOT__mem__DOT__half = (0xffffU 
                                                  & ((1U 
                                                      & (IData)(
                                                                (vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9 
                                                                 >> 1U)))
                                                      ? 
                                                     (vlSelf->io_memory_bundle_read_data 
                                                      >> 0x10U)
                                                      : vlSelf->io_memory_bundle_read_data));
    vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_3 = 
        (0xffU & ((3U == (3U & (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9)))
                   ? (vlSelf->io_memory_bundle_read_data 
                      >> 0x18U) : ((2U == (3U & (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9)))
                                    ? (vlSelf->io_memory_bundle_read_data 
                                       >> 0x10U) : 
                                   ((1U == (3U & (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9)))
                                     ? (vlSelf->io_memory_bundle_read_data 
                                        >> 8U) : vlSelf->io_memory_bundle_read_data))));
    if ((1U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))) {
        vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_18 
            = (1U & (~ (IData)((vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9 
                                >> 1U))));
        vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_21 
            = (1U & (IData)((vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9 
                             >> 1U)));
    } else {
        vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_18 
            = (1U & (2U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3)));
        vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_21 
            = (1U & (2U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3)));
    }
    vlSelf->Top__DOT__cpu__DOT__regs_io_write_data 
        = ((2U == (IData)(vlSelf->Top__DOT__cpu__DOT__id_io_wb_reg_write_source))
            ? ((IData)(4U) + vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT__pc)
            : ((1U == (IData)(vlSelf->Top__DOT__cpu__DOT__id_io_wb_reg_write_source))
                ? ((3U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))
                    ? ((2U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                        ? vlSelf->io_memory_bundle_read_data
                        : ((5U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                            ? (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT__half)
                            : ((1U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                ? ((((0x8000U & (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT__half))
                                      ? 0xffffU : 0U) 
                                    << 0x10U) | (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT__half))
                                : ((4U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                    ? (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_3)
                                    : ((0U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                        ? ((((0x80U 
                                              & (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_3))
                                              ? 0xffffffU
                                              : 0U) 
                                            << 8U) 
                                           | (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_3))
                                        : 0U))))) : 0U)
                : (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9)));
    vlSelf->io_memory_bundle_write_strobe_0 = ((3U 
                                                != (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                                               & ((0x23U 
                                                   == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                                                  & ((0U 
                                                      == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                                      ? 
                                                     (0U 
                                                      == 
                                                      (3U 
                                                       & (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9)))
                                                      : (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_18))));
    vlSelf->io_memory_bundle_write_strobe_1 = ((3U 
                                                != (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                                               & ((0x23U 
                                                   == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                                                  & ((0U 
                                                      == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                                      ? 
                                                     (1U 
                                                      == 
                                                      (3U 
                                                       & (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9)))
                                                      : (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_18))));
    vlSelf->io_memory_bundle_write_strobe_2 = ((3U 
                                                != (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                                               & ((0x23U 
                                                   == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                                                  & ((0U 
                                                      == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                                      ? 
                                                     (2U 
                                                      == 
                                                      (3U 
                                                       & (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9)))
                                                      : (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_21))));
    vlSelf->io_memory_bundle_write_strobe_3 = ((3U 
                                                != (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                                               & ((0x23U 
                                                   == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                                                  & ((0U 
                                                      == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                                      ? 
                                                     (3U 
                                                      == 
                                                      (3U 
                                                       & (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9)))
                                                      : (IData)(vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_21))));
}

VL_ATTR_COLD void VTop___024root___eval_stl(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VTop___024root___stl_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[2U] = 1U;
        vlSelf->__Vm_traceActivity[1U] = 1U;
        vlSelf->__Vm_traceActivity[0U] = 1U;
    }
}

VL_ATTR_COLD void VTop___024root___eval_triggers__stl(VTop___024root* vlSelf);

VL_ATTR_COLD bool VTop___024root___eval_phase__stl(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___eval_phase__stl\n"); );
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    VTop___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelf->__VstlTriggered.any();
    if (__VstlExecute) {
        VTop___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VTop___024root___dump_triggers__ico(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___dump_triggers__ico\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VicoTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VicoTriggered.word(0U))) {
        VL_DBG_MSGF("         'ico' region trigger index 0 is active: Internal 'ico' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void VTop___024root___dump_triggers__act(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge clock)\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void VTop___024root___dump_triggers__nba(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clock)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void VTop___024root___ctor_var_reset(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->clock = VL_RAND_RESET_I(1);
    vlSelf->reset = VL_RAND_RESET_I(1);
    vlSelf->io_instruction_address = VL_RAND_RESET_I(32);
    vlSelf->io_instruction = VL_RAND_RESET_I(32);
    vlSelf->io_memory_bundle_address = VL_RAND_RESET_I(32);
    vlSelf->io_memory_bundle_write_data = VL_RAND_RESET_I(32);
    vlSelf->io_memory_bundle_write_enable = VL_RAND_RESET_I(1);
    vlSelf->io_memory_bundle_write_strobe_0 = VL_RAND_RESET_I(1);
    vlSelf->io_memory_bundle_write_strobe_1 = VL_RAND_RESET_I(1);
    vlSelf->io_memory_bundle_write_strobe_2 = VL_RAND_RESET_I(1);
    vlSelf->io_memory_bundle_write_strobe_3 = VL_RAND_RESET_I(1);
    vlSelf->io_memory_bundle_read_data = VL_RAND_RESET_I(32);
    vlSelf->io_instruction_valid = VL_RAND_RESET_I(1);
    vlSelf->io_deviceSelect = VL_RAND_RESET_I(3);
    vlSelf->io_debug_read_address = VL_RAND_RESET_I(5);
    vlSelf->io_debug_read_data = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs_io_write_enable = VL_RAND_RESET_I(1);
    vlSelf->Top__DOT__cpu__DOT__regs_io_write_data = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1 = VL_RAND_RESET_I(5);
    vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2 = VL_RAND_RESET_I(5);
    vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__id_io_ex_immediate = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__id_io_wb_reg_write_source = VL_RAND_RESET_I(2);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_0 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_1 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_2 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_3 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_4 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_5 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_6 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_7 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_8 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_9 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_10 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_11 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_12 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_13 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_14 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_15 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_16 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_17 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_18 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_19 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_20 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_21 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_22 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_23 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_24 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_25 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_26 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_27 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_28 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_29 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_30 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__regs__DOT___GEN_154 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT__pc = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT___pc_T_1 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode = VL_RAND_RESET_I(7);
    vlSelf->Top__DOT__cpu__DOT__id__DOT__rd = VL_RAND_RESET_I(5);
    vlSelf->Top__DOT__cpu__DOT__id__DOT___usesRs1_T_1 = VL_RAND_RESET_I(1);
    vlSelf->Top__DOT__cpu__DOT__id__DOT__immKind = VL_RAND_RESET_I(3);
    vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h55278dfd__0 = 0;
    vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_ha77ee14f__0 = 0;
    vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_h61009027__0 = 0;
    vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_io_func = VL_RAND_RESET_I(4);
    vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3 = VL_RAND_RESET_I(3);
    vlSelf->Top__DOT__cpu__DOT__ex__DOT__branchTarget = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_6 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_7 = VL_RAND_RESET_I(32);
    vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9 = VL_RAND_RESET_Q(63);
    vlSelf->Top__DOT__cpu__DOT__mem__DOT__half = VL_RAND_RESET_I(16);
    vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_3 = VL_RAND_RESET_I(8);
    vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_18 = VL_RAND_RESET_I(1);
    vlSelf->Top__DOT__cpu__DOT__mem__DOT___GEN_21 = VL_RAND_RESET_I(1);
    vlSelf->__Vtrigprevexpr___TOP__clock__0 = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 3; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}
