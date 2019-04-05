	.text
	.file	"lex.yy.c"
	.globl	yylex                   // -- Begin function yylex
	.p2align	2
	.type	yylex,@function
yylex:                                  // @yylex
// %bb.0:
	sub	sp, sp, #480            // =480
	stp	x28, x27, [sp, #384]    // 8-byte Folded Spill
	stp	x26, x25, [sp, #400]    // 8-byte Folded Spill
	stp	x24, x23, [sp, #416]    // 8-byte Folded Spill
	stp	x22, x21, [sp, #432]    // 8-byte Folded Spill
	stp	x20, x19, [sp, #448]    // 8-byte Folded Spill
	stp	x29, x30, [sp, #464]    // 8-byte Folded Spill
	add	x29, sp, #464           // =464
	adrp	x8, yy_init
	add	x8, x8, :lo12:yy_init
	adrp	x9, yy_start
	add	x9, x9, :lo12:yy_start
	adrp	x10, yyin
	add	x10, x10, :lo12:yyin
	mov	x11, #0
	adrp	x12, :got:__sF
	ldr	x12, [x12, :got_lo12:__sF]
	adrp	x13, yyout
	add	x13, x13, :lo12:yyout
	mov	x14, #152
	add	x14, x12, x14
	adrp	x15, yy_buffer_stack
	add	x15, x15, :lo12:yy_buffer_stack
	mov	w16, #0
	adrp	x17, yy_buffer_stack_top
	add	x17, x17, :lo12:yy_buffer_stack_top
	adrp	x18, yy_c_buf_p
	add	x18, x18, :lo12:yy_c_buf_p
	adrp	x0, yy_hold_char
	add	x0, x0, :lo12:yy_hold_char
	adrp	x1, yy_ec
	add	x1, x1, :lo12:yy_ec
	adrp	x2, yy_accept
	add	x2, x2, :lo12:yy_accept
	adrp	x3, yy_last_accepting_state
	add	x3, x3, :lo12:yy_last_accepting_state
	adrp	x4, yy_last_accepting_cpos
	add	x4, x4, :lo12:yy_last_accepting_cpos
	adrp	x5, yy_base
	add	x5, x5, :lo12:yy_base
	adrp	x6, yy_chk
	add	x6, x6, :lo12:yy_chk
	adrp	x7, yy_nxt
	add	x7, x7, :lo12:yy_nxt
	adrp	x19, yytext
	add	x19, x19, :lo12:yytext
	adrp	x20, yyleng
	add	x20, x20, :lo12:yyleng
	mov	w21, #0
	adrp	x22, yy_n_chars
	add	x22, x22, :lo12:yy_n_chars
	adrp	x23, yy_did_buffer_switch_on_eof
	add	x23, x23, :lo12:yy_did_buffer_switch_on_eof
	adrp	x24, .L.str.2
	add	x24, x24, :lo12:.L.str.2
	adrp	x25, :got:yylval
	ldr	x25, [x25, :got_lo12:yylval]
	mov	x26, x25
	mov	x27, x26
	orr	x28, xzr, #0x4
	add	x28, x26, x28
	adrp	x30, :got:strlwr
	ldr	x30, [x30, :got_lo12:strlwr]
	stur	x8, [x29, #-144]        // 8-byte Folded Spill
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
	stur	x8, [x29, #-152]        // 8-byte Folded Spill
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-160]        // 8-byte Folded Spill
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	stur	x8, [x29, #-168]        // 8-byte Folded Spill
	adrp	x8, yy_def
	add	x8, x8, :lo12:yy_def
	stur	x8, [x29, #-176]        // 8-byte Folded Spill
	adrp	x8, yy_meta
	add	x8, x8, :lo12:yy_meta
	stur	x8, [x29, #-184]        // 8-byte Folded Spill
	ldur	x8, [x29, #-144]        // 8-byte Folded Reload
	ldr	w8, [x8]
	stur	x25, [x29, #-192]       // 8-byte Folded Spill
	stur	x9, [x29, #-200]        // 8-byte Folded Spill
	stur	x10, [x29, #-208]       // 8-byte Folded Spill
	stur	x11, [x29, #-216]       // 8-byte Folded Spill
	stur	x12, [x29, #-224]       // 8-byte Folded Spill
	str	x13, [sp, #232]         // 8-byte Folded Spill
	str	x14, [sp, #224]         // 8-byte Folded Spill
	str	x15, [sp, #216]         // 8-byte Folded Spill
	str	w16, [sp, #212]         // 4-byte Folded Spill
	str	x17, [sp, #200]         // 8-byte Folded Spill
	str	x18, [sp, #192]         // 8-byte Folded Spill
	str	x0, [sp, #184]          // 8-byte Folded Spill
	str	x1, [sp, #176]          // 8-byte Folded Spill
	str	x2, [sp, #168]          // 8-byte Folded Spill
	str	x3, [sp, #160]          // 8-byte Folded Spill
	str	x4, [sp, #152]          // 8-byte Folded Spill
	str	x5, [sp, #144]          // 8-byte Folded Spill
	str	x6, [sp, #136]          // 8-byte Folded Spill
	str	x7, [sp, #128]          // 8-byte Folded Spill
	str	x19, [sp, #120]         // 8-byte Folded Spill
	str	x20, [sp, #112]         // 8-byte Folded Spill
	str	w21, [sp, #108]         // 4-byte Folded Spill
	str	x22, [sp, #96]          // 8-byte Folded Spill
	str	x23, [sp, #88]          // 8-byte Folded Spill
	str	x24, [sp, #80]          // 8-byte Folded Spill
	str	x30, [sp, #72]          // 8-byte Folded Spill
	str	x26, [sp, #64]          // 8-byte Folded Spill
	str	x27, [sp, #56]          // 8-byte Folded Spill
	str	x28, [sp, #48]          // 8-byte Folded Spill
	cbnz	w8, .LBB0_12
// %bb.1:
	orr	w8, wzr, #0x1
	ldur	x9, [x29, #-144]        // 8-byte Folded Reload
	str	w8, [x9]
	ldur	x10, [x29, #-200]       // 8-byte Folded Reload
	ldr	w8, [x10]
	cbnz	w8, .LBB0_3
// %bb.2:
	orr	w8, wzr, #0x1
	ldur	x9, [x29, #-200]        // 8-byte Folded Reload
	str	w8, [x9]
.LBB0_3:
	ldur	x8, [x29, #-208]        // 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-216]       // 8-byte Folded Reload
	cmp	x9, x10
	cset	w11, ne
	tbnz	w11, #0, .LBB0_5
// %bb.4:
	ldur	x8, [x29, #-224]        // 8-byte Folded Reload
	ldur	x9, [x29, #-208]        // 8-byte Folded Reload
	str	x8, [x9]
.LBB0_5:
	ldr	x8, [sp, #232]          // 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-216]       // 8-byte Folded Reload
	cmp	x9, x10
	cset	w11, ne
	tbnz	w11, #0, .LBB0_7
// %bb.6:
	ldr	x8, [sp, #224]          // 8-byte Folded Reload
	ldr	x9, [sp, #232]          // 8-byte Folded Reload
	str	x8, [x9]
.LBB0_7:
	ldr	x8, [sp, #216]          // 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-216]       // 8-byte Folded Reload
	cmp	x9, x10
	cset	w11, ne
	tbnz	w11, #0, .LBB0_8
	b	.LBB0_9
.LBB0_8:
	orr	x8, xzr, #0x8
	ldr	x9, [sp, #216]          // 8-byte Folded Reload
	ldr	x10, [x9]
	ldr	x11, [sp, #200]         // 8-byte Folded Reload
	ldr	x12, [x11]
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x8, [x8]
	ldur	x10, [x29, #-216]       // 8-byte Folded Reload
	cmp	x8, x10
	cset	w13, ne
	tbnz	w13, #0, .LBB0_11
	b	.LBB0_10
.LBB0_9:
	ldr	w8, [sp, #212]          // 4-byte Folded Reload
	tbnz	w8, #0, .LBB0_11
.LBB0_10:
	orr	w1, wzr, #0x4000
	orr	x8, xzr, #0x8
	str	w1, [sp, #44]           // 4-byte Folded Spill
	str	x8, [sp, #32]           // 8-byte Folded Spill
	bl	yyensure_buffer_stack
	ldur	x8, [x29, #-208]        // 8-byte Folded Reload
	ldr	x0, [x8]
	ldr	w1, [sp, #44]           // 4-byte Folded Reload
	bl	yy_create_buffer
	ldr	x8, [sp, #216]          // 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	x10, [sp, #200]         // 8-byte Folded Reload
	ldr	x11, [x10]
	ldr	x12, [sp, #32]          // 8-byte Folded Reload
	mul	x11, x12, x11
	add	x9, x9, x11
	str	x0, [x9]
.LBB0_11:
	bl	yy_load_buffer_state
.LBB0_12:
.LBB0_13:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_14 Depth 2
                                        //       Child Loop BB0_15 Depth 3
                                        //         Child Loop BB0_18 Depth 4
                                        //       Child Loop BB0_25 Depth 3
                                        //         Child Loop BB0_28 Depth 4
	ldr	x8, [sp, #192]          // 8-byte Folded Reload
	ldr	x9, [x8]
	stur	x9, [x29, #-104]
	ldr	x9, [sp, #184]          // 8-byte Folded Reload
	ldrb	w10, [x9]
	ldur	x11, [x29, #-104]
	strb	w10, [x11]
	ldur	x11, [x29, #-104]
	stur	x11, [x29, #-112]
	ldur	x11, [x29, #-200]       // 8-byte Folded Reload
	ldr	w10, [x11]
	stur	w10, [x29, #-96]
.LBB0_14:                               //   Parent Loop BB0_13 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_15 Depth 3
                                        //         Child Loop BB0_18 Depth 4
                                        //       Child Loop BB0_25 Depth 3
                                        //         Child Loop BB0_28 Depth 4
.LBB0_15:                               //   Parent Loop BB0_13 Depth=1
                                        //     Parent Loop BB0_14 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB0_18 Depth 4
	mov	w8, #0
	orr	x9, xzr, #0x2
	ldur	x10, [x29, #-104]
	ldrb	w11, [x10]
	mov	w10, w11
	ubfx	x10, x10, #0, #8
	ldr	x12, [sp, #176]         // 8-byte Folded Reload
	add	x10, x12, x10
	ldrb	w11, [x10]
	sturb	w11, [x29, #-117]
	ldur	w11, [x29, #-96]
	mov	w10, w11
	sxtw	x10, w10
	mul	x9, x9, x10
	ldr	x10, [sp, #168]         // 8-byte Folded Reload
	add	x9, x10, x9
	ldrh	w11, [x9]
	uxth	w11, w11
	orr	w13, wzr, #0xffff
	and	w8, w8, w13
	cmp	w11, w8
	cset	w8, ne
	tbnz	w8, #0, .LBB0_16
	b	.LBB0_17
.LBB0_16:                               //   in Loop: Header=BB0_15 Depth=3
	ldur	w8, [x29, #-96]
	ldr	x9, [sp, #160]          // 8-byte Folded Reload
	str	w8, [x9]
	ldur	x10, [x29, #-104]
	ldr	x11, [sp, #152]         // 8-byte Folded Reload
	str	x10, [x11]
.LBB0_17:                               //   in Loop: Header=BB0_15 Depth=3
.LBB0_18:                               //   Parent Loop BB0_13 Depth=1
                                        //     Parent Loop BB0_14 Depth=2
                                        //       Parent Loop BB0_15 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	orr	x8, xzr, #0x2
	ldur	w9, [x29, #-96]
	mov	w10, w9
	sxtw	x10, w10
	mul	x10, x8, x10
	ldr	x11, [sp, #144]         // 8-byte Folded Reload
	add	x10, x11, x10
	ldrh	w9, [x10]
	sxth	w9, w9
	ldurb	w12, [x29, #-117]
	uxtb	w12, w12
	add	w9, w9, w12
	mov	w10, w9
	sxtw	x10, w10
	mul	x8, x8, x10
	ldr	x10, [sp, #136]         // 8-byte Folded Reload
	add	x8, x10, x8
	ldrh	w9, [x8]
	sxth	w9, w9
	ldur	w12, [x29, #-96]
	cmp	w9, w12
	cset	w9, ne
	tbnz	w9, #0, .LBB0_19
	b	.LBB0_22
.LBB0_19:                               //   in Loop: Header=BB0_18 Depth=4
	mov	w8, #79
	orr	x9, xzr, #0x2
	ldur	w10, [x29, #-96]
	mov	w11, w10
	sxtw	x11, w11
	mul	x9, x9, x11
	ldur	x11, [x29, #-176]       // 8-byte Folded Reload
	add	x9, x11, x9
	ldrh	w10, [x9]
	sxth	w10, w10
	stur	w10, [x29, #-96]
	ldur	w10, [x29, #-96]
	cmp	w10, w8
	cset	w8, ge
	tbnz	w8, #0, .LBB0_20
	b	.LBB0_21
.LBB0_20:                               //   in Loop: Header=BB0_18 Depth=4
	ldurb	w8, [x29, #-117]
	mov	w9, w8
	ubfx	x9, x9, #0, #8
	ldur	x10, [x29, #-184]       // 8-byte Folded Reload
	add	x9, x10, x9
	ldrb	w8, [x9]
	sturb	w8, [x29, #-117]
.LBB0_21:                               //   in Loop: Header=BB0_18 Depth=4
	b	.LBB0_18
.LBB0_22:                               //   in Loop: Header=BB0_15 Depth=3
	orr	x8, xzr, #0x1
	orr	x9, xzr, #0x2
	ldur	w10, [x29, #-96]
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x9, x11
	ldr	x12, [sp, #144]         // 8-byte Folded Reload
	add	x11, x12, x11
	ldrh	w10, [x11]
	sxth	w10, w10
	ldurb	w13, [x29, #-117]
	uxtb	w13, w13
	add	w10, w10, w13
	mov	w11, w10
	sxtw	x11, w11
	mul	x9, x9, x11
	ldr	x11, [sp, #128]         // 8-byte Folded Reload
	add	x9, x11, x9
	ldrh	w10, [x9]
	sxth	w10, w10
	stur	w10, [x29, #-96]
	ldur	x9, [x29, #-104]
	add	x8, x9, x8
	stur	x8, [x29, #-104]
// %bb.23:                              //   in Loop: Header=BB0_15 Depth=3
	mov	w8, #153
	orr	x9, xzr, #0x2
	ldur	w10, [x29, #-96]
	mov	w11, w10
	sxtw	x11, w11
	mul	x9, x9, x11
	ldr	x11, [sp, #144]         // 8-byte Folded Reload
	add	x9, x11, x9
	ldrh	w10, [x9]
	sxth	w10, w10
	cmp	w10, w8
	cset	w8, ne
	tbnz	w8, #0, .LBB0_15
// %bb.24:                              //   in Loop: Header=BB0_14 Depth=2
.LBB0_25:                               //   Parent Loop BB0_13 Depth=1
                                        //     Parent Loop BB0_14 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB0_28 Depth 4
	orr	x8, xzr, #0x2
	ldur	w9, [x29, #-96]
	mov	w10, w9
	sxtw	x10, w10
	mul	x8, x8, x10
	ldr	x10, [sp, #168]         // 8-byte Folded Reload
	add	x8, x10, x8
	ldrh	w9, [x8]
	sxth	w9, w9
	stur	w9, [x29, #-116]
	ldur	w9, [x29, #-116]
	cbz	w9, .LBB0_26
	b	.LBB0_27
.LBB0_26:                               //   in Loop: Header=BB0_25 Depth=3
	orr	x8, xzr, #0x2
	ldr	x9, [sp, #152]          // 8-byte Folded Reload
	ldr	x10, [x9]
	stur	x10, [x29, #-104]
	ldr	x10, [sp, #160]         // 8-byte Folded Reload
	ldr	w11, [x10]
	stur	w11, [x29, #-96]
	ldur	w11, [x29, #-96]
	mov	w12, w11
	sxtw	x12, w12
	mul	x8, x8, x12
	ldr	x12, [sp, #168]         // 8-byte Folded Reload
	add	x8, x12, x8
	ldrh	w11, [x8]
	sxth	w11, w11
	stur	w11, [x29, #-116]
.LBB0_27:                               //   in Loop: Header=BB0_25 Depth=3
	ldur	x8, [x29, #-112]
	ldr	x9, [sp, #120]          // 8-byte Folded Reload
	str	x8, [x9]
	ldur	x8, [x29, #-104]
	ldur	x10, [x29, #-112]
	subs	x8, x8, x10
	mov	w11, w8
	ldr	x8, [sp, #112]          // 8-byte Folded Reload
	str	w11, [x8]
	ldur	x10, [x29, #-104]
	ldrb	w11, [x10]
	ldr	x10, [sp, #184]         // 8-byte Folded Reload
	strb	w11, [x10]
	ldur	x12, [x29, #-104]
	ldr	w11, [sp, #108]         // 4-byte Folded Reload
	strb	w11, [x12]
	ldur	x12, [x29, #-104]
	ldr	x13, [sp, #192]         // 8-byte Folded Reload
	str	x12, [x13]
.LBB0_28:                               //   Parent Loop BB0_13 Depth=1
                                        //     Parent Loop BB0_14 Depth=2
                                        //       Parent Loop BB0_25 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldur	w8, [x29, #-116]
	str	w8, [sp, #28]           // 4-byte Folded Spill
	cbz	w8, .LBB0_63
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_28 Depth=4
	orr	w8, wzr, #0x1
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_64
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_28 Depth=4
	orr	w8, wzr, #0x2
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_65
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_28 Depth=4
	orr	w8, wzr, #0x3
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_66
	b	.LBB0_32
.LBB0_32:                               //   in Loop: Header=BB0_28 Depth=4
	orr	w8, wzr, #0x4
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_67
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_28 Depth=4
	mov	w8, #5
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_68
	b	.LBB0_34
.LBB0_34:                               //   in Loop: Header=BB0_28 Depth=4
	orr	w8, wzr, #0x6
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_69
	b	.LBB0_35
.LBB0_35:                               //   in Loop: Header=BB0_28 Depth=4
	orr	w8, wzr, #0x7
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_70
	b	.LBB0_36
.LBB0_36:                               //   in Loop: Header=BB0_28 Depth=4
	orr	w8, wzr, #0x8
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_71
	b	.LBB0_37
.LBB0_37:                               //   in Loop: Header=BB0_28 Depth=4
	mov	w8, #9
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_72
	b	.LBB0_38
.LBB0_38:                               //   in Loop: Header=BB0_28 Depth=4
	mov	w8, #10
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_73
	b	.LBB0_39
.LBB0_39:                               //   in Loop: Header=BB0_28 Depth=4
	mov	w8, #11
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_74
	b	.LBB0_40
.LBB0_40:                               //   in Loop: Header=BB0_28 Depth=4
	orr	w8, wzr, #0xc
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_75
	b	.LBB0_41
.LBB0_41:                               //   in Loop: Header=BB0_28 Depth=4
	mov	w8, #13
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_76
	b	.LBB0_42
.LBB0_42:                               //   in Loop: Header=BB0_28 Depth=4
	orr	w8, wzr, #0xe
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_77
	b	.LBB0_43
.LBB0_43:                               //   in Loop: Header=BB0_28 Depth=4
	orr	w8, wzr, #0xf
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_78
	b	.LBB0_44
.LBB0_44:                               //   in Loop: Header=BB0_28 Depth=4
	orr	w8, wzr, #0x10
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_79
	b	.LBB0_45
.LBB0_45:                               //   in Loop: Header=BB0_28 Depth=4
	mov	w8, #17
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_80
	b	.LBB0_46
.LBB0_46:                               //   in Loop: Header=BB0_28 Depth=4
	mov	w8, #18
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_81
	b	.LBB0_47
.LBB0_47:                               //   in Loop: Header=BB0_28 Depth=4
	mov	w8, #19
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_82
	b	.LBB0_48
.LBB0_48:                               //   in Loop: Header=BB0_28 Depth=4
	mov	w8, #20
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_83
	b	.LBB0_49
.LBB0_49:                               //   in Loop: Header=BB0_28 Depth=4
	mov	w8, #21
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_84
	b	.LBB0_50
.LBB0_50:                               //   in Loop: Header=BB0_28 Depth=4
	mov	w8, #22
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_85
	b	.LBB0_51
.LBB0_51:                               //   in Loop: Header=BB0_28 Depth=4
	mov	w8, #23
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_86
	b	.LBB0_52
.LBB0_52:                               //   in Loop: Header=BB0_28 Depth=4
	orr	w8, wzr, #0x18
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_87
	b	.LBB0_53
.LBB0_53:                               //   in Loop: Header=BB0_28 Depth=4
	mov	w8, #25
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_88
	b	.LBB0_54
.LBB0_54:                               //   in Loop: Header=BB0_28 Depth=4
	mov	w8, #26
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_89
	b	.LBB0_55
.LBB0_55:                               //   in Loop: Header=BB0_28 Depth=4
	mov	w8, #27
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_90
	b	.LBB0_56
.LBB0_56:                               //   in Loop: Header=BB0_28 Depth=4
	orr	w8, wzr, #0x1c
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_95
	b	.LBB0_57
.LBB0_57:                               //   in Loop: Header=BB0_28 Depth=4
	mov	w8, #29
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_96
	b	.LBB0_58
.LBB0_58:                               //   in Loop: Header=BB0_28 Depth=4
	orr	w8, wzr, #0x1e
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_97
	b	.LBB0_59
.LBB0_59:                               //   in Loop: Header=BB0_28 Depth=4
	orr	w8, wzr, #0x1f
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_98
	b	.LBB0_60
.LBB0_60:                               //   in Loop: Header=BB0_28 Depth=4
	mov	w8, #33
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_103
	b	.LBB0_61
.LBB0_61:                               //   in Loop: Header=BB0_28 Depth=4
	orr	w8, wzr, #0x20
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_104
	b	.LBB0_62
.LBB0_62:
	b	.LBB0_124
.LBB0_63:                               //   in Loop: Header=BB0_25 Depth=3
	ldr	x8, [sp, #184]          // 8-byte Folded Reload
	ldrb	w9, [x8]
	ldur	x10, [x29, #-104]
	strb	w9, [x10]
	ldr	x10, [sp, #152]         // 8-byte Folded Reload
	ldr	x11, [x10]
	stur	x11, [x29, #-104]
	ldr	x11, [sp, #160]         // 8-byte Folded Reload
	ldr	w9, [x11]
	stur	w9, [x29, #-96]
	b	.LBB0_25
.LBB0_64:
	mov	w8, #258
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_65:
	mov	w8, #259
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_66:
	mov	w8, #260
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_67:
	mov	w8, #274
	ldr	x9, [sp, #120]          // 8-byte Folded Reload
	ldr	x1, [x9]
	ldur	x0, [x29, #-160]        // 8-byte Folded Reload
	str	w8, [sp, #24]           // 4-byte Folded Spill
	bl	printf
	ldr	w8, [sp, #24]           // 4-byte Folded Reload
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_68:
	mov	w8, #275
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_69:
	mov	w8, #273
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_70:
	mov	w8, #261
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_71:
	mov	w8, #262
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_72:
	mov	w8, #263
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_73:
	mov	w8, #264
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_74:
	mov	w8, #265
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_75:
	mov	w8, #266
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_76:
	mov	w8, #267
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_77:
	mov	w8, #268
	ldr	x9, [sp, #120]          // 8-byte Folded Reload
	ldr	x2, [x9]
	ldr	x0, [sp, #224]          // 8-byte Folded Reload
	ldur	x1, [x29, #-152]        // 8-byte Folded Reload
	str	w8, [sp, #20]           // 4-byte Folded Spill
	bl	fprintf
	ldr	w8, [sp, #20]           // 4-byte Folded Reload
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_78:
	mov	w8, #271
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_79:
	mov	w8, #272
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_80:
	mov	w8, #276
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_81:
	mov	w8, #277
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_82:
	mov	w8, #278
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_83:
	mov	w8, #279
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_84:
	mov	w8, #280
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_85:
	mov	w8, #281
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_86:
	mov	w8, #282
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_87:
	stur	wzr, [x29, #-92]
	b	.LBB0_126
.LBB0_88:
	mov	w8, #270
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_89:
	mov	w8, #285
	ldr	x9, [sp, #120]          // 8-byte Folded Reload
	ldr	x0, [x9]
	ldr	x10, [sp, #72]          // 8-byte Folded Reload
	str	w8, [sp, #16]           // 4-byte Folded Spill
	blr	x10
	ldr	x9, [sp, #120]          // 8-byte Folded Reload
	ldr	x1, [x9]
	ldur	x10, [x29, #-192]       // 8-byte Folded Reload
	mov	x0, x10
	bl	strcpy
	ldr	w8, [sp, #16]           // 4-byte Folded Reload
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_90:
	orr	w8, wzr, #0x1
	ldr	x9, [sp, #56]           // 8-byte Folded Reload
	str	w8, [x9]
	stur	wzr, [x29, #-124]
.LBB0_91:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-124]
	ldr	x9, [sp, #112]          // 8-byte Folded Reload
	ldr	w10, [x9]
	subs	w10, w10, #2            // =2
	cmp	w8, w10
	cset	w8, lt
	tbnz	w8, #0, .LBB0_92
	b	.LBB0_94
.LBB0_92:                               //   in Loop: Header=BB0_91 Depth=1
	ldr	x8, [sp, #120]          // 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	w10, [x29, #-124]
	add	w10, w10, #1            // =1
	mov	w11, w10
	sxtw	x11, w11
	add	x9, x9, x11
	ldrb	w10, [x9]
	ldur	w12, [x29, #-124]
	mov	w9, w12
	sxtw	x9, w9
	ldr	x11, [sp, #48]          // 8-byte Folded Reload
	add	x9, x11, x9
	strb	w10, [x9]
// %bb.93:                              //   in Loop: Header=BB0_91 Depth=1
	ldur	w8, [x29, #-124]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-124]
	b	.LBB0_91
.LBB0_94:
	mov	w8, #283
	ldr	x9, [sp, #112]          // 8-byte Folded Reload
	ldr	w10, [x9]
	subs	w10, w10, #2            // =2
	mov	w11, w10
	sxtw	x11, w11
	ldr	x12, [sp, #48]          // 8-byte Folded Reload
	add	x11, x12, x11
	ldr	w10, [sp, #108]         // 4-byte Folded Reload
	strb	w10, [x11]
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_95:
	mov	w8, #284
	ldr	x9, [sp, #56]           // 8-byte Folded Reload
	str	wzr, [x9]
	ldr	x10, [sp, #120]         // 8-byte Folded Reload
	ldr	x0, [x10]
	str	w8, [sp, #12]           // 4-byte Folded Spill
	bl	atoi
	ldr	x9, [sp, #64]           // 8-byte Folded Reload
	str	w0, [x9, #4]
	ldr	w8, [sp, #12]           // 4-byte Folded Reload
	stur	w8, [x29, #-92]
	b	.LBB0_126
.LBB0_96:                               //   in Loop: Header=BB0_13 Depth=1
	b	.LBB0_125
.LBB0_97:                               //   in Loop: Header=BB0_13 Depth=1
	ldr	x8, [sp, #120]          // 8-byte Folded Reload
	ldr	x0, [x8]
	bl	puts
	ldr	x8, [sp, #80]           // 8-byte Folded Reload
	mov	x0, x8
	bl	yyerror
	b	.LBB0_125
.LBB0_98:                               //   in Loop: Header=BB0_13 Depth=1
// %bb.99:                              //   in Loop: Header=BB0_13 Depth=1
	orr	x2, xzr, #0x1
	ldr	x8, [sp, #120]          // 8-byte Folded Reload
	ldr	x0, [x8]
	ldr	x9, [sp, #112]          // 8-byte Folded Reload
	ldr	w10, [x9]
	mov	w11, w10
	sxtw	x1, w11
	ldr	x11, [sp, #232]         // 8-byte Folded Reload
	ldr	x3, [x11]
	bl	fwrite
	cbnz	x0, .LBB0_100
	b	.LBB0_101
.LBB0_100:                              //   in Loop: Header=BB0_13 Depth=1
.LBB0_101:                              //   in Loop: Header=BB0_13 Depth=1
// %bb.102:                             //   in Loop: Header=BB0_13 Depth=1
	b	.LBB0_125
.LBB0_103:
	stur	wzr, [x29, #-92]
	b	.LBB0_126
.LBB0_104:                              //   in Loop: Header=BB0_28 Depth=4
	orr	x8, xzr, #0x8
	ldur	x9, [x29, #-104]
	ldr	x10, [sp, #120]         // 8-byte Folded Reload
	ldr	x11, [x10]
	subs	x9, x9, x11
	mov	w12, w9
	subs	w12, w12, #1            // =1
	stur	w12, [x29, #-128]
	ldr	x9, [sp, #184]          // 8-byte Folded Reload
	ldrb	w12, [x9]
	ldur	x11, [x29, #-104]
	strb	w12, [x11]
	ldr	x11, [sp, #216]         // 8-byte Folded Reload
	ldr	x13, [x11]
	ldr	x14, [sp, #200]         // 8-byte Folded Reload
	ldr	x15, [x14]
	mul	x8, x8, x15
	add	x8, x13, x8
	ldr	x8, [x8]
	ldr	w12, [x8, #56]
	cbz	w12, .LBB0_105
	b	.LBB0_106
.LBB0_105:                              //   in Loop: Header=BB0_28 Depth=4
	orr	x8, xzr, #0x8
	orr	w9, wzr, #0x1
	ldr	x10, [sp, #216]         // 8-byte Folded Reload
	ldr	x11, [x10]
	ldr	x12, [sp, #200]         // 8-byte Folded Reload
	ldr	x13, [x12]
	mul	x13, x8, x13
	add	x11, x11, x13
	ldr	x11, [x11]
	ldr	w14, [x11, #28]
	ldr	x11, [sp, #96]          // 8-byte Folded Reload
	str	w14, [x11]
	ldur	x13, [x29, #-208]       // 8-byte Folded Reload
	ldr	x15, [x13]
	ldr	x16, [x10]
	ldr	x17, [x12]
	mul	x17, x8, x17
	add	x16, x16, x17
	ldr	x16, [x16]
	str	x15, [x16]
	ldr	x15, [x10]
	ldr	x16, [x12]
	mul	x8, x8, x16
	add	x8, x15, x8
	ldr	x8, [x8]
	str	w9, [x8, #56]
.LBB0_106:                              //   in Loop: Header=BB0_28 Depth=4
	orr	x8, xzr, #0x8
	ldr	x9, [sp, #192]          // 8-byte Folded Reload
	ldr	x10, [x9]
	ldr	x11, [sp, #216]         // 8-byte Folded Reload
	ldr	x12, [x11]
	ldr	x13, [sp, #200]         // 8-byte Folded Reload
	ldr	x14, [x13]
	mul	x8, x8, x14
	add	x8, x12, x8
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	ldr	x12, [sp, #96]          // 8-byte Folded Reload
	ldr	w15, [x12]
	mov	w14, w15
	sxtw	x14, w14
	add	x8, x8, x14
	cmp	x10, x8
	cset	w15, ls
	tbnz	w15, #0, .LBB0_107
	b	.LBB0_110
.LBB0_107:                              //   in Loop: Header=BB0_25 Depth=3
	ldr	x8, [sp, #120]          // 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	w10, [x29, #-128]
	mov	w11, w10
	sxtw	x11, w11
	add	x9, x9, x11
	ldr	x11, [sp, #192]         // 8-byte Folded Reload
	str	x9, [x11]
	bl	yy_get_previous_state
	stur	w0, [x29, #-96]
	ldur	w0, [x29, #-96]
	bl	yy_try_NUL_trans
	stur	w0, [x29, #-132]
	ldr	x8, [sp, #120]          // 8-byte Folded Reload
	ldr	x9, [x8]
	stur	x9, [x29, #-112]
	ldur	w10, [x29, #-132]
	cbnz	w10, .LBB0_108
	b	.LBB0_109
.LBB0_108:                              //   in Loop: Header=BB0_14 Depth=2
	orr	x8, xzr, #0x1
	ldr	x9, [sp, #192]          // 8-byte Folded Reload
	ldr	x10, [x9]
	add	x8, x10, x8
	str	x8, [x9]
	stur	x8, [x29, #-104]
	ldur	w11, [x29, #-132]
	stur	w11, [x29, #-96]
	b	.LBB0_14
.LBB0_109:                              //   in Loop: Header=BB0_25 Depth=3
	ldr	x8, [sp, #192]          // 8-byte Folded Reload
	ldr	x9, [x8]
	stur	x9, [x29, #-104]
	b	.LBB0_25
.LBB0_110:                              //   in Loop: Header=BB0_28 Depth=4
	orr	w8, wzr, #0x1
	str	w8, [sp, #8]            // 4-byte Folded Spill
	bl	yy_get_next_buffer
	ldr	w8, [sp, #8]            // 4-byte Folded Reload
	cmp	w8, w0
	cset	w9, eq
	str	w0, [sp, #4]            // 4-byte Folded Spill
	tbnz	w9, #0, .LBB0_114
	b	.LBB0_111
.LBB0_111:                              //   in Loop: Header=BB0_25 Depth=3
	ldr	w8, [sp, #4]            // 4-byte Folded Reload
	cbz	w8, .LBB0_120
	b	.LBB0_112
.LBB0_112:                              //   in Loop: Header=BB0_25 Depth=3
	orr	w8, wzr, #0x2
	ldr	w9, [sp, #4]            // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB0_121
	b	.LBB0_113
.LBB0_113:                              //   in Loop: Header=BB0_13 Depth=1
	b	.LBB0_122
.LBB0_114:                              //   in Loop: Header=BB0_28 Depth=4
	ldr	x8, [sp, #88]           // 8-byte Folded Reload
	str	wzr, [x8]
	bl	yywrap
	cbnz	w0, .LBB0_115
	b	.LBB0_116
.LBB0_115:                              //   in Loop: Header=BB0_28 Depth=4
	orr	w8, wzr, #0x2
	ldr	x9, [sp, #120]          // 8-byte Folded Reload
	ldr	x10, [x9]
	ldr	x11, [sp, #192]         // 8-byte Folded Reload
	str	x10, [x11]
	ldur	x10, [x29, #-200]       // 8-byte Folded Reload
	ldr	w12, [x10]
	subs	w12, w12, #1            // =1
	sdiv	w8, w12, w8
	add	w8, w8, #32             // =32
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-116]
	b	.LBB0_28
.LBB0_116:                              //   in Loop: Header=BB0_13 Depth=1
	ldr	x8, [sp, #88]           // 8-byte Folded Reload
	ldr	w9, [x8]
	cbnz	w9, .LBB0_118
// %bb.117:                             //   in Loop: Header=BB0_13 Depth=1
	ldur	x8, [x29, #-208]        // 8-byte Folded Reload
	ldr	x0, [x8]
	bl	yyrestart
.LBB0_118:                              //   in Loop: Header=BB0_13 Depth=1
// %bb.119:                             //   in Loop: Header=BB0_13 Depth=1
	b	.LBB0_122
.LBB0_120:                              //   in Loop: Header=BB0_14 Depth=2
	ldr	x8, [sp, #120]          // 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	w10, [x29, #-128]
	mov	w11, w10
	sxtw	x11, w11
	add	x9, x9, x11
	ldr	x11, [sp, #192]         // 8-byte Folded Reload
	str	x9, [x11]
	bl	yy_get_previous_state
	stur	w0, [x29, #-96]
	ldr	x8, [sp, #192]          // 8-byte Folded Reload
	ldr	x9, [x8]
	stur	x9, [x29, #-104]
	ldr	x9, [sp, #120]          // 8-byte Folded Reload
	ldr	x11, [x9]
	stur	x11, [x29, #-112]
	b	.LBB0_14
.LBB0_121:                              //   in Loop: Header=BB0_25 Depth=3
	orr	x8, xzr, #0x8
	ldr	x9, [sp, #216]          // 8-byte Folded Reload
	ldr	x10, [x9]
	ldr	x11, [sp, #200]         // 8-byte Folded Reload
	ldr	x12, [x11]
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	ldr	x10, [sp, #96]          // 8-byte Folded Reload
	ldr	w13, [x10]
	mov	w12, w13
	sxtw	x12, w12
	add	x8, x8, x12
	ldr	x12, [sp, #192]         // 8-byte Folded Reload
	str	x8, [x12]
	bl	yy_get_previous_state
	stur	w0, [x29, #-96]
	ldr	x8, [sp, #192]          // 8-byte Folded Reload
	ldr	x9, [x8]
	stur	x9, [x29, #-104]
	ldr	x9, [sp, #120]          // 8-byte Folded Reload
	ldr	x10, [x9]
	stur	x10, [x29, #-112]
	b	.LBB0_25
.LBB0_122:                              //   in Loop: Header=BB0_13 Depth=1
// %bb.123:                             //   in Loop: Header=BB0_13 Depth=1
	b	.LBB0_125
.LBB0_124:
	ldur	x0, [x29, #-168]        // 8-byte Folded Reload
	bl	yy_fatal_error
.LBB0_125:                              //   in Loop: Header=BB0_13 Depth=1
	b	.LBB0_13
.LBB0_126:
	ldur	w0, [x29, #-92]
	ldp	x29, x30, [sp, #464]    // 8-byte Folded Reload
	ldp	x20, x19, [sp, #448]    // 8-byte Folded Reload
	ldp	x22, x21, [sp, #432]    // 8-byte Folded Reload
	ldp	x24, x23, [sp, #416]    // 8-byte Folded Reload
	ldp	x26, x25, [sp, #400]    // 8-byte Folded Reload
	ldp	x28, x27, [sp, #384]    // 8-byte Folded Reload
	add	sp, sp, #480            // =480
	ret
.Lfunc_end0:
	.size	yylex, .Lfunc_end0-yylex
                                        // -- End function
	.p2align	2               // -- Begin function yyensure_buffer_stack
	.type	yyensure_buffer_stack,@function
yyensure_buffer_stack:                  // @yyensure_buffer_stack
// %bb.0:
	sub	sp, sp, #80             // =80
	stp	x29, x30, [sp, #64]     // 8-byte Folded Spill
	add	x29, sp, #64            // =64
	adrp	x8, yy_buffer_stack
	add	x8, x8, :lo12:yy_buffer_stack
	mov	x9, #0
	adrp	x10, .L.str.12
	add	x10, x10, :lo12:.L.str.12
	adrp	x11, yy_buffer_stack_max
	add	x11, x11, :lo12:yy_buffer_stack_max
	adrp	x12, yy_buffer_stack_top
	add	x12, x12, :lo12:yy_buffer_stack_top
	ldr	x13, [x8]
	cmp	x13, x9
	cset	w14, ne
	stur	x8, [x29, #-24]         // 8-byte Folded Spill
	str	x9, [sp, #32]           // 8-byte Folded Spill
	str	x10, [sp, #24]          // 8-byte Folded Spill
	str	x11, [sp, #16]          // 8-byte Folded Spill
	str	x12, [sp, #8]           // 8-byte Folded Spill
	tbnz	w14, #0, .LBB1_4
// %bb.1:
	orr	x8, xzr, #0x8
	orr	x9, xzr, #0x1
	stur	x9, [x29, #-8]
	ldur	x9, [x29, #-8]
	mul	x0, x9, x8
	bl	yyalloc
	ldur	x8, [x29, #-24]         // 8-byte Folded Reload
	str	x0, [x8]
	ldr	x9, [x8]
	ldr	x0, [sp, #32]           // 8-byte Folded Reload
	cmp	x9, x0
	cset	w10, ne
	tbnz	w10, #0, .LBB1_3
// %bb.2:
	ldr	x0, [sp, #24]           // 8-byte Folded Reload
	bl	yy_fatal_error
.LBB1_3:
	mov	w8, #0
	orr	x9, xzr, #0x8
	ldur	x10, [x29, #-24]        // 8-byte Folded Reload
	ldr	x0, [x10]
	ldur	x11, [x29, #-8]
	mul	x2, x11, x9
	mov	w1, w8
	bl	memset
	ldur	x9, [x29, #-8]
	ldr	x10, [sp, #16]          // 8-byte Folded Reload
	str	x9, [x10]
	ldr	x9, [sp, #8]            // 8-byte Folded Reload
	str	xzr, [x9]
	b	.LBB1_8
.LBB1_4:
	ldr	x8, [sp, #8]            // 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	x10, [sp, #16]          // 8-byte Folded Reload
	ldr	x11, [x10]
	subs	x11, x11, #1            // =1
	cmp	x9, x11
	cset	w12, hs
	tbnz	w12, #0, .LBB1_5
	b	.LBB1_8
.LBB1_5:
	orr	x8, xzr, #0x8
	stur	x8, [x29, #-16]
	ldr	x9, [sp, #16]           // 8-byte Folded Reload
	ldr	x10, [x9]
	ldur	x11, [x29, #-16]
	add	x10, x10, x11
	stur	x10, [x29, #-8]
	ldur	x10, [x29, #-24]        // 8-byte Folded Reload
	ldr	x0, [x10]
	ldur	x11, [x29, #-8]
	mul	x1, x11, x8
	bl	yyrealloc
	ldur	x8, [x29, #-24]         // 8-byte Folded Reload
	str	x0, [x8]
	ldr	x9, [x8]
	ldr	x10, [sp, #32]          // 8-byte Folded Reload
	cmp	x9, x10
	cset	w12, ne
	tbnz	w12, #0, .LBB1_7
// %bb.6:
	ldr	x0, [sp, #24]           // 8-byte Folded Reload
	bl	yy_fatal_error
.LBB1_7:
	mov	w8, #0
	orr	x9, xzr, #0x8
	ldur	x10, [x29, #-24]        // 8-byte Folded Reload
	ldr	x11, [x10]
	ldr	x12, [sp, #16]          // 8-byte Folded Reload
	ldr	x13, [x12]
	mul	x13, x9, x13
	add	x11, x11, x13
	ldur	x13, [x29, #-16]
	mul	x2, x13, x9
	mov	x0, x11
	mov	w1, w8
	bl	memset
	ldur	x9, [x29, #-8]
	ldr	x10, [sp, #16]          // 8-byte Folded Reload
	str	x9, [x10]
.LBB1_8:
	ldp	x29, x30, [sp, #64]     // 8-byte Folded Reload
	add	sp, sp, #80             // =80
	ret
.Lfunc_end1:
	.size	yyensure_buffer_stack, .Lfunc_end1-yyensure_buffer_stack
                                        // -- End function
	.globl	yy_create_buffer        // -- Begin function yy_create_buffer
	.p2align	2
	.type	yy_create_buffer,@function
yy_create_buffer:                       // @yy_create_buffer
// %bb.0:
	sub	sp, sp, #64             // =64
	stp	x29, x30, [sp, #48]     // 8-byte Folded Spill
	add	x29, sp, #48            // =48
	orr	x8, xzr, #0x40
	mov	x9, #0
	adrp	x10, .L.str.4
	add	x10, x10, :lo12:.L.str.4
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	mov	x0, x8
	str	x10, [sp, #16]          // 8-byte Folded Spill
	str	x9, [sp, #8]            // 8-byte Folded Spill
	bl	yyalloc
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #8]            // 8-byte Folded Reload
	cmp	x8, x9
	cset	w1, ne
	tbnz	w1, #0, .LBB2_2
// %bb.1:
	ldr	x0, [sp, #16]           // 8-byte Folded Reload
	bl	yy_fatal_error
.LBB2_2:
	ldur	w8, [x29, #-12]
	ldr	x9, [sp, #24]
	str	w8, [x9, #24]
	ldr	x9, [sp, #24]
	ldr	w8, [x9, #24]
	add	w8, w8, #2              // =2
	mov	w9, w8
	sxtw	x0, w9
	bl	yyalloc
	ldr	x9, [sp, #24]
	str	x0, [x9, #8]
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #8]
	ldr	x0, [sp, #8]            // 8-byte Folded Reload
	cmp	x9, x0
	cset	w8, ne
	tbnz	w8, #0, .LBB2_4
// %bb.3:
	ldr	x0, [sp, #16]           // 8-byte Folded Reload
	bl	yy_fatal_error
.LBB2_4:
	orr	w8, wzr, #0x1
	ldr	x9, [sp, #24]
	str	w8, [x9, #32]
	ldr	x0, [sp, #24]
	ldur	x1, [x29, #-8]
	bl	yy_init_buffer
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]     // 8-byte Folded Reload
	add	sp, sp, #64             // =64
	ret
.Lfunc_end2:
	.size	yy_create_buffer, .Lfunc_end2-yy_create_buffer
                                        // -- End function
	.p2align	2               // -- Begin function yy_load_buffer_state
	.type	yy_load_buffer_state,@function
yy_load_buffer_state:                   // @yy_load_buffer_state
// %bb.0:
	adrp	x8, yy_buffer_stack
	add	x8, x8, :lo12:yy_buffer_stack
	adrp	x9, yy_buffer_stack_top
	add	x9, x9, :lo12:yy_buffer_stack_top
	orr	x10, xzr, #0x8
	adrp	x11, yy_n_chars
	add	x11, x11, :lo12:yy_n_chars
	adrp	x12, yy_c_buf_p
	add	x12, x12, :lo12:yy_c_buf_p
	adrp	x13, yytext
	add	x13, x13, :lo12:yytext
	adrp	x14, yyin
	add	x14, x14, :lo12:yyin
	adrp	x15, yy_hold_char
	add	x15, x15, :lo12:yy_hold_char
	ldr	x16, [x8]
	ldr	x17, [x9]
	mul	x17, x10, x17
	add	x16, x16, x17
	ldr	x16, [x16]
	ldr	w18, [x16, #28]
	str	w18, [x11]
	ldr	x11, [x8]
	ldr	x16, [x9]
	mul	x16, x10, x16
	add	x11, x11, x16
	ldr	x11, [x11]
	ldr	x11, [x11, #16]
	str	x11, [x12]
	str	x11, [x13]
	ldr	x8, [x8]
	ldr	x9, [x9]
	mul	x9, x10, x9
	add	x8, x8, x9
	ldr	x8, [x8]
	ldr	x8, [x8]
	str	x8, [x14]
	ldr	x8, [x12]
	ldrb	w18, [x8]
	strb	w18, [x15]
	ret
.Lfunc_end3:
	.size	yy_load_buffer_state, .Lfunc_end3-yy_load_buffer_state
                                        // -- End function
	.p2align	2               // -- Begin function yy_get_previous_state
	.type	yy_get_previous_state,@function
yy_get_previous_state:                  // @yy_get_previous_state
// %bb.0:
	sub	sp, sp, #112            // =112
	adrp	x8, yy_start
	add	x8, x8, :lo12:yy_start
	adrp	x9, yytext
	add	x9, x9, :lo12:yytext
	adrp	x10, yy_c_buf_p
	add	x10, x10, :lo12:yy_c_buf_p
	adrp	x11, yy_ec
	add	x11, x11, :lo12:yy_ec
	adrp	x12, yy_accept
	add	x12, x12, :lo12:yy_accept
	adrp	x13, yy_last_accepting_state
	add	x13, x13, :lo12:yy_last_accepting_state
	adrp	x14, yy_last_accepting_cpos
	add	x14, x14, :lo12:yy_last_accepting_cpos
	adrp	x15, yy_base
	add	x15, x15, :lo12:yy_base
	adrp	x16, yy_chk
	add	x16, x16, :lo12:yy_chk
	adrp	x17, yy_nxt
	add	x17, x17, :lo12:yy_nxt
	adrp	x18, yy_def
	add	x18, x18, :lo12:yy_def
	adrp	x0, yy_meta
	add	x0, x0, :lo12:yy_meta
	ldr	w1, [x8]
	str	w1, [sp, #108]
	ldr	x8, [x9]
	str	x8, [sp, #96]
	str	x0, [sp, #80]           // 8-byte Folded Spill
	str	x18, [sp, #72]          // 8-byte Folded Spill
	str	x10, [sp, #64]          // 8-byte Folded Spill
	str	x11, [sp, #56]          // 8-byte Folded Spill
	str	x12, [sp, #48]          // 8-byte Folded Spill
	str	x13, [sp, #40]          // 8-byte Folded Spill
	str	x14, [sp, #32]          // 8-byte Folded Spill
	str	x15, [sp, #24]          // 8-byte Folded Spill
	str	x16, [sp, #16]          // 8-byte Folded Spill
	str	x17, [sp, #8]           // 8-byte Folded Spill
.LBB4_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB4_8 Depth 2
	ldr	x8, [sp, #96]
	ldr	x9, [sp, #64]           // 8-byte Folded Reload
	ldr	x10, [x9]
	cmp	x8, x10
	cset	w11, lo
	tbnz	w11, #0, .LBB4_2
	b	.LBB4_14
.LBB4_2:                                //   in Loop: Header=BB4_1 Depth=1
	ldr	x8, [sp, #96]
	ldrb	w9, [x8]
	uxtb	w9, w9
	cbnz	w9, .LBB4_3
	b	.LBB4_4
.LBB4_3:                                //   in Loop: Header=BB4_1 Depth=1
	ldr	x8, [sp, #96]
	ldrb	w9, [x8]
	mov	w8, w9
	ubfx	x8, x8, #0, #8
	ldr	x10, [sp, #56]          // 8-byte Folded Reload
	add	x8, x10, x8
	ldrb	w9, [x8]
	uxtb	w9, w9
	str	w9, [sp, #4]            // 4-byte Folded Spill
	b	.LBB4_5
.LBB4_4:                                //   in Loop: Header=BB4_1 Depth=1
	orr	w8, wzr, #0x1
	str	w8, [sp, #4]            // 4-byte Folded Spill
.LBB4_5:                                //   in Loop: Header=BB4_1 Depth=1
	ldr	w8, [sp, #4]            // 4-byte Folded Reload
	mov	w9, #0
	orr	x10, xzr, #0x2
	strb	w8, [sp, #95]
	ldr	w8, [sp, #108]
	mov	w11, w8
	sxtw	x11, w11
	mul	x10, x10, x11
	ldr	x11, [sp, #48]          // 8-byte Folded Reload
	add	x10, x11, x10
	ldrh	w8, [x10]
	uxth	w8, w8
	orr	w12, wzr, #0xffff
	and	w9, w9, w12
	cmp	w8, w9
	cset	w8, ne
	tbnz	w8, #0, .LBB4_6
	b	.LBB4_7
.LBB4_6:                                //   in Loop: Header=BB4_1 Depth=1
	ldr	w8, [sp, #108]
	ldr	x9, [sp, #40]           // 8-byte Folded Reload
	str	w8, [x9]
	ldr	x10, [sp, #96]
	ldr	x11, [sp, #32]          // 8-byte Folded Reload
	str	x10, [x11]
.LBB4_7:                                //   in Loop: Header=BB4_1 Depth=1
.LBB4_8:                                //   Parent Loop BB4_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	orr	x8, xzr, #0x2
	ldr	w9, [sp, #108]
	mov	w10, w9
	sxtw	x10, w10
	mul	x10, x8, x10
	ldr	x11, [sp, #24]          // 8-byte Folded Reload
	add	x10, x11, x10
	ldrh	w9, [x10]
	sxth	w9, w9
	ldrb	w12, [sp, #95]
	uxtb	w12, w12
	add	w9, w9, w12
	mov	w10, w9
	sxtw	x10, w10
	mul	x8, x8, x10
	ldr	x10, [sp, #16]          // 8-byte Folded Reload
	add	x8, x10, x8
	ldrh	w9, [x8]
	sxth	w9, w9
	ldr	w12, [sp, #108]
	cmp	w9, w12
	cset	w9, ne
	tbnz	w9, #0, .LBB4_9
	b	.LBB4_12
.LBB4_9:                                //   in Loop: Header=BB4_8 Depth=2
	mov	w8, #79
	orr	x9, xzr, #0x2
	ldr	w10, [sp, #108]
	mov	w11, w10
	sxtw	x11, w11
	mul	x9, x9, x11
	ldr	x11, [sp, #72]          // 8-byte Folded Reload
	add	x9, x11, x9
	ldrh	w10, [x9]
	sxth	w10, w10
	str	w10, [sp, #108]
	ldr	w10, [sp, #108]
	cmp	w10, w8
	cset	w8, ge
	tbnz	w8, #0, .LBB4_10
	b	.LBB4_11
.LBB4_10:                               //   in Loop: Header=BB4_8 Depth=2
	ldrb	w8, [sp, #95]
	mov	w9, w8
	ubfx	x9, x9, #0, #8
	ldr	x10, [sp, #80]          // 8-byte Folded Reload
	add	x9, x10, x9
	ldrb	w8, [x9]
	strb	w8, [sp, #95]
.LBB4_11:                               //   in Loop: Header=BB4_8 Depth=2
	b	.LBB4_8
.LBB4_12:                               //   in Loop: Header=BB4_1 Depth=1
	orr	x8, xzr, #0x2
	ldr	w9, [sp, #108]
	mov	w10, w9
	sxtw	x10, w10
	mul	x10, x8, x10
	ldr	x11, [sp, #24]          // 8-byte Folded Reload
	add	x10, x11, x10
	ldrh	w9, [x10]
	sxth	w9, w9
	ldrb	w12, [sp, #95]
	uxtb	w12, w12
	add	w9, w9, w12
	mov	w10, w9
	sxtw	x10, w10
	mul	x8, x8, x10
	ldr	x10, [sp, #8]           // 8-byte Folded Reload
	add	x8, x10, x8
	ldrh	w9, [x8]
	sxth	w9, w9
	str	w9, [sp, #108]
// %bb.13:                              //   in Loop: Header=BB4_1 Depth=1
	orr	x8, xzr, #0x1
	ldr	x9, [sp, #96]
	add	x8, x9, x8
	str	x8, [sp, #96]
	b	.LBB4_1
.LBB4_14:
	ldr	w0, [sp, #108]
	add	sp, sp, #112            // =112
	ret
.Lfunc_end4:
	.size	yy_get_previous_state, .Lfunc_end4-yy_get_previous_state
                                        // -- End function
	.p2align	2               // -- Begin function yy_try_NUL_trans
	.type	yy_try_NUL_trans,@function
yy_try_NUL_trans:                       // @yy_try_NUL_trans
// %bb.0:
	sub	sp, sp, #96             // =96
	adrp	x8, yy_c_buf_p
	add	x8, x8, :lo12:yy_c_buf_p
	orr	w9, wzr, #0x1
	adrp	x10, yy_accept
	add	x10, x10, :lo12:yy_accept
	orr	x11, xzr, #0x2
	mov	w12, #0
	adrp	x13, yy_last_accepting_state
	add	x13, x13, :lo12:yy_last_accepting_state
	adrp	x14, yy_last_accepting_cpos
	add	x14, x14, :lo12:yy_last_accepting_cpos
	adrp	x15, yy_base
	add	x15, x15, :lo12:yy_base
	adrp	x16, yy_chk
	add	x16, x16, :lo12:yy_chk
	adrp	x17, yy_nxt
	add	x17, x17, :lo12:yy_nxt
	adrp	x18, yy_def
	add	x18, x18, :lo12:yy_def
	adrp	x1, yy_meta
	add	x1, x1, :lo12:yy_meta
	str	w0, [sp, #92]
	ldr	x8, [x8]
	str	x8, [sp, #80]
	strb	w9, [sp, #79]
	ldr	w9, [sp, #92]
	mov	w8, w9
	sxtw	x8, w8
	mul	x8, x11, x8
	add	x8, x10, x8
	ldrh	w9, [x8]
	uxth	w9, w9
	orr	w0, wzr, #0xffff
	and	w12, w12, w0
	cmp	w9, w12
	cset	w9, ne
	str	x1, [sp, #64]           // 8-byte Folded Spill
	str	x18, [sp, #56]          // 8-byte Folded Spill
	str	x17, [sp, #48]          // 8-byte Folded Spill
	str	x15, [sp, #40]          // 8-byte Folded Spill
	str	x16, [sp, #32]          // 8-byte Folded Spill
	str	x14, [sp, #24]          // 8-byte Folded Spill
	str	x13, [sp, #16]          // 8-byte Folded Spill
	tbnz	w9, #0, .LBB5_1
	b	.LBB5_2
.LBB5_1:
	ldr	w8, [sp, #92]
	ldr	x9, [sp, #16]           // 8-byte Folded Reload
	str	w8, [x9]
	ldr	x10, [sp, #80]
	ldr	x11, [sp, #24]          // 8-byte Folded Reload
	str	x10, [x11]
.LBB5_2:
.LBB5_3:                                // =>This Inner Loop Header: Depth=1
	orr	x8, xzr, #0x2
	ldr	w9, [sp, #92]
	mov	w10, w9
	sxtw	x10, w10
	mul	x10, x8, x10
	ldr	x11, [sp, #40]          // 8-byte Folded Reload
	add	x10, x11, x10
	ldrh	w9, [x10]
	sxth	w9, w9
	ldrb	w12, [sp, #79]
	uxtb	w12, w12
	add	w9, w9, w12
	mov	w10, w9
	sxtw	x10, w10
	mul	x8, x8, x10
	ldr	x10, [sp, #32]          // 8-byte Folded Reload
	add	x8, x10, x8
	ldrh	w9, [x8]
	sxth	w9, w9
	ldr	w12, [sp, #92]
	cmp	w9, w12
	cset	w9, ne
	tbnz	w9, #0, .LBB5_4
	b	.LBB5_7
.LBB5_4:                                //   in Loop: Header=BB5_3 Depth=1
	mov	w8, #79
	orr	x9, xzr, #0x2
	ldr	w10, [sp, #92]
	mov	w11, w10
	sxtw	x11, w11
	mul	x9, x9, x11
	ldr	x11, [sp, #56]          // 8-byte Folded Reload
	add	x9, x11, x9
	ldrh	w10, [x9]
	sxth	w10, w10
	str	w10, [sp, #92]
	ldr	w10, [sp, #92]
	cmp	w10, w8
	cset	w8, ge
	tbnz	w8, #0, .LBB5_5
	b	.LBB5_6
.LBB5_5:                                //   in Loop: Header=BB5_3 Depth=1
	ldrb	w8, [sp, #79]
	mov	w9, w8
	ubfx	x9, x9, #0, #8
	ldr	x10, [sp, #64]          // 8-byte Folded Reload
	add	x9, x10, x9
	ldrb	w8, [x9]
	strb	w8, [sp, #79]
.LBB5_6:                                //   in Loop: Header=BB5_3 Depth=1
	b	.LBB5_3
.LBB5_7:
	mov	w8, #78
	orr	x9, xzr, #0x2
	ldr	w10, [sp, #92]
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x9, x11
	ldr	x12, [sp, #40]          // 8-byte Folded Reload
	add	x11, x12, x11
	ldrh	w10, [x11]
	sxth	w10, w10
	ldrb	w13, [sp, #79]
	uxtb	w13, w13
	add	w10, w10, w13
	mov	w11, w10
	sxtw	x11, w11
	mul	x9, x9, x11
	ldr	x11, [sp, #48]          // 8-byte Folded Reload
	add	x9, x11, x9
	ldrh	w10, [x9]
	sxth	w10, w10
	str	w10, [sp, #92]
	ldr	w10, [sp, #92]
	cmp	w10, w8
	cset	w8, eq
	orr	w10, wzr, #0x1
	and	w8, w8, w10
	str	w8, [sp, #88]
	ldr	w8, [sp, #88]
	cbnz	w8, .LBB5_8
	b	.LBB5_9
.LBB5_8:
	mov	w8, #0
	str	w8, [sp, #12]           // 4-byte Folded Spill
	b	.LBB5_10
.LBB5_9:
	ldr	w8, [sp, #92]
	str	w8, [sp, #12]           // 4-byte Folded Spill
.LBB5_10:
	ldr	w8, [sp, #12]           // 4-byte Folded Reload
	mov	w0, w8
	add	sp, sp, #96             // =96
	ret
.Lfunc_end5:
	.size	yy_try_NUL_trans, .Lfunc_end5-yy_try_NUL_trans
                                        // -- End function
	.p2align	2               // -- Begin function yy_get_next_buffer
	.type	yy_get_next_buffer,@function
yy_get_next_buffer:                     // @yy_get_next_buffer
// %bb.0:
	sub	sp, sp, #224            // =224
	stp	x29, x30, [sp, #208]    // 8-byte Folded Spill
	add	x29, sp, #208           // =208
	adrp	x8, yy_buffer_stack
	add	x8, x8, :lo12:yy_buffer_stack
	adrp	x9, yy_buffer_stack_top
	add	x9, x9, :lo12:yy_buffer_stack_top
	orr	x10, xzr, #0x8
	adrp	x11, yytext
	add	x11, x11, :lo12:yytext
	adrp	x12, yy_c_buf_p
	add	x12, x12, :lo12:yy_c_buf_p
	adrp	x13, yy_n_chars
	add	x13, x13, :lo12:yy_n_chars
	adrp	x14, yyin
	add	x14, x14, :lo12:yyin
	adrp	x15, .L.str.10
	add	x15, x15, :lo12:.L.str.10
	mov	x16, #0
	adrp	x17, .L.str.9
	add	x17, x17, :lo12:.L.str.9
	adrp	x18, .L.str.11
	add	x18, x18, :lo12:.L.str.11
	mov	w0, #0
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	ldr	x2, [x8]
	ldr	x3, [x9]
	mul	x3, x10, x3
	add	x2, x2, x3
	ldr	x2, [x2]
	ldr	x2, [x2, #8]
	stur	x2, [x29, #-16]
	ldr	x2, [x11]
	stur	x2, [x29, #-24]
	ldr	x2, [x12]
	ldr	x3, [x8]
	ldr	x4, [x9]
	mul	x10, x10, x4
	add	x10, x3, x10
	ldr	x10, [x10]
	ldr	x10, [x10, #8]
	ldr	w5, [x13]
	add	w5, w5, #1              // =1
	mov	w3, w5
	sxtw	x3, w3
	add	x10, x10, x3
	cmp	x2, x10
	cset	w5, hi
	stur	x8, [x29, #-80]         // 8-byte Folded Spill
	stur	x9, [x29, #-88]         // 8-byte Folded Spill
	stur	x1, [x29, #-96]         // 8-byte Folded Spill
	str	x11, [sp, #104]         // 8-byte Folded Spill
	str	x12, [sp, #96]          // 8-byte Folded Spill
	str	x13, [sp, #88]          // 8-byte Folded Spill
	str	x14, [sp, #80]          // 8-byte Folded Spill
	str	x15, [sp, #72]          // 8-byte Folded Spill
	str	x16, [sp, #64]          // 8-byte Folded Spill
	str	x17, [sp, #56]          // 8-byte Folded Spill
	str	x18, [sp, #48]          // 8-byte Folded Spill
	str	w0, [sp, #44]           // 4-byte Folded Spill
	tbnz	w5, #0, .LBB6_1
	b	.LBB6_2
.LBB6_1:
	ldur	x0, [x29, #-96]         // 8-byte Folded Reload
	bl	yy_fatal_error
.LBB6_2:
	orr	x8, xzr, #0x8
	ldur	x9, [x29, #-80]         // 8-byte Folded Reload
	ldr	x10, [x9]
	ldur	x11, [x29, #-88]        // 8-byte Folded Reload
	ldr	x12, [x11]
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x8, [x8]
	ldr	w13, [x8, #52]
	cbz	w13, .LBB6_3
	b	.LBB6_6
.LBB6_3:
	orr	x8, xzr, #0x1
	ldr	x9, [sp, #96]           // 8-byte Folded Reload
	ldr	x10, [x9]
	ldr	x11, [sp, #104]         // 8-byte Folded Reload
	ldr	x12, [x11]
	subs	x10, x10, x12
	subs	x10, x10, #0            // =0
	cmp	x10, x8
	cset	w13, eq
	tbnz	w13, #0, .LBB6_4
	b	.LBB6_5
.LBB6_4:
	orr	w8, wzr, #0x1
	stur	w8, [x29, #-4]
	b	.LBB6_59
.LBB6_5:
	orr	w8, wzr, #0x2
	stur	w8, [x29, #-4]
	b	.LBB6_59
.LBB6_6:
	ldr	x8, [sp, #96]           // 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	x10, [sp, #104]         // 8-byte Folded Reload
	ldr	x11, [x10]
	subs	x9, x9, x11
	subs	x9, x9, #1              // =1
	mov	w12, w9
	stur	w12, [x29, #-28]
	stur	wzr, [x29, #-32]
.LBB6_7:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-32]
	ldur	w9, [x29, #-28]
	cmp	w8, w9
	cset	w8, lt
	tbnz	w8, #0, .LBB6_8
	b	.LBB6_10
.LBB6_8:                                //   in Loop: Header=BB6_7 Depth=1
	orr	x8, xzr, #0x1
	ldur	x9, [x29, #-24]
	add	x10, x9, x8
	stur	x10, [x29, #-24]
	ldrb	w11, [x9]
	ldur	x9, [x29, #-16]
	add	x8, x9, x8
	stur	x8, [x29, #-16]
	strb	w11, [x9]
// %bb.9:                               //   in Loop: Header=BB6_7 Depth=1
	ldur	w8, [x29, #-32]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-32]
	b	.LBB6_7
.LBB6_10:
	orr	w8, wzr, #0x2
	orr	x9, xzr, #0x8
	ldur	x10, [x29, #-80]        // 8-byte Folded Reload
	ldr	x11, [x10]
	ldur	x12, [x29, #-88]        // 8-byte Folded Reload
	ldr	x13, [x12]
	mul	x9, x9, x13
	add	x9, x11, x9
	ldr	x9, [x9]
	ldr	w14, [x9, #56]
	cmp	w14, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB6_11
	b	.LBB6_12
.LBB6_11:
	orr	x8, xzr, #0x8
	ldr	x9, [sp, #88]           // 8-byte Folded Reload
	str	wzr, [x9]
	ldur	x10, [x29, #-80]        // 8-byte Folded Reload
	ldr	x11, [x10]
	ldur	x12, [x29, #-88]        // 8-byte Folded Reload
	ldr	x13, [x12]
	mul	x8, x8, x13
	add	x8, x11, x8
	ldr	x8, [x8]
	str	wzr, [x8, #28]
	b	.LBB6_48
.LBB6_12:
	orr	x8, xzr, #0x8
	ldur	x9, [x29, #-80]         // 8-byte Folded Reload
	ldr	x10, [x9]
	ldur	x11, [x29, #-88]        // 8-byte Folded Reload
	ldr	x12, [x11]
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x8, [x8]
	ldr	w13, [x8, #24]
	ldur	w14, [x29, #-28]
	subs	w13, w13, w14
	subs	w13, w13, #1            // =1
	stur	w13, [x29, #-40]
.LBB6_13:                               // =>This Inner Loop Header: Depth=1
	mov	w8, #0
	ldur	w9, [x29, #-40]
	cmp	w9, w8
	cset	w8, le
	tbnz	w8, #0, .LBB6_14
	b	.LBB6_23
.LBB6_14:                               //   in Loop: Header=BB6_13 Depth=1
	orr	x8, xzr, #0x8
	ldur	x9, [x29, #-80]         // 8-byte Folded Reload
	ldr	x10, [x9]
	ldur	x11, [x29, #-88]        // 8-byte Folded Reload
	ldr	x12, [x11]
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x8, [x8]
	stur	x8, [x29, #-48]
	ldr	x8, [sp, #96]           // 8-byte Folded Reload
	ldr	x10, [x8]
	ldur	x12, [x29, #-48]
	ldr	x12, [x12, #8]
	subs	x10, x10, x12
	mov	w13, w10
	stur	w13, [x29, #-52]
	ldur	x10, [x29, #-48]
	ldr	w13, [x10, #32]
	cbnz	w13, .LBB6_15
	b	.LBB6_19
.LBB6_15:                               //   in Loop: Header=BB6_13 Depth=1
	orr	w8, wzr, #0x2
	mov	w9, #0
	ldur	x10, [x29, #-48]
	ldr	w11, [x10, #24]
	mul	w8, w11, w8
	stur	w8, [x29, #-56]
	ldur	w8, [x29, #-56]
	cmp	w8, w9
	cset	w8, le
	tbnz	w8, #0, .LBB6_16
	b	.LBB6_17
.LBB6_16:                               //   in Loop: Header=BB6_13 Depth=1
	orr	w8, wzr, #0x8
	ldur	x9, [x29, #-48]
	ldr	w10, [x9, #24]
	sdiv	w8, w10, w8
	ldur	x9, [x29, #-48]
	ldr	w10, [x9, #24]
	add	w8, w10, w8
	str	w8, [x9, #24]
	b	.LBB6_18
.LBB6_17:                               //   in Loop: Header=BB6_13 Depth=1
	orr	w8, wzr, #0x2
	ldur	x9, [x29, #-48]
	ldr	w10, [x9, #24]
	mul	w8, w10, w8
	str	w8, [x9, #24]
.LBB6_18:                               //   in Loop: Header=BB6_13 Depth=1
	ldur	x8, [x29, #-48]
	ldr	x0, [x8, #8]
	ldur	x8, [x29, #-48]
	ldr	w9, [x8, #24]
	add	w9, w9, #2              // =2
	mov	w8, w9
	sxtw	x1, w8
	bl	yyrealloc
	ldur	x8, [x29, #-48]
	str	x0, [x8, #8]
	b	.LBB6_20
.LBB6_19:                               //   in Loop: Header=BB6_13 Depth=1
	ldur	x8, [x29, #-48]
	ldr	x9, [sp, #64]           // 8-byte Folded Reload
	str	x9, [x8, #8]
.LBB6_20:                               //   in Loop: Header=BB6_13 Depth=1
	ldur	x8, [x29, #-48]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #64]           // 8-byte Folded Reload
	cmp	x8, x9
	cset	w10, ne
	tbnz	w10, #0, .LBB6_22
// %bb.21:
	ldr	x0, [sp, #56]           // 8-byte Folded Reload
	bl	yy_fatal_error
.LBB6_22:                               //   in Loop: Header=BB6_13 Depth=1
	orr	x8, xzr, #0x8
	ldur	x9, [x29, #-48]
	ldr	x9, [x9, #8]
	ldur	w10, [x29, #-52]
	mov	w11, w10
	sxtw	x11, w11
	add	x9, x9, x11
	ldr	x11, [sp, #96]          // 8-byte Folded Reload
	str	x9, [x11]
	ldur	x9, [x29, #-80]         // 8-byte Folded Reload
	ldr	x12, [x9]
	ldur	x13, [x29, #-88]        // 8-byte Folded Reload
	ldr	x14, [x13]
	mul	x8, x8, x14
	add	x8, x12, x8
	ldr	x8, [x8]
	ldr	w10, [x8, #24]
	ldur	w15, [x29, #-28]
	subs	w10, w10, w15
	subs	w10, w10, #1            // =1
	stur	w10, [x29, #-40]
	b	.LBB6_13
.LBB6_23:
	orr	w8, wzr, #0x2000
	ldur	w9, [x29, #-40]
	cmp	w9, w8
	cset	w8, gt
	tbnz	w8, #0, .LBB6_24
	b	.LBB6_25
.LBB6_24:
	orr	w8, wzr, #0x2000
	stur	w8, [x29, #-40]
.LBB6_25:
	orr	x8, xzr, #0x8
	ldur	x9, [x29, #-80]         // 8-byte Folded Reload
	ldr	x10, [x9]
	ldur	x11, [x29, #-88]        // 8-byte Folded Reload
	ldr	x12, [x11]
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x8, [x8]
	ldr	w13, [x8, #36]
	cbnz	w13, .LBB6_26
	b	.LBB6_39
.LBB6_26:
	mov	w8, #42
	stur	w8, [x29, #-60]
	stur	wzr, [x29, #-64]
.LBB6_27:                               // =>This Inner Loop Header: Depth=1
	mov	w8, #0
	ldur	w9, [x29, #-64]
	ldur	w10, [x29, #-40]
	cmp	w9, w10
	cset	w9, lt
	str	w8, [sp, #40]           // 4-byte Folded Spill
	tbnz	w9, #0, .LBB6_28
	b	.LBB6_30
.LBB6_28:                               //   in Loop: Header=BB6_27 Depth=1
	mov	w8, #0
	mov	w9, #-1
	ldr	x10, [sp, #80]          // 8-byte Folded Reload
	ldr	x0, [x10]
	str	w8, [sp, #36]           // 4-byte Folded Spill
	str	w9, [sp, #32]           // 4-byte Folded Spill
	bl	getc
	stur	w0, [x29, #-60]
	ldr	w8, [sp, #32]           // 4-byte Folded Reload
	cmp	w0, w8
	cset	w9, ne
	ldr	w0, [sp, #36]           // 4-byte Folded Reload
	str	w0, [sp, #40]           // 4-byte Folded Spill
	tbnz	w9, #0, .LBB6_29
	b	.LBB6_30
.LBB6_29:                               //   in Loop: Header=BB6_27 Depth=1
	mov	w8, #10
	ldur	w9, [x29, #-60]
	cmp	w9, w8
	cset	w8, ne
	str	w8, [sp, #40]           // 4-byte Folded Spill
.LBB6_30:                               //   in Loop: Header=BB6_27 Depth=1
	ldr	w8, [sp, #40]           // 4-byte Folded Reload
	tbnz	w8, #0, .LBB6_31
	b	.LBB6_33
.LBB6_31:                               //   in Loop: Header=BB6_27 Depth=1
	orr	x8, xzr, #0x8
	ldur	w9, [x29, #-60]
	ldur	x10, [x29, #-80]        // 8-byte Folded Reload
	ldr	x11, [x10]
	ldur	x12, [x29, #-88]        // 8-byte Folded Reload
	ldr	x13, [x12]
	mul	x8, x8, x13
	add	x8, x11, x8
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	ldur	w14, [x29, #-28]
	mov	w11, w14
	sxtw	x11, w11
	add	x8, x8, x11
	ldur	w14, [x29, #-64]
	mov	w11, w14
	sxtw	x11, w11
	add	x8, x8, x11
	strb	w9, [x8]
// %bb.32:                              //   in Loop: Header=BB6_27 Depth=1
	ldur	w8, [x29, #-64]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-64]
	b	.LBB6_27
.LBB6_33:
	mov	w8, #10
	ldur	w9, [x29, #-60]
	cmp	w9, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB6_34
	b	.LBB6_35
.LBB6_34:
	orr	x8, xzr, #0x8
	ldur	w9, [x29, #-60]
	ldur	x10, [x29, #-80]        // 8-byte Folded Reload
	ldr	x11, [x10]
	ldur	x12, [x29, #-88]        // 8-byte Folded Reload
	ldr	x13, [x12]
	mul	x8, x8, x13
	add	x8, x11, x8
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	ldur	w14, [x29, #-28]
	mov	w11, w14
	sxtw	x11, w11
	add	x8, x8, x11
	ldur	w14, [x29, #-64]
	add	w15, w14, #1            // =1
	stur	w15, [x29, #-64]
	mov	w11, w14
	sxtw	x11, w11
	add	x8, x8, x11
	strb	w9, [x8]
.LBB6_35:
	mov	w8, #-1
	ldur	w9, [x29, #-60]
	cmp	w9, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB6_36
	b	.LBB6_38
.LBB6_36:
	ldr	x8, [sp, #80]           // 8-byte Folded Reload
	ldr	x0, [x8]
	bl	ferror
	cbnz	w0, .LBB6_37
	b	.LBB6_38
.LBB6_37:
	ldr	x0, [sp, #72]           // 8-byte Folded Reload
	bl	yy_fatal_error
.LBB6_38:
	ldur	w8, [x29, #-64]
	ldr	x9, [sp, #88]           // 8-byte Folded Reload
	str	w8, [x9]
	b	.LBB6_47
.LBB6_39:
	bl	__errno
	str	wzr, [x0]
.LBB6_40:                               // =>This Inner Loop Header: Depth=1
	mov	w8, #0
	orr	x1, xzr, #0x1
	orr	x9, xzr, #0x8
	ldur	x10, [x29, #-80]        // 8-byte Folded Reload
	ldr	x11, [x10]
	ldur	x12, [x29, #-88]        // 8-byte Folded Reload
	ldr	x13, [x12]
	mul	x9, x9, x13
	add	x9, x11, x9
	ldr	x9, [x9]
	ldr	x9, [x9, #8]
	ldur	w14, [x29, #-28]
	mov	w11, w14
	sxtw	x11, w11
	add	x9, x9, x11
	ldur	w14, [x29, #-40]
	mov	w11, w14
	sxtw	x2, w11
	ldr	x11, [sp, #80]          // 8-byte Folded Reload
	ldr	x3, [x11]
	mov	x0, x9
	str	w8, [sp, #28]           // 4-byte Folded Spill
	bl	fread
	mov	w8, w0
	ldr	x9, [sp, #88]           // 8-byte Folded Reload
	str	w8, [x9]
	ldr	w14, [sp, #28]          // 4-byte Folded Reload
	str	w14, [sp, #24]          // 4-byte Folded Spill
	cbz	w8, .LBB6_41
	b	.LBB6_42
.LBB6_41:                               //   in Loop: Header=BB6_40 Depth=1
	mov	w8, #0
	ldr	x9, [sp, #80]           // 8-byte Folded Reload
	ldr	x0, [x9]
	str	w8, [sp, #20]           // 4-byte Folded Spill
	bl	ferror
	ldr	w8, [sp, #20]           // 4-byte Folded Reload
	cmp	w0, w8
	cset	w0, ne
	str	w0, [sp, #24]           // 4-byte Folded Spill
.LBB6_42:                               //   in Loop: Header=BB6_40 Depth=1
	ldr	w8, [sp, #24]           // 4-byte Folded Reload
	tbnz	w8, #0, .LBB6_43
	b	.LBB6_46
.LBB6_43:                               //   in Loop: Header=BB6_40 Depth=1
	orr	w8, wzr, #0x4
	str	w8, [sp, #16]           // 4-byte Folded Spill
	bl	__errno
	ldr	w8, [x0]
	ldr	w9, [sp, #16]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, ne
	tbnz	w8, #0, .LBB6_44
	b	.LBB6_45
.LBB6_44:
	ldr	x0, [sp, #72]           // 8-byte Folded Reload
	bl	yy_fatal_error
.LBB6_45:                               //   in Loop: Header=BB6_40 Depth=1
	bl	__errno
	str	wzr, [x0]
	ldr	x0, [sp, #80]           // 8-byte Folded Reload
	ldr	x0, [x0]
	bl	clearerr
	b	.LBB6_40
.LBB6_46:
.LBB6_47:
	orr	x8, xzr, #0x8
	ldr	x9, [sp, #88]           // 8-byte Folded Reload
	ldr	w10, [x9]
	ldur	x11, [x29, #-80]        // 8-byte Folded Reload
	ldr	x12, [x11]
	ldur	x13, [x29, #-88]        // 8-byte Folded Reload
	ldr	x14, [x13]
	mul	x8, x8, x14
	add	x8, x12, x8
	ldr	x8, [x8]
	str	w10, [x8, #28]
.LBB6_48:
	ldr	x8, [sp, #88]           // 8-byte Folded Reload
	ldr	w9, [x8]
	cbz	w9, .LBB6_49
	b	.LBB6_53
.LBB6_49:
	ldur	w8, [x29, #-28]
	cbz	w8, .LBB6_50
	b	.LBB6_51
.LBB6_50:
	orr	w8, wzr, #0x1
	stur	w8, [x29, #-36]
	ldr	x9, [sp, #80]           // 8-byte Folded Reload
	ldr	x0, [x9]
	bl	yyrestart
	b	.LBB6_52
.LBB6_51:
	orr	w8, wzr, #0x2
	orr	x9, xzr, #0x8
	stur	w8, [x29, #-36]
	ldur	x10, [x29, #-80]        // 8-byte Folded Reload
	ldr	x11, [x10]
	ldur	x12, [x29, #-88]        // 8-byte Folded Reload
	ldr	x13, [x12]
	mul	x9, x9, x13
	add	x9, x11, x9
	ldr	x9, [x9]
	str	w8, [x9, #56]
.LBB6_52:
	b	.LBB6_54
.LBB6_53:
	stur	wzr, [x29, #-36]
.LBB6_54:
	orr	x8, xzr, #0x8
	ldr	x9, [sp, #88]           // 8-byte Folded Reload
	ldr	w10, [x9]
	ldur	w11, [x29, #-28]
	add	w10, w10, w11
	ldur	x12, [x29, #-80]        // 8-byte Folded Reload
	ldr	x13, [x12]
	ldur	x14, [x29, #-88]        // 8-byte Folded Reload
	ldr	x15, [x14]
	mul	x8, x8, x15
	add	x8, x13, x8
	ldr	x8, [x8]
	ldr	w11, [x8, #24]
	cmp	w10, w11
	cset	w10, gt
	tbnz	w10, #0, .LBB6_55
	b	.LBB6_58
.LBB6_55:
	orr	w8, wzr, #0x1
	orr	x9, xzr, #0x8
	ldr	x10, [sp, #88]          // 8-byte Folded Reload
	ldr	w11, [x10]
	ldur	w12, [x29, #-28]
	add	w11, w11, w12
	ldr	w12, [x10]
	asr	w8, w12, w8
	add	w8, w11, w8
	stur	w8, [x29, #-68]
	ldur	x13, [x29, #-80]        // 8-byte Folded Reload
	ldr	x14, [x13]
	ldur	x15, [x29, #-88]        // 8-byte Folded Reload
	ldr	x16, [x15]
	mul	x16, x9, x16
	add	x14, x14, x16
	ldr	x14, [x14]
	ldr	x0, [x14, #8]
	ldur	w8, [x29, #-68]
	mov	w14, w8
	sxtw	x1, w14
	str	x9, [sp, #8]            // 8-byte Folded Spill
	bl	yyrealloc
	ldur	x9, [x29, #-80]         // 8-byte Folded Reload
	ldr	x10, [x9]
	ldur	x13, [x29, #-88]        // 8-byte Folded Reload
	ldr	x14, [x13]
	ldr	x15, [sp, #8]           // 8-byte Folded Reload
	mul	x14, x15, x14
	add	x10, x10, x14
	ldr	x10, [x10]
	str	x0, [x10, #8]
	ldr	x10, [x9]
	ldr	x14, [x13]
	mul	x14, x15, x14
	add	x10, x10, x14
	ldr	x10, [x10]
	ldr	x10, [x10, #8]
	ldr	x14, [sp, #64]          // 8-byte Folded Reload
	cmp	x10, x14
	cset	w8, ne
	tbnz	w8, #0, .LBB6_57
// %bb.56:
	ldr	x0, [sp, #48]           // 8-byte Folded Reload
	bl	yy_fatal_error
.LBB6_57:
	orr	x8, xzr, #0x8
	ldur	w9, [x29, #-68]
	subs	w9, w9, #2              // =2
	ldur	x10, [x29, #-80]        // 8-byte Folded Reload
	ldr	x11, [x10]
	ldur	x12, [x29, #-88]        // 8-byte Folded Reload
	ldr	x13, [x12]
	mul	x8, x8, x13
	add	x8, x11, x8
	ldr	x8, [x8]
	str	w9, [x8, #24]
.LBB6_58:
	orr	x8, xzr, #0x8
	ldur	w9, [x29, #-28]
	ldr	x10, [sp, #88]          // 8-byte Folded Reload
	ldr	w11, [x10]
	add	w9, w11, w9
	str	w9, [x10]
	ldur	x12, [x29, #-80]        // 8-byte Folded Reload
	ldr	x13, [x12]
	ldur	x14, [x29, #-88]        // 8-byte Folded Reload
	ldr	x15, [x14]
	mul	x15, x8, x15
	add	x13, x13, x15
	ldr	x13, [x13]
	ldr	x13, [x13, #8]
	ldr	w9, [x10]
	mov	w15, w9
	sxtw	x15, w15
	add	x13, x13, x15
	ldr	w9, [sp, #44]           // 4-byte Folded Reload
	strb	w9, [x13]
	ldr	x13, [x12]
	ldr	x15, [x14]
	mul	x15, x8, x15
	add	x13, x13, x15
	ldr	x13, [x13]
	ldr	x13, [x13, #8]
	ldr	w11, [x10]
	add	w11, w11, #1            // =1
	mov	w15, w11
	sxtw	x15, w15
	add	x13, x13, x15
	strb	w9, [x13]
	ldr	x13, [x12]
	ldr	x15, [x14]
	mul	x8, x8, x15
	add	x8, x13, x8
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	ldr	x13, [sp, #104]         // 8-byte Folded Reload
	str	x8, [x13]
	ldur	w11, [x29, #-36]
	stur	w11, [x29, #-4]
.LBB6_59:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #208]    // 8-byte Folded Reload
	add	sp, sp, #224            // =224
	ret
.Lfunc_end6:
	.size	yy_get_next_buffer, .Lfunc_end6-yy_get_next_buffer
                                        // -- End function
	.globl	yywrap                  // -- Begin function yywrap
	.p2align	2
	.type	yywrap,@function
yywrap:                                 // @yywrap
// %bb.0:
	orr	w0, wzr, #0x1
	ret
.Lfunc_end7:
	.size	yywrap, .Lfunc_end7-yywrap
                                        // -- End function
	.globl	yyrestart               // -- Begin function yyrestart
	.p2align	2
	.type	yyrestart,@function
yyrestart:                              // @yyrestart
// %bb.0:
	sub	sp, sp, #96             // =96
	stp	x29, x30, [sp, #80]     // 8-byte Folded Spill
	add	x29, sp, #80            // =80
	adrp	x8, yy_buffer_stack
	add	x8, x8, :lo12:yy_buffer_stack
	mov	x9, #0
	mov	w10, #0
	adrp	x11, yy_buffer_stack_top
	add	x11, x11, :lo12:yy_buffer_stack_top
	adrp	x12, yyin
	add	x12, x12, :lo12:yyin
	stur	x0, [x29, #-8]
	ldr	x0, [x8]
	cmp	x0, x9
	cset	w13, ne
	stur	x12, [x29, #-16]        // 8-byte Folded Spill
	stur	x8, [x29, #-24]         // 8-byte Folded Spill
	stur	x9, [x29, #-32]         // 8-byte Folded Spill
	stur	w10, [x29, #-36]        // 4-byte Folded Spill
	str	x11, [sp, #32]          // 8-byte Folded Spill
	tbnz	w13, #0, .LBB8_1
	b	.LBB8_2
.LBB8_1:
	orr	x8, xzr, #0x8
	ldur	x9, [x29, #-24]         // 8-byte Folded Reload
	ldr	x10, [x9]
	ldr	x11, [sp, #32]          // 8-byte Folded Reload
	ldr	x12, [x11]
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x8, [x8]
	ldur	x10, [x29, #-32]        // 8-byte Folded Reload
	cmp	x8, x10
	cset	w13, ne
	tbnz	w13, #0, .LBB8_4
	b	.LBB8_3
.LBB8_2:
	ldur	w8, [x29, #-36]         // 4-byte Folded Reload
	tbnz	w8, #0, .LBB8_4
.LBB8_3:
	orr	w1, wzr, #0x4000
	orr	x8, xzr, #0x8
	str	w1, [sp, #28]           // 4-byte Folded Spill
	str	x8, [sp, #16]           // 8-byte Folded Spill
	bl	yyensure_buffer_stack
	ldur	x8, [x29, #-16]         // 8-byte Folded Reload
	ldr	x0, [x8]
	ldr	w1, [sp, #28]           // 4-byte Folded Reload
	bl	yy_create_buffer
	ldur	x8, [x29, #-24]         // 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	x10, [sp, #32]          // 8-byte Folded Reload
	ldr	x11, [x10]
	ldr	x12, [sp, #16]          // 8-byte Folded Reload
	mul	x11, x12, x11
	add	x9, x9, x11
	str	x0, [x9]
.LBB8_4:
	ldur	x8, [x29, #-24]         // 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-32]        // 8-byte Folded Reload
	cmp	x9, x10
	cset	w11, ne
	tbnz	w11, #0, .LBB8_5
	b	.LBB8_6
.LBB8_5:
	orr	x8, xzr, #0x8
	ldur	x9, [x29, #-24]         // 8-byte Folded Reload
	ldr	x10, [x9]
	ldr	x11, [sp, #32]          // 8-byte Folded Reload
	ldr	x12, [x11]
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x8, [x8]
	str	x8, [sp, #8]            // 8-byte Folded Spill
	b	.LBB8_7
.LBB8_6:
	ldur	x8, [x29, #-32]         // 8-byte Folded Reload
	str	x8, [sp, #8]            // 8-byte Folded Spill
.LBB8_7:
	ldr	x8, [sp, #8]            // 8-byte Folded Reload
	ldur	x1, [x29, #-8]
	mov	x0, x8
	bl	yy_init_buffer
	bl	yy_load_buffer_state
	ldp	x29, x30, [sp, #80]     // 8-byte Folded Reload
	add	sp, sp, #96             // =96
	ret
.Lfunc_end8:
	.size	yyrestart, .Lfunc_end8-yyrestart
                                        // -- End function
	.p2align	2               // -- Begin function yy_fatal_error
	.type	yy_fatal_error,@function
yy_fatal_error:                         // @yy_fatal_error
// %bb.0:
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 8-byte Folded Spill
	add	x29, sp, #16            // =16
	adrp	x8, :got:__sF
	ldr	x8, [x8, :got_lo12:__sF]
	mov	x9, #304
	add	x8, x8, x9
	adrp	x9, .L.str.13
	add	x9, x9, :lo12:.L.str.13
	orr	w10, wzr, #0x2
	str	x0, [sp, #8]
	ldr	x2, [sp, #8]
	mov	x0, x8
	mov	x1, x9
	str	w10, [sp, #4]           // 4-byte Folded Spill
	bl	fprintf
	ldr	w10, [sp, #4]           // 4-byte Folded Reload
	mov	w0, w10
	bl	exit
.Lfunc_end9:
	.size	yy_fatal_error, .Lfunc_end9-yy_fatal_error
                                        // -- End function
	.p2align	2               // -- Begin function yy_init_buffer
	.type	yy_init_buffer,@function
yy_init_buffer:                         // @yy_init_buffer
// %bb.0:
	sub	sp, sp, #112            // =112
	stp	x29, x30, [sp, #96]     // 8-byte Folded Spill
	add	x29, sp, #96            // =96
	orr	w8, wzr, #0x1
	adrp	x9, yy_buffer_stack
	add	x9, x9, :lo12:yy_buffer_stack
	mov	x10, #0
	adrp	x11, yy_buffer_stack_top
	add	x11, x11, :lo12:yy_buffer_stack_top
	mov	x2, x10
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-32]         // 8-byte Folded Spill
	stur	x11, [x29, #-40]        // 8-byte Folded Spill
	stur	w8, [x29, #-44]         // 4-byte Folded Spill
	str	x9, [sp, #40]           // 8-byte Folded Spill
	str	x10, [sp, #32]          // 8-byte Folded Spill
	bl	__errno
	ldr	w8, [x0]
	stur	w8, [x29, #-20]
	ldur	x0, [x29, #-8]
	bl	yy_flush_buffer
	ldur	x9, [x29, #-16]
	ldur	x10, [x29, #-8]
	str	x9, [x10]
	ldur	x9, [x29, #-8]
	ldur	w8, [x29, #-44]         // 4-byte Folded Reload
	str	w8, [x9, #52]
	ldur	x9, [x29, #-8]
	ldr	x10, [sp, #40]          // 8-byte Folded Reload
	ldr	x11, [x10]
	ldr	x0, [sp, #32]           // 8-byte Folded Reload
	cmp	x11, x0
	cset	w12, ne
	str	x9, [sp, #24]           // 8-byte Folded Spill
	tbnz	w12, #0, .LBB10_1
	b	.LBB10_2
.LBB10_1:
	orr	x8, xzr, #0x8
	ldr	x9, [sp, #40]           // 8-byte Folded Reload
	ldr	x10, [x9]
	ldur	x11, [x29, #-40]        // 8-byte Folded Reload
	ldr	x12, [x11]
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x8, [x8]
	str	x8, [sp, #16]           // 8-byte Folded Spill
	b	.LBB10_3
.LBB10_2:
	ldur	x0, [x29, #-32]         // 8-byte Folded Reload
	str	x0, [sp, #16]           // 8-byte Folded Spill
.LBB10_3:
	ldr	x8, [sp, #16]           // 8-byte Folded Reload
	ldr	x9, [sp, #24]           // 8-byte Folded Reload
	cmp	x9, x8
	cset	w10, ne
	tbnz	w10, #0, .LBB10_4
	b	.LBB10_5
.LBB10_4:
	orr	w8, wzr, #0x1
	ldur	x9, [x29, #-8]
	str	w8, [x9, #44]
	ldur	x9, [x29, #-8]
	str	wzr, [x9, #48]
.LBB10_5:
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #32]           // 8-byte Folded Reload
	cmp	x8, x9
	cset	w10, ne
	tbnz	w10, #0, .LBB10_6
	b	.LBB10_7
.LBB10_6:
	mov	w8, #0
	ldur	x0, [x29, #-16]
	str	w8, [sp, #12]           // 4-byte Folded Spill
	bl	fileno
	bl	isatty
	ldr	w8, [sp, #12]           // 4-byte Folded Reload
	cmp	w0, w8
	cset	w0, gt
	orr	w9, wzr, #0x1
	and	w9, w0, w9
	str	w9, [sp, #8]            // 4-byte Folded Spill
	b	.LBB10_8
.LBB10_7:
	mov	w8, #0
	str	w8, [sp, #8]            // 4-byte Folded Spill
.LBB10_8:
	ldr	w8, [sp, #8]            // 4-byte Folded Reload
	ldur	x9, [x29, #-8]
	str	w8, [x9, #36]
	ldur	w8, [x29, #-20]
	str	w8, [sp, #4]            // 4-byte Folded Spill
	bl	__errno
	ldr	w8, [sp, #4]            // 4-byte Folded Reload
	str	w8, [x0]
	ldp	x29, x30, [sp, #96]     // 8-byte Folded Reload
	add	sp, sp, #112            // =112
	ret
.Lfunc_end10:
	.size	yy_init_buffer, .Lfunc_end10-yy_init_buffer
                                        // -- End function
	.globl	yy_switch_to_buffer     // -- Begin function yy_switch_to_buffer
	.p2align	2
	.type	yy_switch_to_buffer,@function
yy_switch_to_buffer:                    // @yy_switch_to_buffer
// %bb.0:
	sub	sp, sp, #112            // =112
	stp	x29, x30, [sp, #96]     // 8-byte Folded Spill
	add	x29, sp, #96            // =96
	adrp	x8, yy_buffer_stack
	add	x8, x8, :lo12:yy_buffer_stack
	mov	x9, #0
	adrp	x10, yy_buffer_stack_top
	add	x10, x10, :lo12:yy_buffer_stack_top
	mov	w11, #0
	adrp	x12, yy_hold_char
	add	x12, x12, :lo12:yy_hold_char
	adrp	x13, yy_c_buf_p
	add	x13, x13, :lo12:yy_c_buf_p
	adrp	x14, yy_n_chars
	add	x14, x14, :lo12:yy_n_chars
	adrp	x15, yy_did_buffer_switch_on_eof
	add	x15, x15, :lo12:yy_did_buffer_switch_on_eof
	stur	x0, [x29, #-8]
	stur	x15, [x29, #-16]        // 8-byte Folded Spill
	stur	x8, [x29, #-24]         // 8-byte Folded Spill
	stur	x9, [x29, #-32]         // 8-byte Folded Spill
	stur	x10, [x29, #-40]        // 8-byte Folded Spill
	stur	w11, [x29, #-44]        // 4-byte Folded Spill
	str	x12, [sp, #40]          // 8-byte Folded Spill
	str	x13, [sp, #32]          // 8-byte Folded Spill
	str	x14, [sp, #24]          // 8-byte Folded Spill
	bl	yyensure_buffer_stack
	ldur	x8, [x29, #-24]         // 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-32]        // 8-byte Folded Reload
	cmp	x9, x10
	cset	w11, ne
	tbnz	w11, #0, .LBB11_1
	b	.LBB11_2
.LBB11_1:
	orr	x8, xzr, #0x8
	ldur	x9, [x29, #-24]         // 8-byte Folded Reload
	ldr	x10, [x9]
	ldur	x11, [x29, #-40]        // 8-byte Folded Reload
	ldr	x12, [x11]
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x8, [x8]
	str	x8, [sp, #16]           // 8-byte Folded Spill
	b	.LBB11_3
.LBB11_2:
	ldur	x8, [x29, #-32]         // 8-byte Folded Reload
	str	x8, [sp, #16]           // 8-byte Folded Spill
.LBB11_3:
	ldr	x8, [sp, #16]           // 8-byte Folded Reload
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	cset	w10, eq
	tbnz	w10, #0, .LBB11_4
	b	.LBB11_5
.LBB11_4:
	b	.LBB11_10
.LBB11_5:
	ldur	x8, [x29, #-24]         // 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-32]        // 8-byte Folded Reload
	cmp	x9, x10
	cset	w11, ne
	tbnz	w11, #0, .LBB11_6
	b	.LBB11_7
.LBB11_6:
	orr	x8, xzr, #0x8
	ldur	x9, [x29, #-24]         // 8-byte Folded Reload
	ldr	x10, [x9]
	ldur	x11, [x29, #-40]        // 8-byte Folded Reload
	ldr	x12, [x11]
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x8, [x8]
	ldur	x10, [x29, #-32]        // 8-byte Folded Reload
	cmp	x8, x10
	cset	w13, ne
	tbnz	w13, #0, .LBB11_8
	b	.LBB11_9
.LBB11_7:
	ldur	w8, [x29, #-44]         // 4-byte Folded Reload
	tbnz	w8, #0, .LBB11_8
	b	.LBB11_9
.LBB11_8:
	orr	x8, xzr, #0x8
	ldr	x9, [sp, #40]           // 8-byte Folded Reload
	ldrb	w10, [x9]
	ldr	x11, [sp, #32]          // 8-byte Folded Reload
	ldr	x12, [x11]
	strb	w10, [x12]
	ldr	x12, [x11]
	ldur	x13, [x29, #-24]        // 8-byte Folded Reload
	ldr	x14, [x13]
	ldur	x15, [x29, #-40]        // 8-byte Folded Reload
	ldr	x16, [x15]
	mul	x16, x8, x16
	add	x14, x14, x16
	ldr	x14, [x14]
	str	x12, [x14, #16]
	ldr	x12, [sp, #24]          // 8-byte Folded Reload
	ldr	w10, [x12]
	ldr	x14, [x13]
	ldr	x16, [x15]
	mul	x8, x8, x16
	add	x8, x14, x8
	ldr	x8, [x8]
	str	w10, [x8, #28]
.LBB11_9:
	orr	w8, wzr, #0x1
	orr	x9, xzr, #0x8
	ldur	x10, [x29, #-8]
	ldur	x11, [x29, #-24]        // 8-byte Folded Reload
	ldr	x12, [x11]
	ldur	x13, [x29, #-40]        // 8-byte Folded Reload
	ldr	x14, [x13]
	mul	x9, x9, x14
	add	x9, x12, x9
	str	x10, [x9]
	str	w8, [sp, #12]           // 4-byte Folded Spill
	bl	yy_load_buffer_state
	ldr	w8, [sp, #12]           // 4-byte Folded Reload
	ldur	x9, [x29, #-16]         // 8-byte Folded Reload
	str	w8, [x9]
.LBB11_10:
	ldp	x29, x30, [sp, #96]     // 8-byte Folded Reload
	add	sp, sp, #112            // =112
	ret
.Lfunc_end11:
	.size	yy_switch_to_buffer, .Lfunc_end11-yy_switch_to_buffer
                                        // -- End function
	.globl	yyalloc                 // -- Begin function yyalloc
	.p2align	2
	.type	yyalloc,@function
yyalloc:                                // @yyalloc
// %bb.0:
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 8-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	malloc
	ldp	x29, x30, [sp, #16]     // 8-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end12:
	.size	yyalloc, .Lfunc_end12-yyalloc
                                        // -- End function
	.globl	yy_delete_buffer        // -- Begin function yy_delete_buffer
	.p2align	2
	.type	yy_delete_buffer,@function
yy_delete_buffer:                       // @yy_delete_buffer
// %bb.0:
	sub	sp, sp, #64             // =64
	stp	x29, x30, [sp, #48]     // 8-byte Folded Spill
	add	x29, sp, #48            // =48
	mov	x8, #0
	adrp	x9, yy_buffer_stack
	add	x9, x9, :lo12:yy_buffer_stack
	adrp	x10, yy_buffer_stack_top
	add	x10, x10, :lo12:yy_buffer_stack_top
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	cmp	x0, x8
	cset	w11, ne
	stur	x10, [x29, #-16]        // 8-byte Folded Spill
	str	x8, [sp, #24]           // 8-byte Folded Spill
	str	x9, [sp, #16]           // 8-byte Folded Spill
	tbnz	w11, #0, .LBB13_2
// %bb.1:
	b	.LBB13_10
.LBB13_2:
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #16]           // 8-byte Folded Reload
	ldr	x10, [x9]
	ldr	x11, [sp, #24]          // 8-byte Folded Reload
	cmp	x10, x11
	cset	w12, ne
	str	x8, [sp, #8]            // 8-byte Folded Spill
	tbnz	w12, #0, .LBB13_3
	b	.LBB13_4
.LBB13_3:
	orr	x8, xzr, #0x8
	ldr	x9, [sp, #16]           // 8-byte Folded Reload
	ldr	x10, [x9]
	ldur	x11, [x29, #-16]        // 8-byte Folded Reload
	ldr	x12, [x11]
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x8, [x8]
	str	x8, [sp]                // 8-byte Folded Spill
	b	.LBB13_5
.LBB13_4:
	ldr	x8, [sp, #24]           // 8-byte Folded Reload
	str	x8, [sp]                // 8-byte Folded Spill
.LBB13_5:
	ldr	x8, [sp]                // 8-byte Folded Reload
	ldr	x9, [sp, #8]            // 8-byte Folded Reload
	cmp	x9, x8
	cset	w10, eq
	tbnz	w10, #0, .LBB13_6
	b	.LBB13_7
.LBB13_6:
	orr	x8, xzr, #0x8
	ldr	x9, [sp, #16]           // 8-byte Folded Reload
	ldr	x10, [x9]
	ldur	x11, [x29, #-16]        // 8-byte Folded Reload
	ldr	x12, [x11]
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x10, [sp, #24]          // 8-byte Folded Reload
	str	x10, [x8]
.LBB13_7:
	ldur	x8, [x29, #-8]
	ldr	w9, [x8, #32]
	cbnz	w9, .LBB13_8
	b	.LBB13_9
.LBB13_8:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	bl	yyfree
.LBB13_9:
	ldur	x0, [x29, #-8]
	bl	yyfree
.LBB13_10:
	ldp	x29, x30, [sp, #48]     // 8-byte Folded Reload
	add	sp, sp, #64             // =64
	ret
.Lfunc_end13:
	.size	yy_delete_buffer, .Lfunc_end13-yy_delete_buffer
                                        // -- End function
	.globl	yyfree                  // -- Begin function yyfree
	.p2align	2
	.type	yyfree,@function
yyfree:                                 // @yyfree
// %bb.0:
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 8-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	free
	ldp	x29, x30, [sp, #16]     // 8-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end14:
	.size	yyfree, .Lfunc_end14-yyfree
                                        // -- End function
	.globl	yy_flush_buffer         // -- Begin function yy_flush_buffer
	.p2align	2
	.type	yy_flush_buffer,@function
yy_flush_buffer:                        // @yy_flush_buffer
// %bb.0:
	sub	sp, sp, #80             // =80
	stp	x29, x30, [sp, #64]     // 8-byte Folded Spill
	add	x29, sp, #64            // =64
	mov	x8, #0
	mov	w9, #0
	adrp	x10, yy_buffer_stack
	add	x10, x10, :lo12:yy_buffer_stack
	adrp	x11, yy_buffer_stack_top
	add	x11, x11, :lo12:yy_buffer_stack_top
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	cmp	x0, x8
	cset	w12, ne
	stur	x11, [x29, #-16]        // 8-byte Folded Spill
	stur	x8, [x29, #-24]         // 8-byte Folded Spill
	stur	w9, [x29, #-28]         // 4-byte Folded Spill
	str	x10, [sp, #24]          // 8-byte Folded Spill
	tbnz	w12, #0, .LBB15_2
// %bb.1:
	b	.LBB15_7
.LBB15_2:
	orr	w8, wzr, #0x1
	ldur	x9, [x29, #-8]
	str	wzr, [x9, #28]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	ldur	w10, [x29, #-28]        // 4-byte Folded Reload
	strb	w10, [x9]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	strb	w10, [x9, #1]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	ldur	x11, [x29, #-8]
	str	x9, [x11, #16]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #40]
	ldur	x9, [x29, #-8]
	str	wzr, [x9, #56]
	ldur	x9, [x29, #-8]
	ldr	x11, [sp, #24]          // 8-byte Folded Reload
	ldr	x12, [x11]
	ldur	x13, [x29, #-24]        // 8-byte Folded Reload
	cmp	x12, x13
	cset	w8, ne
	str	x9, [sp, #16]           // 8-byte Folded Spill
	tbnz	w8, #0, .LBB15_3
	b	.LBB15_4
.LBB15_3:
	orr	x8, xzr, #0x8
	ldr	x9, [sp, #24]           // 8-byte Folded Reload
	ldr	x10, [x9]
	ldur	x11, [x29, #-16]        // 8-byte Folded Reload
	ldr	x12, [x11]
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x8, [x8]
	str	x8, [sp, #8]            // 8-byte Folded Spill
	b	.LBB15_5
.LBB15_4:
	ldur	x8, [x29, #-24]         // 8-byte Folded Reload
	str	x8, [sp, #8]            // 8-byte Folded Spill
.LBB15_5:
	ldr	x8, [sp, #8]            // 8-byte Folded Reload
	ldr	x9, [sp, #16]           // 8-byte Folded Reload
	cmp	x9, x8
	cset	w10, eq
	tbnz	w10, #0, .LBB15_6
	b	.LBB15_7
.LBB15_6:
	bl	yy_load_buffer_state
.LBB15_7:
	ldp	x29, x30, [sp, #64]     // 8-byte Folded Reload
	add	sp, sp, #80             // =80
	ret
.Lfunc_end15:
	.size	yy_flush_buffer, .Lfunc_end15-yy_flush_buffer
                                        // -- End function
	.globl	yypush_buffer_state     // -- Begin function yypush_buffer_state
	.p2align	2
	.type	yypush_buffer_state,@function
yypush_buffer_state:                    // @yypush_buffer_state
// %bb.0:
	sub	sp, sp, #96             // =96
	stp	x29, x30, [sp, #80]     // 8-byte Folded Spill
	add	x29, sp, #80            // =80
	mov	x8, #0
	adrp	x9, yy_buffer_stack
	add	x9, x9, :lo12:yy_buffer_stack
	mov	w10, #0
	adrp	x11, yy_buffer_stack_top
	add	x11, x11, :lo12:yy_buffer_stack_top
	adrp	x12, yy_hold_char
	add	x12, x12, :lo12:yy_hold_char
	adrp	x13, yy_c_buf_p
	add	x13, x13, :lo12:yy_c_buf_p
	adrp	x14, yy_n_chars
	add	x14, x14, :lo12:yy_n_chars
	adrp	x15, yy_did_buffer_switch_on_eof
	add	x15, x15, :lo12:yy_did_buffer_switch_on_eof
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	cmp	x0, x8
	cset	w16, eq
	stur	x15, [x29, #-16]        // 8-byte Folded Spill
	stur	x8, [x29, #-24]         // 8-byte Folded Spill
	stur	x9, [x29, #-32]         // 8-byte Folded Spill
	stur	w10, [x29, #-36]        // 4-byte Folded Spill
	str	x11, [sp, #32]          // 8-byte Folded Spill
	str	x12, [sp, #24]          // 8-byte Folded Spill
	str	x13, [sp, #16]          // 8-byte Folded Spill
	str	x14, [sp, #8]           // 8-byte Folded Spill
	tbnz	w16, #0, .LBB16_1
	b	.LBB16_2
.LBB16_1:
	b	.LBB16_11
.LBB16_2:
	bl	yyensure_buffer_stack
	ldur	x8, [x29, #-32]         // 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-24]        // 8-byte Folded Reload
	cmp	x9, x10
	cset	w11, ne
	tbnz	w11, #0, .LBB16_3
	b	.LBB16_4
.LBB16_3:
	orr	x8, xzr, #0x8
	ldur	x9, [x29, #-32]         // 8-byte Folded Reload
	ldr	x10, [x9]
	ldr	x11, [sp, #32]          // 8-byte Folded Reload
	ldr	x12, [x11]
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x8, [x8]
	ldur	x10, [x29, #-24]        // 8-byte Folded Reload
	cmp	x8, x10
	cset	w13, ne
	tbnz	w13, #0, .LBB16_5
	b	.LBB16_6
.LBB16_4:
	ldur	w8, [x29, #-36]         // 4-byte Folded Reload
	tbnz	w8, #0, .LBB16_5
	b	.LBB16_6
.LBB16_5:
	orr	x8, xzr, #0x8
	ldr	x9, [sp, #24]           // 8-byte Folded Reload
	ldrb	w10, [x9]
	ldr	x11, [sp, #16]          // 8-byte Folded Reload
	ldr	x12, [x11]
	strb	w10, [x12]
	ldr	x12, [x11]
	ldur	x13, [x29, #-32]        // 8-byte Folded Reload
	ldr	x14, [x13]
	ldr	x15, [sp, #32]          // 8-byte Folded Reload
	ldr	x16, [x15]
	mul	x16, x8, x16
	add	x14, x14, x16
	ldr	x14, [x14]
	str	x12, [x14, #16]
	ldr	x12, [sp, #8]           // 8-byte Folded Reload
	ldr	w10, [x12]
	ldr	x14, [x13]
	ldr	x16, [x15]
	mul	x8, x8, x16
	add	x8, x14, x8
	ldr	x8, [x8]
	str	w10, [x8, #28]
.LBB16_6:
	ldur	x8, [x29, #-32]         // 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-24]        // 8-byte Folded Reload
	cmp	x9, x10
	cset	w11, ne
	tbnz	w11, #0, .LBB16_7
	b	.LBB16_8
.LBB16_7:
	orr	x8, xzr, #0x8
	ldur	x9, [x29, #-32]         // 8-byte Folded Reload
	ldr	x10, [x9]
	ldr	x11, [sp, #32]          // 8-byte Folded Reload
	ldr	x12, [x11]
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x8, [x8]
	ldur	x10, [x29, #-24]        // 8-byte Folded Reload
	cmp	x8, x10
	cset	w13, ne
	tbnz	w13, #0, .LBB16_9
	b	.LBB16_10
.LBB16_8:
	ldur	w8, [x29, #-36]         // 4-byte Folded Reload
	tbnz	w8, #0, .LBB16_9
	b	.LBB16_10
.LBB16_9:
	ldr	x8, [sp, #32]           // 8-byte Folded Reload
	ldr	x9, [x8]
	add	x9, x9, #1              // =1
	str	x9, [x8]
.LBB16_10:
	orr	w8, wzr, #0x1
	orr	x9, xzr, #0x8
	ldur	x10, [x29, #-8]
	ldur	x11, [x29, #-32]        // 8-byte Folded Reload
	ldr	x12, [x11]
	ldr	x13, [sp, #32]          // 8-byte Folded Reload
	ldr	x14, [x13]
	mul	x9, x9, x14
	add	x9, x12, x9
	str	x10, [x9]
	str	w8, [sp, #4]            // 4-byte Folded Spill
	bl	yy_load_buffer_state
	ldr	w8, [sp, #4]            // 4-byte Folded Reload
	ldur	x9, [x29, #-16]         // 8-byte Folded Reload
	str	w8, [x9]
.LBB16_11:
	ldp	x29, x30, [sp, #80]     // 8-byte Folded Reload
	add	sp, sp, #96             // =96
	ret
.Lfunc_end16:
	.size	yypush_buffer_state, .Lfunc_end16-yypush_buffer_state
                                        // -- End function
	.globl	yypop_buffer_state      // -- Begin function yypop_buffer_state
	.p2align	2
	.type	yypop_buffer_state,@function
yypop_buffer_state:                     // @yypop_buffer_state
// %bb.0:
	sub	sp, sp, #96             // =96
	stp	x29, x30, [sp, #80]     // 8-byte Folded Spill
	add	x29, sp, #80            // =80
	adrp	x8, yy_buffer_stack
	add	x8, x8, :lo12:yy_buffer_stack
	mov	x9, #0
	mov	w10, #0
	adrp	x11, yy_buffer_stack_top
	add	x11, x11, :lo12:yy_buffer_stack_top
	adrp	x12, yy_did_buffer_switch_on_eof
	add	x12, x12, :lo12:yy_did_buffer_switch_on_eof
	ldr	x13, [x8]
	cmp	x13, x9
	cset	w14, ne
	stur	x8, [x29, #-8]          // 8-byte Folded Spill
	stur	x9, [x29, #-16]         // 8-byte Folded Spill
	stur	w10, [x29, #-20]        // 4-byte Folded Spill
	stur	x11, [x29, #-32]        // 8-byte Folded Spill
	str	x12, [sp, #40]          // 8-byte Folded Spill
	tbnz	w14, #0, .LBB17_1
	b	.LBB17_2
.LBB17_1:
	orr	x8, xzr, #0x8
	ldur	x9, [x29, #-8]          // 8-byte Folded Reload
	ldr	x10, [x9]
	ldur	x11, [x29, #-32]        // 8-byte Folded Reload
	ldr	x12, [x11]
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x8, [x8]
	ldur	x10, [x29, #-16]        // 8-byte Folded Reload
	cmp	x8, x10
	cset	w13, ne
	tbnz	w13, #0, .LBB17_4
	b	.LBB17_3
.LBB17_2:
	ldur	w8, [x29, #-20]         // 4-byte Folded Reload
	tbnz	w8, #0, .LBB17_4
.LBB17_3:
	b	.LBB17_13
.LBB17_4:
	ldur	x8, [x29, #-8]          // 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-16]        // 8-byte Folded Reload
	cmp	x9, x10
	cset	w11, ne
	tbnz	w11, #0, .LBB17_5
	b	.LBB17_6
.LBB17_5:
	orr	x8, xzr, #0x8
	ldur	x9, [x29, #-8]          // 8-byte Folded Reload
	ldr	x10, [x9]
	ldur	x11, [x29, #-32]        // 8-byte Folded Reload
	ldr	x12, [x11]
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x8, [x8]
	str	x8, [sp, #32]           // 8-byte Folded Spill
	b	.LBB17_7
.LBB17_6:
	ldur	x8, [x29, #-16]         // 8-byte Folded Reload
	str	x8, [sp, #32]           // 8-byte Folded Spill
.LBB17_7:
	ldr	x8, [sp, #32]           // 8-byte Folded Reload
	orr	x9, xzr, #0x8
	mov	x10, #0
	mov	x0, x8
	str	x10, [sp, #24]          // 8-byte Folded Spill
	str	x9, [sp, #16]           // 8-byte Folded Spill
	bl	yy_delete_buffer
	ldur	x8, [x29, #-8]          // 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-32]        // 8-byte Folded Reload
	ldr	x0, [x10]
	ldr	x11, [sp, #16]          // 8-byte Folded Reload
	mul	x0, x11, x0
	add	x9, x9, x0
	ldur	x0, [x29, #-16]         // 8-byte Folded Reload
	str	x0, [x9]
	ldr	x9, [x10]
	ldr	x12, [sp, #24]          // 8-byte Folded Reload
	cmp	x9, x12
	cset	w13, hi
	tbnz	w13, #0, .LBB17_8
	b	.LBB17_9
.LBB17_8:
	mov	x8, #-1
	ldur	x9, [x29, #-32]         // 8-byte Folded Reload
	ldr	x10, [x9]
	add	x8, x10, x8
	str	x8, [x9]
.LBB17_9:
	ldur	x8, [x29, #-8]          // 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-16]        // 8-byte Folded Reload
	cmp	x9, x10
	cset	w11, ne
	tbnz	w11, #0, .LBB17_10
	b	.LBB17_11
.LBB17_10:
	orr	x8, xzr, #0x8
	ldur	x9, [x29, #-8]          // 8-byte Folded Reload
	ldr	x10, [x9]
	ldur	x11, [x29, #-32]        // 8-byte Folded Reload
	ldr	x12, [x11]
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x8, [x8]
	ldur	x10, [x29, #-16]        // 8-byte Folded Reload
	cmp	x8, x10
	cset	w13, ne
	tbnz	w13, #0, .LBB17_12
	b	.LBB17_13
.LBB17_11:
	ldur	w8, [x29, #-20]         // 4-byte Folded Reload
	tbnz	w8, #0, .LBB17_12
	b	.LBB17_13
.LBB17_12:
	orr	w8, wzr, #0x1
	str	w8, [sp, #12]           // 4-byte Folded Spill
	bl	yy_load_buffer_state
	ldr	w8, [sp, #12]           // 4-byte Folded Reload
	ldr	x9, [sp, #40]           // 8-byte Folded Reload
	str	w8, [x9]
.LBB17_13:
	ldp	x29, x30, [sp, #80]     // 8-byte Folded Reload
	add	sp, sp, #96             // =96
	ret
.Lfunc_end17:
	.size	yypop_buffer_state, .Lfunc_end17-yypop_buffer_state
                                        // -- End function
	.globl	yy_scan_buffer          // -- Begin function yy_scan_buffer
	.p2align	2
	.type	yy_scan_buffer,@function
yy_scan_buffer:                         // @yy_scan_buffer
// %bb.0:
	sub	sp, sp, #64             // =64
	stp	x29, x30, [sp, #48]     // 8-byte Folded Spill
	add	x29, sp, #48            // =48
	orr	x8, xzr, #0x2
	mov	x9, #0
	adrp	x10, .L.str.5
	add	x10, x10, :lo12:.L.str.5
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldr	x0, [sp, #24]
	cmp	x0, x8
	cset	w11, lo
	str	x10, [sp, #8]           // 8-byte Folded Spill
	str	x9, [sp]                // 8-byte Folded Spill
	tbnz	w11, #0, .LBB18_3
// %bb.1:
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x9, x9, #2              // =2
	add	x8, x8, x9
	ldrb	w10, [x8]
	uxtb	w10, w10
	cbnz	w10, .LBB18_3
// %bb.2:
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x9, x9, #1              // =1
	add	x8, x8, x9
	ldrb	w10, [x8]
	uxtb	w10, w10
	cbnz	w10, .LBB18_3
	b	.LBB18_4
.LBB18_3:
	ldr	x8, [sp]                // 8-byte Folded Reload
	stur	x8, [x29, #-8]
	b	.LBB18_7
.LBB18_4:
	orr	x0, xzr, #0x40
	bl	yyalloc
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x8, [sp]                // 8-byte Folded Reload
	cmp	x0, x8
	cset	w9, ne
	tbnz	w9, #0, .LBB18_6
// %bb.5:
	ldr	x0, [sp, #8]            // 8-byte Folded Reload
	bl	yy_fatal_error
.LBB18_6:
	orr	w8, wzr, #0x1
	ldr	x9, [sp, #24]
	subs	x9, x9, #2              // =2
	mov	w10, w9
	ldr	x9, [sp, #16]
	str	w10, [x9, #24]
	ldur	x9, [x29, #-16]
	ldr	x11, [sp, #16]
	str	x9, [x11, #8]
	ldr	x11, [sp, #16]
	str	x9, [x11, #16]
	ldr	x9, [sp, #16]
	str	wzr, [x9, #32]
	ldr	x9, [sp, #16]
	ldr	x11, [sp]               // 8-byte Folded Reload
	str	x11, [x9]
	ldr	x9, [sp, #16]
	ldr	w10, [x9, #24]
	ldr	x9, [sp, #16]
	str	w10, [x9, #28]
	ldr	x9, [sp, #16]
	str	wzr, [x9, #36]
	ldr	x9, [sp, #16]
	str	w8, [x9, #40]
	ldr	x9, [sp, #16]
	str	wzr, [x9, #52]
	ldr	x9, [sp, #16]
	str	wzr, [x9, #56]
	ldr	x0, [sp, #16]
	bl	yy_switch_to_buffer
	ldr	x9, [sp, #16]
	stur	x9, [x29, #-8]
.LBB18_7:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]     // 8-byte Folded Reload
	add	sp, sp, #64             // =64
	ret
.Lfunc_end18:
	.size	yy_scan_buffer, .Lfunc_end18-yy_scan_buffer
                                        // -- End function
	.globl	yy_scan_string          // -- Begin function yy_scan_string
	.p2align	2
	.type	yy_scan_string,@function
yy_scan_string:                         // @yy_scan_string
// %bb.0:
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 8-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x0, [sp]                // 8-byte Folded Spill
	mov	x0, x8
	bl	strlen
	mov	w9, w0
	ldr	x0, [sp]                // 8-byte Folded Reload
	mov	w1, w9
	bl	yy_scan_bytes
	ldp	x29, x30, [sp, #16]     // 8-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end19:
	.size	yy_scan_string, .Lfunc_end19-yy_scan_string
                                        // -- End function
	.globl	yy_scan_bytes           // -- Begin function yy_scan_bytes
	.p2align	2
	.type	yy_scan_bytes,@function
yy_scan_bytes:                          // @yy_scan_bytes
// %bb.0:
	sub	sp, sp, #96             // =96
	stp	x29, x30, [sp, #80]     // 8-byte Folded Spill
	add	x29, sp, #80            // =80
	mov	x8, #0
	adrp	x9, .L.str.6
	add	x9, x9, :lo12:.L.str.6
	mov	w10, #0
	adrp	x11, .L.str.7
	add	x11, x11, :lo12:.L.str.7
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	w1, [x29, #-12]
	add	w1, w1, #2              // =2
	mov	w0, w1
	sxtw	x0, w0
	str	x0, [sp, #40]
	ldr	x0, [sp, #40]
	str	x11, [sp, #24]          // 8-byte Folded Spill
	str	w10, [sp, #20]          // 4-byte Folded Spill
	str	x8, [sp, #8]            // 8-byte Folded Spill
	str	x9, [sp]                // 8-byte Folded Spill
	bl	yyalloc
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-32]
	ldr	x9, [sp, #8]            // 8-byte Folded Reload
	cmp	x8, x9
	cset	w10, ne
	tbnz	w10, #0, .LBB20_2
// %bb.1:
	ldr	x0, [sp]                // 8-byte Folded Reload
	bl	yy_fatal_error
.LBB20_2:
	str	wzr, [sp, #36]
.LBB20_3:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #36]
	ldur	w9, [x29, #-12]
	cmp	w8, w9
	cset	w8, lt
	tbnz	w8, #0, .LBB20_4
	b	.LBB20_6
.LBB20_4:                               //   in Loop: Header=BB20_3 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w9, [sp, #36]
	mov	w10, w9
	sxtw	x10, w10
	add	x8, x8, x10
	ldrb	w9, [x8]
	ldur	x8, [x29, #-32]
	ldr	w11, [sp, #36]
	mov	w10, w11
	sxtw	x10, w10
	add	x8, x8, x10
	strb	w9, [x8]
// %bb.5:                               //   in Loop: Header=BB20_3 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1              // =1
	str	w8, [sp, #36]
	b	.LBB20_3
.LBB20_6:
	ldur	x8, [x29, #-32]
	ldur	w9, [x29, #-12]
	add	w9, w9, #1              // =1
	mov	w10, w9
	sxtw	x10, w10
	add	x8, x8, x10
	ldr	w9, [sp, #20]           // 4-byte Folded Reload
	strb	w9, [x8]
	ldur	x8, [x29, #-32]
	ldur	w11, [x29, #-12]
	mov	w10, w11
	sxtw	x10, w10
	add	x8, x8, x10
	strb	w9, [x8]
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #40]
	bl	yy_scan_buffer
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldr	x10, [sp, #8]           // 8-byte Folded Reload
	cmp	x8, x10
	cset	w9, ne
	tbnz	w9, #0, .LBB20_8
// %bb.7:
	ldr	x0, [sp, #24]           // 8-byte Folded Reload
	bl	yy_fatal_error
.LBB20_8:
	orr	w8, wzr, #0x1
	ldur	x9, [x29, #-24]
	str	w8, [x9, #32]
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #80]     // 8-byte Folded Reload
	add	sp, sp, #96             // =96
	ret
.Lfunc_end20:
	.size	yy_scan_bytes, .Lfunc_end20-yy_scan_bytes
                                        // -- End function
	.globl	yyget_lineno            // -- Begin function yyget_lineno
	.p2align	2
	.type	yyget_lineno,@function
yyget_lineno:                           // @yyget_lineno
// %bb.0:
	adrp	x8, yylineno
	add	x8, x8, :lo12:yylineno
	ldr	w0, [x8]
	ret
.Lfunc_end21:
	.size	yyget_lineno, .Lfunc_end21-yyget_lineno
                                        // -- End function
	.globl	yyget_in                // -- Begin function yyget_in
	.p2align	2
	.type	yyget_in,@function
yyget_in:                               // @yyget_in
// %bb.0:
	adrp	x8, yyin
	add	x8, x8, :lo12:yyin
	ldr	x0, [x8]
	ret
.Lfunc_end22:
	.size	yyget_in, .Lfunc_end22-yyget_in
                                        // -- End function
	.globl	yyget_out               // -- Begin function yyget_out
	.p2align	2
	.type	yyget_out,@function
yyget_out:                              // @yyget_out
// %bb.0:
	adrp	x8, yyout
	add	x8, x8, :lo12:yyout
	ldr	x0, [x8]
	ret
.Lfunc_end23:
	.size	yyget_out, .Lfunc_end23-yyget_out
                                        // -- End function
	.globl	yyget_leng              // -- Begin function yyget_leng
	.p2align	2
	.type	yyget_leng,@function
yyget_leng:                             // @yyget_leng
// %bb.0:
	adrp	x8, yyleng
	add	x8, x8, :lo12:yyleng
	ldr	w0, [x8]
	ret
.Lfunc_end24:
	.size	yyget_leng, .Lfunc_end24-yyget_leng
                                        // -- End function
	.globl	yyget_text              // -- Begin function yyget_text
	.p2align	2
	.type	yyget_text,@function
yyget_text:                             // @yyget_text
// %bb.0:
	adrp	x8, yytext
	add	x8, x8, :lo12:yytext
	ldr	x0, [x8]
	ret
.Lfunc_end25:
	.size	yyget_text, .Lfunc_end25-yyget_text
                                        // -- End function
	.globl	yyset_lineno            // -- Begin function yyset_lineno
	.p2align	2
	.type	yyset_lineno,@function
yyset_lineno:                           // @yyset_lineno
// %bb.0:
	sub	sp, sp, #16             // =16
	adrp	x8, yylineno
	add	x8, x8, :lo12:yylineno
	str	w0, [sp, #12]
	ldr	w0, [sp, #12]
	str	w0, [x8]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end26:
	.size	yyset_lineno, .Lfunc_end26-yyset_lineno
                                        // -- End function
	.globl	yyset_in                // -- Begin function yyset_in
	.p2align	2
	.type	yyset_in,@function
yyset_in:                               // @yyset_in
// %bb.0:
	sub	sp, sp, #16             // =16
	adrp	x8, yyin
	add	x8, x8, :lo12:yyin
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [x8]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end27:
	.size	yyset_in, .Lfunc_end27-yyset_in
                                        // -- End function
	.globl	yyset_out               // -- Begin function yyset_out
	.p2align	2
	.type	yyset_out,@function
yyset_out:                              // @yyset_out
// %bb.0:
	sub	sp, sp, #16             // =16
	adrp	x8, yyout
	add	x8, x8, :lo12:yyout
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [x8]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end28:
	.size	yyset_out, .Lfunc_end28-yyset_out
                                        // -- End function
	.globl	yyget_debug             // -- Begin function yyget_debug
	.p2align	2
	.type	yyget_debug,@function
yyget_debug:                            // @yyget_debug
// %bb.0:
	adrp	x8, yy_flex_debug
	add	x8, x8, :lo12:yy_flex_debug
	ldr	w0, [x8]
	ret
.Lfunc_end29:
	.size	yyget_debug, .Lfunc_end29-yyget_debug
                                        // -- End function
	.globl	yyset_debug             // -- Begin function yyset_debug
	.p2align	2
	.type	yyset_debug,@function
yyset_debug:                            // @yyset_debug
// %bb.0:
	sub	sp, sp, #16             // =16
	adrp	x8, yy_flex_debug
	add	x8, x8, :lo12:yy_flex_debug
	str	w0, [sp, #12]
	ldr	w0, [sp, #12]
	str	w0, [x8]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end30:
	.size	yyset_debug, .Lfunc_end30-yyset_debug
                                        // -- End function
	.globl	yylex_destroy           // -- Begin function yylex_destroy
	.p2align	2
	.type	yylex_destroy,@function
yylex_destroy:                          // @yylex_destroy
// %bb.0:
	sub	sp, sp, #80             // =80
	stp	x29, x30, [sp, #64]     // 8-byte Folded Spill
	add	x29, sp, #64            // =64
	adrp	x8, yy_buffer_stack
	add	x8, x8, :lo12:yy_buffer_stack
	mov	x9, #0
	adrp	x10, yy_buffer_stack_top
	add	x10, x10, :lo12:yy_buffer_stack_top
	stur	x8, [x29, #-8]          // 8-byte Folded Spill
	stur	x9, [x29, #-16]         // 8-byte Folded Spill
	stur	x10, [x29, #-24]        // 8-byte Folded Spill
.LBB31_1:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]          // 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-16]        // 8-byte Folded Reload
	cmp	x9, x10
	cset	w11, ne
	tbnz	w11, #0, .LBB31_2
	b	.LBB31_3
.LBB31_2:                               //   in Loop: Header=BB31_1 Depth=1
	orr	x8, xzr, #0x8
	ldur	x9, [x29, #-8]          // 8-byte Folded Reload
	ldr	x10, [x9]
	ldur	x11, [x29, #-24]        // 8-byte Folded Reload
	ldr	x12, [x11]
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x8, [x8]
	str	x8, [sp, #32]           // 8-byte Folded Spill
	b	.LBB31_4
.LBB31_3:                               //   in Loop: Header=BB31_1 Depth=1
	ldur	x8, [x29, #-16]         // 8-byte Folded Reload
	str	x8, [sp, #32]           // 8-byte Folded Spill
.LBB31_4:                               //   in Loop: Header=BB31_1 Depth=1
	ldr	x8, [sp, #32]           // 8-byte Folded Reload
	ldur	x9, [x29, #-16]         // 8-byte Folded Reload
	cmp	x8, x9
	cset	w10, ne
	tbnz	w10, #0, .LBB31_5
	b	.LBB31_9
.LBB31_5:                               //   in Loop: Header=BB31_1 Depth=1
	ldur	x8, [x29, #-8]          // 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-16]        // 8-byte Folded Reload
	cmp	x9, x10
	cset	w11, ne
	tbnz	w11, #0, .LBB31_6
	b	.LBB31_7
.LBB31_6:                               //   in Loop: Header=BB31_1 Depth=1
	orr	x8, xzr, #0x8
	ldur	x9, [x29, #-8]          // 8-byte Folded Reload
	ldr	x10, [x9]
	ldur	x11, [x29, #-24]        // 8-byte Folded Reload
	ldr	x12, [x11]
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	x8, [x8]
	str	x8, [sp, #24]           // 8-byte Folded Spill
	b	.LBB31_8
.LBB31_7:                               //   in Loop: Header=BB31_1 Depth=1
	ldur	x8, [x29, #-16]         // 8-byte Folded Reload
	str	x8, [sp, #24]           // 8-byte Folded Spill
.LBB31_8:                               //   in Loop: Header=BB31_1 Depth=1
	ldr	x8, [sp, #24]           // 8-byte Folded Reload
	orr	x9, xzr, #0x8
	mov	x0, x8
	str	x9, [sp, #16]           // 8-byte Folded Spill
	bl	yy_delete_buffer
	ldur	x8, [x29, #-8]          // 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x0, [x29, #-24]         // 8-byte Folded Reload
	ldr	x10, [x0]
	ldr	x11, [sp, #16]          // 8-byte Folded Reload
	mul	x10, x11, x10
	add	x9, x9, x10
	ldur	x10, [x29, #-16]        // 8-byte Folded Reload
	str	x10, [x9]
	bl	yypop_buffer_state
	b	.LBB31_1
.LBB31_9:
	mov	w0, #0
	ldur	x8, [x29, #-8]          // 8-byte Folded Reload
	ldr	x9, [x8]
	str	w0, [sp, #12]           // 4-byte Folded Spill
	mov	x0, x9
	bl	yyfree
	ldur	x8, [x29, #-16]         // 8-byte Folded Reload
	ldur	x9, [x29, #-8]          // 8-byte Folded Reload
	str	x8, [x9]
	bl	yy_init_globals
	ldr	w10, [sp, #12]          // 4-byte Folded Reload
	mov	w0, w10
	ldp	x29, x30, [sp, #64]     // 8-byte Folded Reload
	add	sp, sp, #80             // =80
	ret
.Lfunc_end31:
	.size	yylex_destroy, .Lfunc_end31-yylex_destroy
                                        // -- End function
	.p2align	2               // -- Begin function yy_init_globals
	.type	yy_init_globals,@function
yy_init_globals:                        // @yy_init_globals
// %bb.0:
	mov	x8, #0
	adrp	x9, yy_buffer_stack
	add	x9, x9, :lo12:yy_buffer_stack
	adrp	x10, yy_buffer_stack_top
	add	x10, x10, :lo12:yy_buffer_stack_top
	adrp	x11, yy_buffer_stack_max
	add	x11, x11, :lo12:yy_buffer_stack_max
	adrp	x12, yy_c_buf_p
	add	x12, x12, :lo12:yy_c_buf_p
	mov	w0, #0
	adrp	x13, yy_init
	add	x13, x13, :lo12:yy_init
	adrp	x14, yy_start
	add	x14, x14, :lo12:yy_start
	adrp	x15, yyin
	add	x15, x15, :lo12:yyin
	adrp	x16, yyout
	add	x16, x16, :lo12:yyout
	str	x8, [x9]
	str	xzr, [x10]
	str	xzr, [x11]
	str	x8, [x12]
	str	wzr, [x13]
	str	wzr, [x14]
	str	x8, [x15]
	str	x8, [x16]
	ret
.Lfunc_end32:
	.size	yy_init_globals, .Lfunc_end32-yy_init_globals
                                        // -- End function
	.globl	yyrealloc               // -- Begin function yyrealloc
	.p2align	2
	.type	yyrealloc,@function
yyrealloc:                              // @yyrealloc
// %bb.0:
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 8-byte Folded Spill
	add	x29, sp, #16            // =16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	realloc
	ldp	x29, x30, [sp, #16]     // 8-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end33:
	.size	yyrealloc, .Lfunc_end33-yyrealloc
                                        // -- End function
	.type	yyin,@object            // @yyin
	.bss
	.globl	yyin
	.p2align	3
yyin:
	.xword	0
	.size	yyin, 8

	.type	yyout,@object           // @yyout
	.globl	yyout
	.p2align	3
yyout:
	.xword	0
	.size	yyout, 8

	.type	yylineno,@object        // @yylineno
	.data
	.globl	yylineno
	.p2align	2
yylineno:
	.word	1                       // 0x1
	.size	yylineno, 4

	.type	yy_flex_debug,@object   // @yy_flex_debug
	.bss
	.globl	yy_flex_debug
	.p2align	2
yy_flex_debug:
	.word	0                       // 0x0
	.size	yy_flex_debug, 4

	.type	yy_init,@object         // @yy_init
	.local	yy_init
	.comm	yy_init,4,4
	.type	yy_start,@object        // @yy_start
	.local	yy_start
	.comm	yy_start,4,4
	.type	yy_buffer_stack,@object // @yy_buffer_stack
	.local	yy_buffer_stack
	.comm	yy_buffer_stack,8,8
	.type	yy_buffer_stack_top,@object // @yy_buffer_stack_top
	.local	yy_buffer_stack_top
	.comm	yy_buffer_stack_top,8,8
	.type	yy_c_buf_p,@object      // @yy_c_buf_p
	.local	yy_c_buf_p
	.comm	yy_c_buf_p,8,8
	.type	yy_hold_char,@object    // @yy_hold_char
	.local	yy_hold_char
	.comm	yy_hold_char,1,1
	.type	yy_ec,@object           // @yy_ec
	.section	.rodata,"a",@progbits
yy_ec:
	.ascii	"\000\001\001\001\001\001\001\001\001\002\003\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\002\004\005\001\006\001\001\001\007\b\001\001\t\n\001\001\013\013\013\013\013\013\013\013\013\013\001\f\r\016\017\001\001\020\021\022\023\024\025\026\027\030\021\021\031\032\033\034\035\021\036\037 !\021\"\021\021\021\001\001\001\001#\001$\021%&'()*+\021\021,-./0\0211234\0215\021\021\021\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001"
	.size	yy_ec, 256

	.type	yy_accept,@object       // @yy_accept
	.p2align	1
yy_accept:
	.hword	0                       // 0x0
	.hword	0                       // 0x0
	.hword	0                       // 0x0
	.hword	32                      // 0x20
	.hword	30                      // 0x1e
	.hword	29                      // 0x1d
	.hword	31                      // 0x1f
	.hword	30                      // 0x1e
	.hword	30                      // 0x1e
	.hword	15                      // 0xf
	.hword	16                      // 0x10
	.hword	25                      // 0x19
	.hword	30                      // 0x1e
	.hword	28                      // 0x1c
	.hword	24                      // 0x18
	.hword	17                      // 0x11
	.hword	23                      // 0x17
	.hword	19                      // 0x13
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	22                      // 0x16
	.hword	0                       // 0x0
	.hword	28                      // 0x1c
	.hword	18                      // 0x12
	.hword	21                      // 0x15
	.hword	20                      // 0x14
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	11                      // 0xb
	.hword	26                      // 0x1a
	.hword	5                       // 0x5
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	13                      // 0xd
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	27                      // 0x1b
	.hword	4                       // 0x4
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	1                       // 0x1
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	6                       // 0x6
	.hword	26                      // 0x1a
	.hword	12                      // 0xc
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	2                       // 0x2
	.hword	26                      // 0x1a
	.hword	9                       // 0x9
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	26                      // 0x1a
	.hword	3                       // 0x3
	.hword	14                      // 0xe
	.hword	7                       // 0x7
	.hword	8                       // 0x8
	.hword	10                      // 0xa
	.hword	0                       // 0x0
	.size	yy_accept, 158

	.type	yy_last_accepting_state,@object // @yy_last_accepting_state
	.local	yy_last_accepting_state
	.comm	yy_last_accepting_state,4,4
	.type	yy_last_accepting_cpos,@object // @yy_last_accepting_cpos
	.local	yy_last_accepting_cpos
	.comm	yy_last_accepting_cpos,8,8
	.type	yy_chk,@object          // @yy_chk
	.p2align	1
yy_chk:
	.hword	0                       // 0x0
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	1                       // 0x1
	.hword	18                      // 0x12
	.hword	20                      // 0x14
	.hword	21                      // 0x15
	.hword	22                      // 0x16
	.hword	23                      // 0x17
	.hword	24                      // 0x18
	.hword	25                      // 0x19
	.hword	26                      // 0x1a
	.hword	27                      // 0x1b
	.hword	28                      // 0x1c
	.hword	29                      // 0x1d
	.hword	30                      // 0x1e
	.hword	38                      // 0x26
	.hword	39                      // 0x27
	.hword	40                      // 0x28
	.hword	41                      // 0x29
	.hword	42                      // 0x2a
	.hword	42                      // 0x2a
	.hword	43                      // 0x2b
	.hword	18                      // 0x12
	.hword	20                      // 0x14
	.hword	21                      // 0x15
	.hword	22                      // 0x16
	.hword	23                      // 0x17
	.hword	24                      // 0x18
	.hword	25                      // 0x19
	.hword	26                      // 0x1a
	.hword	27                      // 0x1b
	.hword	28                      // 0x1c
	.hword	29                      // 0x1d
	.hword	30                      // 0x1e
	.hword	38                      // 0x26
	.hword	39                      // 0x27
	.hword	40                      // 0x28
	.hword	41                      // 0x29
	.hword	42                      // 0x2a
	.hword	42                      // 0x2a
	.hword	43                      // 0x2b
	.hword	45                      // 0x2d
	.hword	46                      // 0x2e
	.hword	48                      // 0x30
	.hword	49                      // 0x31
	.hword	52                      // 0x34
	.hword	53                      // 0x35
	.hword	55                      // 0x37
	.hword	56                      // 0x38
	.hword	58                      // 0x3a
	.hword	60                      // 0x3c
	.hword	80                      // 0x50
	.hword	61                      // 0x3d
	.hword	62                      // 0x3e
	.hword	64                      // 0x40
	.hword	66                      // 0x42
	.hword	67                      // 0x43
	.hword	68                      // 0x44
	.hword	69                      // 0x45
	.hword	70                      // 0x46
	.hword	45                      // 0x2d
	.hword	46                      // 0x2e
	.hword	48                      // 0x30
	.hword	49                      // 0x31
	.hword	52                      // 0x34
	.hword	53                      // 0x35
	.hword	55                      // 0x37
	.hword	56                      // 0x38
	.hword	58                      // 0x3a
	.hword	71                      // 0x47
	.hword	60                      // 0x3c
	.hword	61                      // 0x3d
	.hword	62                      // 0x3e
	.hword	64                      // 0x40
	.hword	66                      // 0x42
	.hword	67                      // 0x43
	.hword	68                      // 0x44
	.hword	69                      // 0x45
	.hword	70                      // 0x46
	.hword	72                      // 0x48
	.hword	50                      // 0x32
	.hword	33                      // 0x21
	.hword	32                      // 0x20
	.hword	17                      // 0x11
	.hword	16                      // 0x10
	.hword	15                      // 0xf
	.hword	13                      // 0xd
	.hword	12                      // 0xc
	.hword	71                      // 0x47
	.hword	7                       // 0x7
	.hword	3                       // 0x3
	.hword	0                       // 0x0
	.hword	0                       // 0x0
	.hword	0                       // 0x0
	.hword	0                       // 0x0
	.hword	0                       // 0x0
	.hword	0                       // 0x0
	.hword	0                       // 0x0
	.hword	72                      // 0x48
	.hword	79                      // 0x4f
	.hword	0                       // 0x0
	.hword	79                      // 0x4f
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.size	yy_chk, 414

	.type	yy_base,@object         // @yy_base
	.p2align	1
yy_base:
	.hword	0                       // 0x0
	.hword	0                       // 0x0
	.hword	0                       // 0x0
	.hword	141                     // 0x8d
	.hword	153                     // 0x99
	.hword	153                     // 0x99
	.hword	153                     // 0x99
	.hword	126                     // 0x7e
	.hword	0                       // 0x0
	.hword	153                     // 0x99
	.hword	153                     // 0x99
	.hword	153                     // 0x99
	.hword	127                     // 0x7f
	.hword	126                     // 0x7e
	.hword	153                     // 0x99
	.hword	122                     // 0x7a
	.hword	121                     // 0x79
	.hword	120                     // 0x78
	.hword	27                      // 0x1b
	.hword	0                       // 0x0
	.hword	35                      // 0x23
	.hword	26                      // 0x1a
	.hword	37                      // 0x25
	.hword	31                      // 0x1f
	.hword	31                      // 0x1f
	.hword	30                      // 0x1e
	.hword	41                      // 0x29
	.hword	42                      // 0x2a
	.hword	35                      // 0x23
	.hword	35                      // 0x23
	.hword	42                      // 0x2a
	.hword	153                     // 0x99
	.hword	128                     // 0x80
	.hword	121                     // 0x79
	.hword	153                     // 0x99
	.hword	153                     // 0x99
	.hword	153                     // 0x99
	.hword	0                       // 0x0
	.hword	47                      // 0x2f
	.hword	42                      // 0x2a
	.hword	40                      // 0x28
	.hword	37                      // 0x25
	.hword	39                      // 0x27
	.hword	40                      // 0x28
	.hword	0                       // 0x0
	.hword	74                      // 0x4a
	.hword	61                      // 0x3d
	.hword	0                       // 0x0
	.hword	75                      // 0x4b
	.hword	75                      // 0x4b
	.hword	126                     // 0x7e
	.hword	0                       // 0x0
	.hword	76                      // 0x4c
	.hword	71                      // 0x47
	.hword	0                       // 0x0
	.hword	78                      // 0x4e
	.hword	71                      // 0x47
	.hword	0                       // 0x0
	.hword	72                      // 0x48
	.hword	0                       // 0x0
	.hword	85                      // 0x55
	.hword	73                      // 0x49
	.hword	72                      // 0x48
	.hword	0                       // 0x0
	.hword	75                      // 0x4b
	.hword	0                       // 0x0
	.hword	76                      // 0x4c
	.hword	75                      // 0x4b
	.hword	88                      // 0x58
	.hword	89                      // 0x59
	.hword	78                      // 0x4e
	.hword	101                     // 0x65
	.hword	110                     // 0x6e
	.hword	0                       // 0x0
	.hword	0                       // 0x0
	.hword	0                       // 0x0
	.hword	0                       // 0x0
	.hword	0                       // 0x0
	.hword	153                     // 0x99
	.hword	149                     // 0x95
	.hword	99                      // 0x63
	.size	yy_base, 162

	.type	yy_def,@object          // @yy_def
	.p2align	1
yy_def:
	.hword	0                       // 0x0
	.hword	78                      // 0x4e
	.hword	1                       // 0x1
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	79                      // 0x4f
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	78                      // 0x4e
	.hword	79                      // 0x4f
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	79                      // 0x4f
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	80                      // 0x50
	.hword	0                       // 0x0
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.size	yy_def, 162

	.type	yy_meta,@object         // @yy_meta
yy_meta:
	.ascii	"\000\001\001\002\001\001\003\001\001\001\001\003\001\001\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003"
	.size	yy_meta, 54

	.type	yy_nxt,@object          // @yy_nxt
	.p2align	1
yy_nxt:
	.hword	0                       // 0x0
	.hword	4                       // 0x4
	.hword	5                       // 0x5
	.hword	6                       // 0x6
	.hword	7                       // 0x7
	.hword	8                       // 0x8
	.hword	4                       // 0x4
	.hword	9                       // 0x9
	.hword	10                      // 0xa
	.hword	11                      // 0xb
	.hword	12                      // 0xc
	.hword	13                      // 0xd
	.hword	14                      // 0xe
	.hword	15                      // 0xf
	.hword	16                      // 0x10
	.hword	17                      // 0x11
	.hword	18                      // 0x12
	.hword	19                      // 0x13
	.hword	19                      // 0x13
	.hword	20                      // 0x14
	.hword	19                      // 0x13
	.hword	21                      // 0x15
	.hword	22                      // 0x16
	.hword	19                      // 0x13
	.hword	23                      // 0x17
	.hword	19                      // 0x13
	.hword	19                      // 0x13
	.hword	24                      // 0x18
	.hword	25                      // 0x19
	.hword	19                      // 0x13
	.hword	26                      // 0x1a
	.hword	27                      // 0x1b
	.hword	28                      // 0x1c
	.hword	29                      // 0x1d
	.hword	30                      // 0x1e
	.hword	19                      // 0x13
	.hword	18                      // 0x12
	.hword	19                      // 0x13
	.hword	20                      // 0x14
	.hword	19                      // 0x13
	.hword	21                      // 0x15
	.hword	22                      // 0x16
	.hword	19                      // 0x13
	.hword	23                      // 0x17
	.hword	19                      // 0x13
	.hword	19                      // 0x13
	.hword	24                      // 0x18
	.hword	25                      // 0x19
	.hword	19                      // 0x13
	.hword	26                      // 0x1a
	.hword	27                      // 0x1b
	.hword	28                      // 0x1c
	.hword	29                      // 0x1d
	.hword	30                      // 0x1e
	.hword	38                      // 0x26
	.hword	39                      // 0x27
	.hword	40                      // 0x28
	.hword	41                      // 0x29
	.hword	42                      // 0x2a
	.hword	43                      // 0x2b
	.hword	44                      // 0x2c
	.hword	45                      // 0x2d
	.hword	46                      // 0x2e
	.hword	47                      // 0x2f
	.hword	48                      // 0x30
	.hword	49                      // 0x31
	.hword	51                      // 0x33
	.hword	52                      // 0x34
	.hword	53                      // 0x35
	.hword	54                      // 0x36
	.hword	55                      // 0x37
	.hword	56                      // 0x38
	.hword	57                      // 0x39
	.hword	38                      // 0x26
	.hword	39                      // 0x27
	.hword	40                      // 0x28
	.hword	41                      // 0x29
	.hword	42                      // 0x2a
	.hword	43                      // 0x2b
	.hword	44                      // 0x2c
	.hword	45                      // 0x2d
	.hword	46                      // 0x2e
	.hword	47                      // 0x2f
	.hword	48                      // 0x30
	.hword	49                      // 0x31
	.hword	51                      // 0x33
	.hword	52                      // 0x34
	.hword	53                      // 0x35
	.hword	54                      // 0x36
	.hword	55                      // 0x37
	.hword	56                      // 0x38
	.hword	57                      // 0x39
	.hword	58                      // 0x3a
	.hword	59                      // 0x3b
	.hword	60                      // 0x3c
	.hword	61                      // 0x3d
	.hword	62                      // 0x3e
	.hword	63                      // 0x3f
	.hword	64                      // 0x40
	.hword	65                      // 0x41
	.hword	66                      // 0x42
	.hword	67                      // 0x43
	.hword	37                      // 0x25
	.hword	68                      // 0x44
	.hword	69                      // 0x45
	.hword	70                      // 0x46
	.hword	71                      // 0x47
	.hword	72                      // 0x48
	.hword	73                      // 0x49
	.hword	74                      // 0x4a
	.hword	75                      // 0x4b
	.hword	58                      // 0x3a
	.hword	59                      // 0x3b
	.hword	60                      // 0x3c
	.hword	61                      // 0x3d
	.hword	62                      // 0x3e
	.hword	63                      // 0x3f
	.hword	64                      // 0x40
	.hword	65                      // 0x41
	.hword	66                      // 0x42
	.hword	76                      // 0x4c
	.hword	67                      // 0x43
	.hword	68                      // 0x44
	.hword	69                      // 0x45
	.hword	70                      // 0x46
	.hword	71                      // 0x47
	.hword	72                      // 0x48
	.hword	73                      // 0x49
	.hword	74                      // 0x4a
	.hword	75                      // 0x4b
	.hword	77                      // 0x4d
	.hword	50                      // 0x32
	.hword	33                      // 0x21
	.hword	50                      // 0x32
	.hword	36                      // 0x24
	.hword	35                      // 0x23
	.hword	34                      // 0x22
	.hword	33                      // 0x21
	.hword	33                      // 0x21
	.hword	76                      // 0x4c
	.hword	31                      // 0x1f
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	77                      // 0x4d
	.hword	32                      // 0x20
	.hword	78                      // 0x4e
	.hword	32                      // 0x20
	.hword	3                       // 0x3
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.hword	78                      // 0x4e
	.size	yy_nxt, 414

	.type	yytext,@object          // @yytext
	.comm	yytext,8,8
	.type	yyleng,@object          // @yyleng
	.comm	yyleng,4,4
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"BANDA %s\n"
	.size	.L.str, 10

	.type	.L.str.1,@object        // @.str.1
.L.str.1:
	.asciz	"DEL %s\n"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        // @.str.2
.L.str.2:
	.asciz	"This is an invalid character"
	.size	.L.str.2, 29

	.type	yy_n_chars,@object      // @yy_n_chars
	.local	yy_n_chars
	.comm	yy_n_chars,4,4
	.type	yy_did_buffer_switch_on_eof,@object // @yy_did_buffer_switch_on_eof
	.local	yy_did_buffer_switch_on_eof
	.comm	yy_did_buffer_switch_on_eof,4,4
	.type	.L.str.3,@object        // @.str.3
.L.str.3:
	.asciz	"fatal flex scanner internal error--no action found"
	.size	.L.str.3, 51

	.type	.L.str.4,@object        // @.str.4
.L.str.4:
	.asciz	"out of dynamic memory in yy_create_buffer()"
	.size	.L.str.4, 44

	.type	.L.str.5,@object        // @.str.5
.L.str.5:
	.asciz	"out of dynamic memory in yy_scan_buffer()"
	.size	.L.str.5, 42

	.type	.L.str.6,@object        // @.str.6
.L.str.6:
	.asciz	"out of dynamic memory in yy_scan_bytes()"
	.size	.L.str.6, 41

	.type	.L.str.7,@object        // @.str.7
.L.str.7:
	.asciz	"bad buffer in yy_scan_bytes()"
	.size	.L.str.7, 30

	.type	.L.str.8,@object        // @.str.8
.L.str.8:
	.asciz	"fatal flex scanner internal error--end of buffer missed"
	.size	.L.str.8, 56

	.type	.L.str.9,@object        // @.str.9
.L.str.9:
	.asciz	"fatal error - scanner input buffer overflow"
	.size	.L.str.9, 44

	.type	.L.str.10,@object       // @.str.10
.L.str.10:
	.asciz	"input in flex scanner failed"
	.size	.L.str.10, 29

	.type	.L.str.11,@object       // @.str.11
.L.str.11:
	.asciz	"out of dynamic memory in yy_get_next_buffer()"
	.size	.L.str.11, 46

	.type	.L.str.12,@object       // @.str.12
.L.str.12:
	.asciz	"out of dynamic memory in yyensure_buffer_stack()"
	.size	.L.str.12, 49

	.type	yy_buffer_stack_max,@object // @yy_buffer_stack_max
	.local	yy_buffer_stack_max
	.comm	yy_buffer_stack_max,8,8
	.type	.L.str.13,@object       // @.str.13
.L.str.13:
	.asciz	"%s\n"
	.size	.L.str.13, 4


	.ident	"clang version 7.0.0 (tags/RELEASE_700/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yylex
	.addrsig_sym yyensure_buffer_stack
	.addrsig_sym yy_create_buffer
	.addrsig_sym yy_load_buffer_state
	.addrsig_sym printf
	.addrsig_sym fprintf
	.addrsig_sym strlwr
	.addrsig_sym strcpy
	.addrsig_sym atoi
	.addrsig_sym puts
	.addrsig_sym yyerror
	.addrsig_sym fwrite
	.addrsig_sym yy_get_previous_state
	.addrsig_sym yy_try_NUL_trans
	.addrsig_sym yy_get_next_buffer
	.addrsig_sym yywrap
	.addrsig_sym yyrestart
	.addrsig_sym yy_fatal_error
	.addrsig_sym yy_init_buffer
	.addrsig_sym yy_switch_to_buffer
	.addrsig_sym yyalloc
	.addrsig_sym yy_delete_buffer
	.addrsig_sym yyfree
	.addrsig_sym yy_flush_buffer
	.addrsig_sym yypush_buffer_state
	.addrsig_sym yypop_buffer_state
	.addrsig_sym yy_scan_buffer
	.addrsig_sym yy_scan_string
	.addrsig_sym yy_scan_bytes
	.addrsig_sym strlen
	.addrsig_sym yyget_lineno
	.addrsig_sym yyget_in
	.addrsig_sym yyget_out
	.addrsig_sym yyget_leng
	.addrsig_sym yyget_text
	.addrsig_sym yyset_lineno
	.addrsig_sym yyset_in
	.addrsig_sym yyset_out
	.addrsig_sym yyget_debug
	.addrsig_sym yyset_debug
	.addrsig_sym yylex_destroy
	.addrsig_sym yy_init_globals
	.addrsig_sym malloc
	.addrsig_sym yyrealloc
	.addrsig_sym realloc
	.addrsig_sym free
	.addrsig_sym getc
	.addrsig_sym ferror
	.addrsig_sym __errno
	.addrsig_sym fread
	.addrsig_sym clearerr
	.addrsig_sym isatty
	.addrsig_sym fileno
	.addrsig_sym exit
	.addrsig_sym yyin
	.addrsig_sym yyout
	.addrsig_sym yylineno
	.addrsig_sym yy_flex_debug
	.addrsig_sym yy_init
	.addrsig_sym yy_start
	.addrsig_sym __sF
	.addrsig_sym yy_buffer_stack
	.addrsig_sym yy_buffer_stack_top
	.addrsig_sym yy_c_buf_p
	.addrsig_sym yy_hold_char
	.addrsig_sym yy_ec
	.addrsig_sym yy_accept
	.addrsig_sym yy_last_accepting_state
	.addrsig_sym yy_last_accepting_cpos
	.addrsig_sym yy_chk
	.addrsig_sym yy_base
	.addrsig_sym yy_def
	.addrsig_sym yy_meta
	.addrsig_sym yy_nxt
	.addrsig_sym yytext
	.addrsig_sym yyleng
	.addrsig_sym yylval
	.addrsig_sym yy_n_chars
	.addrsig_sym yy_did_buffer_switch_on_eof
	.addrsig_sym yy_buffer_stack_max
