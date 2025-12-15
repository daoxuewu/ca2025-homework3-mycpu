// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VTop.h for the primary calling header

#include "VTop__pch.h"
#include "VTop___024root.h"

VL_INLINE_OPT void VTop___024root___ico_sequent__TOP__0(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___ico_sequent__TOP__0\n"); );
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

void VTop___024root___eval_ico(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___eval_ico\n"); );
    // Body
    if ((1ULL & vlSelf->__VicoTriggered.word(0U))) {
        VTop___024root___ico_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[1U] = 1U;
    }
}

void VTop___024root___eval_triggers__ico(VTop___024root* vlSelf);

bool VTop___024root___eval_phase__ico(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___eval_phase__ico\n"); );
    // Init
    CData/*0:0*/ __VicoExecute;
    // Body
    VTop___024root___eval_triggers__ico(vlSelf);
    __VicoExecute = vlSelf->__VicoTriggered.any();
    if (__VicoExecute) {
        VTop___024root___eval_ico(vlSelf);
    }
    return (__VicoExecute);
}

void VTop___024root___eval_act(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___eval_act\n"); );
}

VL_INLINE_OPT void VTop___024root___nba_sequent__TOP__0(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___nba_sequent__TOP__0\n"); );
    // Init
    IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT___GEN_170;
    Top__DOT__cpu__DOT__regs__DOT___GEN_170 = 0;
    // Body
    if (vlSelf->reset) {
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_30 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_29 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_28 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_27 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_26 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_16 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_17 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_18 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_19 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_20 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_21 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_22 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_23 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_24 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_25 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_8 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_7 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_6 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_5 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_1 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_2 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_4 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_9 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_11 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_0 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_10 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_3 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_12 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_13 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_14 = 0U;
        vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_15 = 0U;
        vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT__pc = 0x1000U;
    } else {
        if ((1U & (~ (IData)(vlSelf->reset)))) {
            if (((IData)(vlSelf->Top__DOT__cpu__DOT__regs_io_write_enable) 
                 & (0U != (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd)))) {
                if ((0x1eU == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                        - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_30 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((0x1dU == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                        - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_29 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((0x1cU == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                        - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_28 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((0x1bU == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                        - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_27 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((0x1aU == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                        - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_26 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((0x10U == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                        - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_16 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((0x11U == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                        - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_17 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((0x12U == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                        - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_18 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((0x13U == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                        - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_19 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((0x14U == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                        - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_20 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((0x15U == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                        - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_21 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((0x16U == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                        - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_22 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((0x17U == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                        - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_23 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((0x18U == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                        - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_24 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((0x19U == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                        - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_25 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((8U == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                     - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_8 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((7U == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                     - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_7 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((6U == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                     - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_6 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((5U == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                     - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_5 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((1U == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                     - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_1 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((2U == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                     - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_2 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((4U == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                     - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_4 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((9U == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                     - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_9 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((0xbU == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                       - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_11 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((0U == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                     - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_0 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((0xaU == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                       - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_10 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((3U == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                     - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_3 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((0xcU == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                       - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_12 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((0xdU == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                       - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_13 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((0xeU == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                       - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_14 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
                if ((0xfU == (0x1fU & ((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd) 
                                       - (IData)(1U))))) {
                    vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_15 
                        = vlSelf->Top__DOT__cpu__DOT__regs_io_write_data;
                }
            }
        }
        if (vlSelf->io_instruction_valid) {
            vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT__pc 
                = ((((0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
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
                                     : ((1U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                         ? (vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 
                                            != vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                         : ((0U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3)) 
                                            & (vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 
                                               == vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)))))))) 
                    | (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT____VdfgTmp_ha77ee14f__0))
                    ? ((0x67U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))
                        ? (0xfffffffeU & (vlSelf->Top__DOT__cpu__DOT__id_io_ex_immediate 
                                          + vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1))
                        : vlSelf->Top__DOT__cpu__DOT__ex__DOT__branchTarget)
                    : vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT___pc_T_1);
        }
    }
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
    vlSelf->io_instruction_address = vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT__pc;
    vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT___pc_T_1 
        = ((IData)(4U) + vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT__pc);
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
}

VL_INLINE_OPT void VTop___024root___nba_sequent__TOP__1(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___nba_sequent__TOP__1\n"); );
    // Init
    IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT___GEN_108;
    Top__DOT__cpu__DOT__regs__DOT___GEN_108 = 0;
    IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT___GEN_139;
    Top__DOT__cpu__DOT__regs__DOT___GEN_139 = 0;
    // Body
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
    vlSelf->Top__DOT__cpu__DOT__ex__DOT__branchTarget 
        = (vlSelf->Top__DOT__cpu__DOT__id_io_ex_immediate 
           + vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT__pc);
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
    vlSelf->io_memory_bundle_address = (0x1fffffffU 
                                        & (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9));
    vlSelf->io_deviceSelect = (7U & (IData)((vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_9 
                                             >> 0x1dU)));
    vlSelf->io_memory_bundle_write_data = ((3U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))
                                            ? 0U : 
                                           ((0x23U 
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
                                             : 0U));
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

void VTop___024root___eval_nba(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VTop___024root___nba_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[2U] = 1U;
        VTop___024root___nba_sequent__TOP__1(vlSelf);
    }
}

void VTop___024root___eval_triggers__act(VTop___024root* vlSelf);

bool VTop___024root___eval_phase__act(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<1> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    VTop___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        VTop___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool VTop___024root___eval_phase__nba(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        VTop___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VTop___024root___dump_triggers__ico(VTop___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void VTop___024root___dump_triggers__nba(VTop___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void VTop___024root___dump_triggers__act(VTop___024root* vlSelf);
#endif  // VL_DEBUG

void VTop___024root___eval(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VicoIterCount;
    CData/*0:0*/ __VicoContinue;
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VicoIterCount = 0U;
    vlSelf->__VicoFirstIteration = 1U;
    __VicoContinue = 1U;
    while (__VicoContinue) {
        if (VL_UNLIKELY((0x64U < __VicoIterCount))) {
#ifdef VL_DEBUG
            VTop___024root___dump_triggers__ico(vlSelf);
#endif
            VL_FATAL_MT("Top.v", 1103, "", "Input combinational region did not converge.");
        }
        __VicoIterCount = ((IData)(1U) + __VicoIterCount);
        __VicoContinue = 0U;
        if (VTop___024root___eval_phase__ico(vlSelf)) {
            __VicoContinue = 1U;
        }
        vlSelf->__VicoFirstIteration = 0U;
    }
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            VTop___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("Top.v", 1103, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                VTop___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("Top.v", 1103, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (VTop___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (VTop___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void VTop___024root___eval_debug_assertions(VTop___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->clock & 0xfeU))) {
        Verilated::overWidthError("clock");}
    if (VL_UNLIKELY((vlSelf->reset & 0xfeU))) {
        Verilated::overWidthError("reset");}
    if (VL_UNLIKELY((vlSelf->io_instruction_valid & 0xfeU))) {
        Verilated::overWidthError("io_instruction_valid");}
    if (VL_UNLIKELY((vlSelf->io_debug_read_address 
                     & 0xe0U))) {
        Verilated::overWidthError("io_debug_read_address");}
}
#endif  // VL_DEBUG
