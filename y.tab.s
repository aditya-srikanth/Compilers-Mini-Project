	.text
	.file	"y.tab.c"
	.globl	strlwr                  // -- Begin function strlwr
	.p2align	2
	.type	strlwr,@function
strlwr:                                 // @strlwr
// %bb.0:
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 8-byte Folded Spill
	add	x29, sp, #32            // =32
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-12]
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-12]
	mov	w9, w8
	sxtw	x9, w9
	ldur	x0, [x29, #-8]
	str	x9, [sp, #8]            // 8-byte Folded Spill
	bl	strlen
	ldr	x9, [sp, #8]            // 8-byte Folded Reload
	cmp	x9, x0
	cset	w8, lo
	tbnz	w8, #0, .LBB0_2
	b	.LBB0_4
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldur	w9, [x29, #-12]
	mov	w10, w9
	sxtw	x10, w10
	add	x8, x8, x10
	ldrb	w9, [x8]
	uxtb	w0, w9
	bl	tolower
	ldur	x8, [x29, #-8]
	ldur	w9, [x29, #-12]
	mov	w10, w9
	sxtw	x10, w10
	add	x8, x8, x10
	strb	w0, [x8]
// %bb.3:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-12]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #32]     // 8-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end0:
	.size	strlwr, .Lfunc_end0-strlwr
                                        // -- End function
	.globl	strupr                  // -- Begin function strupr
	.p2align	2
	.type	strupr,@function
strupr:                                 // @strupr
// %bb.0:
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 8-byte Folded Spill
	add	x29, sp, #32            // =32
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-12]
.LBB1_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-12]
	mov	w9, w8
	sxtw	x9, w9
	ldur	x0, [x29, #-8]
	str	x9, [sp, #8]            // 8-byte Folded Spill
	bl	strlen
	ldr	x9, [sp, #8]            // 8-byte Folded Reload
	cmp	x9, x0
	cset	w8, lo
	tbnz	w8, #0, .LBB1_2
	b	.LBB1_4
.LBB1_2:                                //   in Loop: Header=BB1_1 Depth=1
	ldur	x8, [x29, #-8]
	ldur	w9, [x29, #-12]
	mov	w10, w9
	sxtw	x10, w10
	add	x8, x8, x10
	ldrb	w9, [x8]
	uxtb	w0, w9
	bl	toupper
	ldur	x8, [x29, #-8]
	ldur	w9, [x29, #-12]
	mov	w10, w9
	sxtw	x10, w10
	add	x8, x8, x10
	strb	w0, [x8]
// %bb.3:                               //   in Loop: Header=BB1_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-12]
	b	.LBB1_1
.LBB1_4:
	ldp	x29, x30, [sp, #32]     // 8-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end1:
	.size	strupr, .Lfunc_end1-strupr
                                        // -- End function
	.globl	print_list              // -- Begin function print_list
	.p2align	2
	.type	print_list,@function
print_list:                             // @print_list
// %bb.0:
	sub	sp, sp, #96             // =96
	stp	x29, x30, [sp, #80]     // 8-byte Folded Spill
	add	x29, sp, #80            // =80
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	mov	x9, #0
	adrp	x10, .L.str.6
	add	x10, x10, :lo12:.L.str.6
	adrp	x11, .L.str.4
	add	x11, x11, :lo12:.L.str.4
	adrp	x12, .L.str.3
	add	x12, x12, :lo12:.L.str.3
	adrp	x13, .L.str.5
	add	x13, x13, :lo12:.L.str.5
	stur	x0, [x29, #-8]
	mov	x0, x8
	stur	x13, [x29, #-24]        // 8-byte Folded Spill
	stur	x12, [x29, #-32]        // 8-byte Folded Spill
	str	x9, [sp, #40]           // 8-byte Folded Spill
	str	x10, [sp, #32]          // 8-byte Folded Spill
	str	x11, [sp, #24]          // 8-byte Folded Spill
	bl	printf
.LBB2_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB2_3 Depth 2
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #40]           // 8-byte Folded Reload
	cmp	x8, x9
	cset	w10, ne
	tbnz	w10, #0, .LBB2_2
	b	.LBB2_13
.LBB2_2:                                //   in Loop: Header=BB2_1 Depth=1
	mov	x8, #34864
	movk	x8, #1, lsl #16
	ldur	x9, [x29, #-8]
	add	x8, x9, x8
	ldr	w10, [x8]
	stur	w10, [x29, #-12]
	stur	wzr, [x29, #-16]
.LBB2_3:                                //   Parent Loop BB2_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-12]
	cmp	w8, w9
	cset	w8, lt
	tbnz	w8, #0, .LBB2_4
	b	.LBB2_12
.LBB2_4:                                //   in Loop: Header=BB2_3 Depth=2
	mov	x8, #1004
	ldur	x9, [x29, #-8]
	ldur	w10, [x29, #-16]
	mov	w11, w10
	sxtw	x11, w11
	mul	x8, x8, x11
	add	x8, x9, x8
	ldr	w10, [x8]
	str	w10, [sp, #20]          // 4-byte Folded Spill
	cbz	w10, .LBB2_7
	b	.LBB2_5
.LBB2_5:                                //   in Loop: Header=BB2_3 Depth=2
	orr	w8, wzr, #0x1
	ldr	w9, [sp, #20]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB2_8
	b	.LBB2_6
.LBB2_6:                                //   in Loop: Header=BB2_3 Depth=2
	b	.LBB2_9
.LBB2_7:                                //   in Loop: Header=BB2_3 Depth=2
	mov	x8, #1004
	ldur	x9, [x29, #-8]
	ldur	w10, [x29, #-16]
	mov	w11, w10
	sxtw	x11, w11
	mul	x8, x8, x11
	add	x8, x9, x8
	ldr	w1, [x8, #4]
	ldur	x0, [x29, #-32]         // 8-byte Folded Reload
	bl	printf
	b	.LBB2_10
.LBB2_8:                                //   in Loop: Header=BB2_3 Depth=2
	orr	x8, xzr, #0x4
	mov	x9, #1004
	ldur	x10, [x29, #-8]
	ldur	w11, [x29, #-16]
	mov	w12, w11
	sxtw	x12, w12
	mul	x9, x9, x12
	add	x9, x10, x9
	add	x8, x9, x8
	ldr	x0, [sp, #24]           // 8-byte Folded Reload
	mov	x1, x8
	bl	printf
	b	.LBB2_10
.LBB2_9:                                //   in Loop: Header=BB2_3 Depth=2
	ldur	x0, [x29, #-24]         // 8-byte Folded Reload
	bl	printf
.LBB2_10:                               //   in Loop: Header=BB2_3 Depth=2
// %bb.11:                              //   in Loop: Header=BB2_3 Depth=2
	ldur	w8, [x29, #-16]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-16]
	b	.LBB2_3
.LBB2_12:                               //   in Loop: Header=BB2_1 Depth=1
	mov	x8, #34872
	movk	x8, #1, lsl #16
	ldr	x0, [sp, #32]           // 8-byte Folded Reload
	str	x8, [sp, #8]            // 8-byte Folded Spill
	bl	printf
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #8]            // 8-byte Folded Reload
	add	x8, x8, x9
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	b	.LBB2_1
.LBB2_13:
	ldp	x29, x30, [sp, #80]     // 8-byte Folded Reload
	add	sp, sp, #96             // =96
	ret
.Lfunc_end2:
	.size	print_list, .Lfunc_end2-print_list
                                        // -- End function
	.globl	push_back               // -- Begin function push_back
	.p2align	2
	.type	push_back,@function
push_back:                              // @push_back
// %bb.0:
	sub	sp, sp, #112            // =112
	stp	x29, x30, [sp, #96]     // 8-byte Folded Spill
	add	x29, sp, #96            // =96
	mov	x8, #0
	adrp	x9, .L.str.7
	add	x9, x9, :lo12:.L.str.7
	adrp	x10, .L.str.8
	add	x10, x10, :lo12:.L.str.8
	adrp	x11, .L.str.9
	add	x11, x11, :lo12:.L.str.9
	stur	x1, [x29, #-8]
	ldur	x1, [x29, #-8]
	ldr	x1, [x1]
	cmp	x1, x8
	cset	w12, eq
	stur	x0, [x29, #-32]         // 8-byte Folded Spill
	stur	x11, [x29, #-40]        // 8-byte Folded Spill
	str	x8, [sp, #48]           // 8-byte Folded Spill
	str	x9, [sp, #40]           // 8-byte Folded Spill
	str	x10, [sp, #32]          // 8-byte Folded Spill
	tbnz	w12, #0, .LBB3_1
	b	.LBB3_2
.LBB3_1:
	mov	x2, #34868
	movk	x2, #1, lsl #16
	mov	x0, #34880
	movk	x0, #1, lsl #16
	mov	x8, #34872
	movk	x8, #1, lsl #16
	str	x2, [sp, #24]           // 8-byte Folded Spill
	str	x8, [sp, #16]           // 8-byte Folded Spill
	bl	malloc
	ldur	x8, [x29, #-8]
	str	x0, [x8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	mov	x0, x8
	ldur	x1, [x29, #-32]         // 8-byte Folded Reload
	ldr	x2, [sp, #24]           // 8-byte Folded Reload
	bl	memcpy
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x0, [sp, #16]           // 8-byte Folded Reload
	add	x8, x8, x0
	ldr	x1, [sp, #48]           // 8-byte Folded Reload
	str	x1, [x8]
	ldur	x2, [x29, #-32]         // 8-byte Folded Reload
	ldr	w1, [x2, #4]
	ldr	x0, [sp, #40]           // 8-byte Folded Reload
	bl	printf
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	w1, [x8, #4]
	ldr	x2, [sp, #32]           // 8-byte Folded Reload
	mov	x0, x2
	bl	printf
	b	.LBB3_6
.LBB3_2:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	stur	x8, [x29, #-16]
.LBB3_3:                                // =>This Inner Loop Header: Depth=1
	mov	x8, #34872
	movk	x8, #1, lsl #16
	ldur	x9, [x29, #-16]
	add	x8, x9, x8
	ldr	x8, [x8]
	ldr	x9, [sp, #48]           // 8-byte Folded Reload
	cmp	x8, x9
	cset	w10, ne
	tbnz	w10, #0, .LBB3_4
	b	.LBB3_5
.LBB3_4:                                //   in Loop: Header=BB3_3 Depth=1
	mov	x8, #34872
	movk	x8, #1, lsl #16
	ldur	x9, [x29, #-16]
	add	x8, x9, x8
	ldr	x8, [x8]
	stur	x8, [x29, #-16]
	b	.LBB3_3
.LBB3_5:
	mov	x2, #34868
	movk	x2, #1, lsl #16
	mov	x0, #34880
	movk	x0, #1, lsl #16
	mov	x8, #34872
	movk	x8, #1, lsl #16
	str	x2, [sp, #8]            // 8-byte Folded Spill
	str	x8, [sp]                // 8-byte Folded Spill
	bl	malloc
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	mov	x0, x8
	ldur	x1, [x29, #-32]         // 8-byte Folded Reload
	ldr	x2, [sp, #8]            // 8-byte Folded Reload
	bl	memcpy
	ldur	x8, [x29, #-24]
	ldr	x0, [sp]                // 8-byte Folded Reload
	add	x8, x8, x0
	ldr	x1, [sp, #48]           // 8-byte Folded Reload
	str	x1, [x8]
	ldur	x8, [x29, #-24]
	ldur	x2, [x29, #-16]
	add	x2, x2, x0
	str	x8, [x2]
.LBB3_6:
	ldur	x0, [x29, #-40]         // 8-byte Folded Reload
	bl	printf
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	mov	x0, x8
	bl	print_list
	ldp	x29, x30, [sp, #96]     // 8-byte Folded Reload
	add	sp, sp, #112            // =112
	ret
.Lfunc_end3:
	.size	push_back, .Lfunc_end3-push_back
                                        // -- End function
	.globl	find                    // -- Begin function find
	.p2align	2
	.type	find,@function
find:                                   // @find
// %bb.0:
	sub	sp, sp, #80             // =80
	stp	x29, x30, [sp, #64]     // 8-byte Folded Spill
	add	x29, sp, #64            // =64
	mov	x8, #0
	orr	w9, wzr, #0x1
	mov	w10, #0
	stur	x1, [x29, #-16]
	str	x0, [sp, #32]           // 8-byte Folded Spill
	str	w10, [sp, #28]          // 4-byte Folded Spill
	str	x8, [sp, #16]           // 8-byte Folded Spill
	str	w9, [sp, #12]           // 4-byte Folded Spill
.LBB4_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #16]           // 8-byte Folded Reload
	cmp	x8, x9
	cset	w10, ne
	tbnz	w10, #0, .LBB4_2
	b	.LBB4_14
.LBB4_2:                                //   in Loop: Header=BB4_1 Depth=1
	ldr	w8, [sp, #12]           // 4-byte Folded Reload
	sturb	w8, [x29, #-17]
	ldr	x0, [sp, #32]           // 8-byte Folded Reload
	ldr	w9, [x0]
	ldur	x0, [x29, #-16]
	ldr	w10, [x0]
	cmp	w9, w10
	cset	w9, eq
	tbnz	w9, #0, .LBB4_3
	b	.LBB4_11
.LBB4_3:                                //   in Loop: Header=BB4_1 Depth=1
	orr	w8, wzr, #0x1
	ldr	x0, [sp, #32]           // 8-byte Folded Reload
	ldr	w9, [x0]
	cmp	w9, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB4_4
	b	.LBB4_7
.LBB4_4:                                //   in Loop: Header=BB4_1 Depth=1
	orr	x8, xzr, #0x4
	ldr	x0, [sp, #32]           // 8-byte Folded Reload
	add	x0, x0, x8
	ldur	x9, [x29, #-16]
	add	x8, x9, x8
	mov	x1, x8
	bl	strcmp
	cbnz	w0, .LBB4_5
	b	.LBB4_6
.LBB4_5:                                //   in Loop: Header=BB4_1 Depth=1
	ldr	w8, [sp, #28]           // 4-byte Folded Reload
	sturb	w8, [x29, #-17]
.LBB4_6:                                //   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_10
.LBB4_7:                                //   in Loop: Header=BB4_1 Depth=1
	ldr	x0, [sp, #32]           // 8-byte Folded Reload
	ldr	w8, [x0, #4]
	ldur	x0, [x29, #-16]
	ldr	w9, [x0, #4]
	cmp	w8, w9
	cset	w8, ne
	tbnz	w8, #0, .LBB4_8
	b	.LBB4_9
.LBB4_8:                                //   in Loop: Header=BB4_1 Depth=1
	ldr	w8, [sp, #28]           // 4-byte Folded Reload
	sturb	w8, [x29, #-17]
.LBB4_9:                                //   in Loop: Header=BB4_1 Depth=1
.LBB4_10:                               //   in Loop: Header=BB4_1 Depth=1
.LBB4_11:                               //   in Loop: Header=BB4_1 Depth=1
	orr	w8, wzr, #0x1
	ldurb	w9, [x29, #-17]
	orr	w10, wzr, #0x1
	and	w9, w9, w10
	cmp	w9, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB4_12
	b	.LBB4_13
.LBB4_12:
	mov	w8, #-1
	orr	w9, wzr, #0x1
	and	w8, w8, w9
	sturb	w8, [x29, #-1]
	b	.LBB4_15
.LBB4_13:                               //   in Loop: Header=BB4_1 Depth=1
	mov	x8, #34872
	movk	x8, #1, lsl #16
	ldur	x9, [x29, #-16]
	add	x8, x9, x8
	ldr	x8, [x8]
	stur	x8, [x29, #-16]
	b	.LBB4_1
.LBB4_14:
	mov	w8, #0
	orr	w9, wzr, #0x1
	and	w8, w8, w9
	sturb	w8, [x29, #-1]
.LBB4_15:
	ldurb	w8, [x29, #-1]
	orr	w9, wzr, #0x1
	and	w8, w8, w9
	mov	w0, w8
	ldp	x29, x30, [sp, #64]     // 8-byte Folded Reload
	add	sp, sp, #80             // =80
	ret
.Lfunc_end4:
	.size	find, .Lfunc_end4-find
                                        // -- End function
	.globl	strip                   // -- Begin function strip
	.p2align	2
	.type	strip,@function
strip:                                  // @strip
// %bb.0:
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 8-byte Folded Spill
	add	x29, sp, #32            // =32
	mov	w8, #0
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-12]
	str	w8, [sp, #16]           // 4-byte Folded Spill
.LBB5_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-12]
	mov	w9, w8
	sxtw	x9, w9
	ldur	x0, [x29, #-8]
	str	x9, [sp, #8]            // 8-byte Folded Spill
	bl	strlen
	ldr	x9, [sp, #8]            // 8-byte Folded Reload
	cmp	x9, x0
	cset	w8, lo
	tbnz	w8, #0, .LBB5_2
	b	.LBB5_6
.LBB5_2:                                //   in Loop: Header=BB5_1 Depth=1
	mov	w8, #10
	ldur	x9, [x29, #-8]
	ldur	w10, [x29, #-12]
	mov	w11, w10
	sxtw	x11, w11
	add	x9, x9, x11
	ldrb	w10, [x9]
	uxtb	w10, w10
	cmp	w10, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB5_3
	b	.LBB5_4
.LBB5_3:                                //   in Loop: Header=BB5_1 Depth=1
	ldur	x8, [x29, #-8]
	ldur	w9, [x29, #-12]
	mov	w10, w9
	sxtw	x10, w10
	add	x8, x8, x10
	ldr	w9, [sp, #16]           // 4-byte Folded Reload
	strb	w9, [x8]
.LBB5_4:                                //   in Loop: Header=BB5_1 Depth=1
// %bb.5:                               //   in Loop: Header=BB5_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-12]
	b	.LBB5_1
.LBB5_6:
	ldp	x29, x30, [sp, #32]     // 8-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end5:
	.size	strip, .Lfunc_end5-strip
                                        // -- End function
	.globl	yyparse                 // -- Begin function yyparse
	.p2align	2
	.type	yyparse,@function
yyparse:                                // @yyparse
// %bb.0:
	stp	x28, x27, [sp, #-96]!   // 8-byte Folded Spill
	stp	x26, x25, [sp, #16]     // 8-byte Folded Spill
	stp	x24, x23, [sp, #32]     // 8-byte Folded Spill
	stp	x22, x21, [sp, #48]     // 8-byte Folded Spill
	stp	x20, x19, [sp, #64]     // 8-byte Folded Spill
	stp	x29, x30, [sp, #80]     // 8-byte Folded Spill
	add	x29, sp, #80            // =80
	sub	sp, sp, #420, lsl #12   // =1720320
	sub	sp, sp, #448            // =448
	add	x8, sp, #420, lsl #12   // =1720320
	add	x8, x8, #16             // =16
	add	x9, sp, #369, lsl #12   // =1511424
	add	x9, x9, #1552           // =1552
	add	x10, sp, #271, lsl #12  // =1110016
	add	x10, x10, #1304         // =1304
	add	x11, sp, #222, lsl #12  // =909312
	add	x11, x11, #1160         // =1160
	add	x12, sp, #74, lsl #12   // =303104
	add	x12, x12, #3920         // =3920
	add	x13, sp, #50, lsl #12   // =204800
	add	x13, x13, #792          // =792
	add	x14, sp, #49, lsl #12   // =200704
	add	x14, x14, #3828         // =3828
	add	x15, sp, #24, lsl #12   // =98304
	add	x15, x15, #3808         // =3808
	mov	x16, #200
	adrp	x17, yynerrs
	add	x17, x17, :lo12:yynerrs
	orr	w18, wzr, #0xfffffffe
	adrp	x0, yychar
	add	x0, x0, :lo12:yychar
	mov	x1, #0
	adrp	x2, yypact
	add	x2, x2, :lo12:yypact
	adrp	x3, :got:yylex
	ldr	x3, [x3, :got_lo12:yylex]
	adrp	x4, yytranslate
	add	x4, x4, :lo12:yytranslate
	adrp	x5, yycheck
	add	x5, x5, :lo12:yycheck
	adrp	x6, yytable
	add	x6, x6, :lo12:yytable
	adrp	x7, yylval
	add	x7, x7, :lo12:yylval
	mov	x19, x7
	adrp	x20, yydefact
	add	x20, x20, :lo12:yydefact
	adrp	x21, yyr2
	add	x21, x21, :lo12:yyr2
	adrp	x22, .L.str
	add	x22, x22, :lo12:.L.str
	adrp	x23, .L.str.66
	add	x23, x23, :lo12:.L.str.66
	adrp	x24, .L.str.67
	add	x24, x24, :lo12:.L.str.67
	adrp	x25, .L.str.68
	add	x25, x25, :lo12:.L.str.68
	adrp	x26, .L.str.69
	add	x26, x26, :lo12:.L.str.69
	adrp	x27, .L.str.1
	add	x27, x27, :lo12:.L.str.1
	adrp	x28, .L.str.70
	add	x28, x28, :lo12:.L.str.70
	adrp	x30, schema
	add	x30, x30, :lo12:schema
	str	x8, [sp, #1688]         // 8-byte Folded Spill
	mov	x8, x30
	str	x8, [sp, #1680]         // 8-byte Folded Spill
	adrp	x8, .L.str.74
	add	x8, x8, :lo12:.L.str.74
	str	x8, [sp, #1672]         // 8-byte Folded Spill
	adrp	x8, .L.str.75
	add	x8, x8, :lo12:.L.str.75
	str	x8, [sp, #1664]         // 8-byte Folded Spill
	adrp	x8, table_records
	add	x8, x8, :lo12:table_records
	str	x8, [sp, #1656]         // 8-byte Folded Spill
	adrp	x8, .L.str.78
	add	x8, x8, :lo12:.L.str.78
	str	x8, [sp, #1648]         // 8-byte Folded Spill
	adrp	x8, .L.str.22
	add	x8, x8, :lo12:.L.str.22
	str	x8, [sp, #1640]         // 8-byte Folded Spill
	adrp	x8, .L.str.76
	add	x8, x8, :lo12:.L.str.76
	str	x8, [sp, #1632]         // 8-byte Folded Spill
	adrp	x8, .L.str.60
	add	x8, x8, :lo12:.L.str.60
	str	x8, [sp, #1624]         // 8-byte Folded Spill
	adrp	x8, .L.str.77
	add	x8, x8, :lo12:.L.str.77
	str	x8, [sp, #1616]         // 8-byte Folded Spill
	adrp	x8, .L.str.71
	add	x8, x8, :lo12:.L.str.71
	str	x8, [sp, #1608]         // 8-byte Folded Spill
	adrp	x8, .L.str.72
	add	x8, x8, :lo12:.L.str.72
	str	x8, [sp, #1600]         // 8-byte Folded Spill
	adrp	x8, .L.str.73
	add	x8, x8, :lo12:.L.str.73
	str	x8, [sp, #1592]         // 8-byte Folded Spill
	adrp	x8, .L.str.65
	add	x8, x8, :lo12:.L.str.65
	str	x8, [sp, #1584]         // 8-byte Folded Spill
	adrp	x8, .L.str.64
	add	x8, x8, :lo12:.L.str.64
	str	x8, [sp, #1576]         // 8-byte Folded Spill
	adrp	x8, .L.str.63
	add	x8, x8, :lo12:.L.str.63
	str	x8, [sp, #1568]         // 8-byte Folded Spill
	adrp	x8, .L.str.37
	add	x8, x8, :lo12:.L.str.37
	str	x8, [sp, #1560]         // 8-byte Folded Spill
	adrp	x8, .L.str.33
	add	x8, x8, :lo12:.L.str.33
	str	x8, [sp, #1552]         // 8-byte Folded Spill
	adrp	x8, .L.str.39
	add	x8, x8, :lo12:.L.str.39
	str	x8, [sp, #1544]         // 8-byte Folded Spill
	adrp	x8, .L.str.45
	add	x8, x8, :lo12:.L.str.45
	str	x8, [sp, #1536]         // 8-byte Folded Spill
	adrp	x8, .L.str.41
	add	x8, x8, :lo12:.L.str.41
	str	x8, [sp, #1528]         // 8-byte Folded Spill
	mov	w8, #0
	str	w8, [sp, #1524]         // 4-byte Folded Spill
	orr	w8, wzr, #0x1
	str	w8, [sp, #1520]         // 4-byte Folded Spill
	adrp	x8, .L.str.59
	add	x8, x8, :lo12:.L.str.59
	str	x8, [sp, #1512]         // 8-byte Folded Spill
	adrp	x8, .L.str.53
	add	x8, x8, :lo12:.L.str.53
	str	x8, [sp, #1504]         // 8-byte Folded Spill
	adrp	x8, .L.str.62
	add	x8, x8, :lo12:.L.str.62
	str	x8, [sp, #1496]         // 8-byte Folded Spill
	adrp	x8, .L.str.58
	add	x8, x8, :lo12:.L.str.58
	str	x8, [sp, #1488]         // 8-byte Folded Spill
	adrp	x8, .L.str.61
	add	x8, x8, :lo12:.L.str.61
	str	x8, [sp, #1480]         // 8-byte Folded Spill
	adrp	x8, .L.str.48
	add	x8, x8, :lo12:.L.str.48
	str	x8, [sp, #1472]         // 8-byte Folded Spill
	adrp	x8, .L.str.49
	add	x8, x8, :lo12:.L.str.49
	str	x8, [sp, #1464]         // 8-byte Folded Spill
	adrp	x8, .L.str.50
	add	x8, x8, :lo12:.L.str.50
	str	x8, [sp, #1456]         // 8-byte Folded Spill
	adrp	x8, .L.str.51
	add	x8, x8, :lo12:.L.str.51
	str	x8, [sp, #1448]         // 8-byte Folded Spill
	adrp	x8, .L.str.52
	add	x8, x8, :lo12:.L.str.52
	str	x8, [sp, #1440]         // 8-byte Folded Spill
	adrp	x8, .L.str.56
	add	x8, x8, :lo12:.L.str.56
	str	x8, [sp, #1432]         // 8-byte Folded Spill
	adrp	x8, .L.str.57
	add	x8, x8, :lo12:.L.str.57
	str	x8, [sp, #1424]         // 8-byte Folded Spill
	adrp	x8, .L.str.54
	add	x8, x8, :lo12:.L.str.54
	str	x8, [sp, #1416]         // 8-byte Folded Spill
	adrp	x8, .L.str.55
	add	x8, x8, :lo12:.L.str.55
	str	x8, [sp, #1408]         // 8-byte Folded Spill
	adrp	x8, .L.str.28
	add	x8, x8, :lo12:.L.str.28
	str	x8, [sp, #1400]         // 8-byte Folded Spill
	adrp	x8, .L.str.29
	add	x8, x8, :lo12:.L.str.29
	str	x8, [sp, #1392]         // 8-byte Folded Spill
	adrp	x8, .L.str.30
	add	x8, x8, :lo12:.L.str.30
	str	x8, [sp, #1384]         // 8-byte Folded Spill
	adrp	x8, .L.str.31
	add	x8, x8, :lo12:.L.str.31
	str	x8, [sp, #1376]         // 8-byte Folded Spill
	adrp	x8, .L.str.47
	add	x8, x8, :lo12:.L.str.47
	str	x8, [sp, #1368]         // 8-byte Folded Spill
	adrp	x8, .L.str.32
	add	x8, x8, :lo12:.L.str.32
	str	x8, [sp, #1360]         // 8-byte Folded Spill
	adrp	x8, .L.str.34
	add	x8, x8, :lo12:.L.str.34
	str	x8, [sp, #1352]         // 8-byte Folded Spill
	adrp	x8, .L.str.35
	add	x8, x8, :lo12:.L.str.35
	str	x8, [sp, #1344]         // 8-byte Folded Spill
	adrp	x8, .L.str.36
	add	x8, x8, :lo12:.L.str.36
	str	x8, [sp, #1336]         // 8-byte Folded Spill
	adrp	x8, .L.str.38
	add	x8, x8, :lo12:.L.str.38
	str	x8, [sp, #1328]         // 8-byte Folded Spill
	adrp	x8, .L.str.40
	add	x8, x8, :lo12:.L.str.40
	str	x8, [sp, #1320]         // 8-byte Folded Spill
	adrp	x8, .L.str.42
	add	x8, x8, :lo12:.L.str.42
	str	x8, [sp, #1312]         // 8-byte Folded Spill
	adrp	x8, .L.str.43
	add	x8, x8, :lo12:.L.str.43
	str	x8, [sp, #1304]         // 8-byte Folded Spill
	adrp	x8, .L.str.44
	add	x8, x8, :lo12:.L.str.44
	str	x8, [sp, #1296]         // 8-byte Folded Spill
	adrp	x8, .L.str.46
	add	x8, x8, :lo12:.L.str.46
	str	x8, [sp, #1288]         // 8-byte Folded Spill
	adrp	x8, .L.str.27
	add	x8, x8, :lo12:.L.str.27
	str	x8, [sp, #1280]         // 8-byte Folded Spill
	adrp	x8, .L.str.26
	add	x8, x8, :lo12:.L.str.26
	str	x8, [sp, #1272]         // 8-byte Folded Spill
	adrp	x8, .L.str.23
	add	x8, x8, :lo12:.L.str.23
	str	x8, [sp, #1264]         // 8-byte Folded Spill
	adrp	x8, .L.str.24
	add	x8, x8, :lo12:.L.str.24
	str	x8, [sp, #1256]         // 8-byte Folded Spill
	adrp	x8, .L.str.25
	add	x8, x8, :lo12:.L.str.25
	str	x8, [sp, #1248]         // 8-byte Folded Spill
	adrp	x8, .L.str.14
	add	x8, x8, :lo12:.L.str.14
	str	x8, [sp, #1240]         // 8-byte Folded Spill
	adrp	x8, .L.str.15
	add	x8, x8, :lo12:.L.str.15
	str	x8, [sp, #1232]         // 8-byte Folded Spill
	adrp	x8, .L.str.16
	add	x8, x8, :lo12:.L.str.16
	str	x8, [sp, #1224]         // 8-byte Folded Spill
	adrp	x8, .L.str.19
	add	x8, x8, :lo12:.L.str.19
	str	x8, [sp, #1216]         // 8-byte Folded Spill
	adrp	x8, .L.str.20
	add	x8, x8, :lo12:.L.str.20
	str	x8, [sp, #1208]         // 8-byte Folded Spill
	adrp	x8, .L.str.21
	add	x8, x8, :lo12:.L.str.21
	str	x8, [sp, #1200]         // 8-byte Folded Spill
	adrp	x8, .L.str.18
	add	x8, x8, :lo12:.L.str.18
	str	x8, [sp, #1192]         // 8-byte Folded Spill
	adrp	x8, .L.str.17
	add	x8, x8, :lo12:.L.str.17
	str	x8, [sp, #1184]         // 8-byte Folded Spill
	adrp	x8, .L.str.13
	add	x8, x8, :lo12:.L.str.13
	str	x8, [sp, #1176]         // 8-byte Folded Spill
	adrp	x8, .L.str.12
	add	x8, x8, :lo12:.L.str.12
	str	x8, [sp, #1168]         // 8-byte Folded Spill
	adrp	x8, .L.str.11
	add	x8, x8, :lo12:.L.str.11
	str	x8, [sp, #1160]         // 8-byte Folded Spill
	adrp	x8, .L.str.10
	add	x8, x8, :lo12:.L.str.10
	str	x8, [sp, #1152]         // 8-byte Folded Spill
	adrp	x8, yyr1
	add	x8, x8, :lo12:yyr1
	str	x8, [sp, #1144]         // 8-byte Folded Spill
	adrp	x8, yypgoto
	add	x8, x8, :lo12:yypgoto
	str	x8, [sp, #1136]         // 8-byte Folded Spill
	adrp	x8, yydefgoto
	add	x8, x8, :lo12:yydefgoto
	str	x8, [sp, #1128]         // 8-byte Folded Spill
	adrp	x8, .L.str.79
	add	x8, x8, :lo12:.L.str.79
	str	x8, [sp, #1120]         // 8-byte Folded Spill
	adrp	x8, .L.str.80
	add	x8, x8, :lo12:.L.str.80
	str	x8, [sp, #1112]         // 8-byte Folded Spill
	adrp	x8, yystos
	add	x8, x8, :lo12:yystos
	str	x8, [sp, #1104]         // 8-byte Folded Spill
	adrp	x8, .L.str.81
	add	x8, x8, :lo12:.L.str.81
	str	x8, [sp, #1096]         // 8-byte Folded Spill
	adrp	x8, .L.str.82
	add	x8, x8, :lo12:.L.str.82
	str	x8, [sp, #1088]         // 8-byte Folded Spill
	adrp	x8, .L.str.83
	add	x8, x8, :lo12:.L.str.83
	str	x8, [sp, #1080]         // 8-byte Folded Spill
	adrp	x8, .L.str.84
	add	x8, x8, :lo12:.L.str.84
	str	x8, [sp, #1072]         // 8-byte Folded Spill
	add	x8, sp, #420, lsl #12   // =1720320
	add	x8, x8, #32             // =32
	str	x8, [sp, #1064]         // 8-byte Folded Spill
	add	x8, sp, #370, lsl #12   // =1515520
	add	x8, x8, #1616           // =1616
	str	wzr, [x9, #4124]
	str	wzr, [x9, #3100]
	str	x8, [sp, #1056]         // 8-byte Folded Spill
	ldr	x8, [sp, #1064]         // 8-byte Folded Reload
	str	x9, [sp, #1048]         // 8-byte Folded Spill
	ldr	x9, [sp, #1688]         // 8-byte Folded Reload
	str	x8, [x9, #8]
	str	x8, [x9]
	ldr	x8, [sp, #1056]         // 8-byte Folded Reload
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	str	x8, [x9, #4152]
	str	x8, [x9, #4144]
	str	x16, [x9, #4136]
	ldr	x8, [sp, #1688]         // 8-byte Folded Reload
	str	wzr, [x8, #420]
	str	wzr, [x8, #416]
	str	wzr, [x17]
	str	w18, [x0]
	str	x30, [sp, #1040]        // 8-byte Folded Spill
	str	x10, [sp, #1032]        // 8-byte Folded Spill
	str	x11, [sp, #1024]        // 8-byte Folded Spill
	str	x12, [sp, #1016]        // 8-byte Folded Spill
	str	x13, [sp, #1008]        // 8-byte Folded Spill
	str	x14, [sp, #1000]        // 8-byte Folded Spill
	str	x15, [sp, #992]         // 8-byte Folded Spill
	str	x28, [sp, #984]         // 8-byte Folded Spill
	str	x17, [sp, #976]         // 8-byte Folded Spill
	str	x0, [sp, #968]          // 8-byte Folded Spill
	str	x1, [sp, #960]          // 8-byte Folded Spill
	str	x2, [sp, #952]          // 8-byte Folded Spill
	str	x3, [sp, #944]          // 8-byte Folded Spill
	str	x4, [sp, #936]          // 8-byte Folded Spill
	str	x5, [sp, #928]          // 8-byte Folded Spill
	str	x6, [sp, #920]          // 8-byte Folded Spill
	str	x7, [sp, #912]          // 8-byte Folded Spill
	str	x19, [sp, #904]         // 8-byte Folded Spill
	str	x20, [sp, #896]         // 8-byte Folded Spill
	str	x21, [sp, #888]         // 8-byte Folded Spill
	str	x22, [sp, #880]         // 8-byte Folded Spill
	str	x23, [sp, #872]         // 8-byte Folded Spill
	str	x24, [sp, #864]         // 8-byte Folded Spill
	str	x25, [sp, #856]         // 8-byte Folded Spill
	str	x26, [sp, #848]         // 8-byte Folded Spill
	str	x27, [sp, #840]         // 8-byte Folded Spill
	b	.LBB6_2
.LBB6_1:                                //   in Loop: Header=BB6_2 Depth=1
	orr	x8, xzr, #0x2
	ldr	x9, [sp, #1688]         // 8-byte Folded Reload
	ldr	x10, [x9]
	add	x8, x10, x8
	str	x8, [x9]
.LBB6_2:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB6_252 Depth 2
                                        //     Child Loop BB6_255 Depth 2
                                        //     Child Loop BB6_263 Depth 2
                                        //     Child Loop BB6_267 Depth 2
                                        //       Child Loop BB6_273 Depth 3
                                        //       Child Loop BB6_276 Depth 3
                                        //     Child Loop BB6_198 Depth 2
                                        //     Child Loop BB6_187 Depth 2
                                        //     Child Loop BB6_172 Depth 2
                                        //     Child Loop BB6_178 Depth 2
                                        //     Child Loop BB6_138 Depth 2
                                        //     Child Loop BB6_144 Depth 2
                                        //     Child Loop BB6_130 Depth 2
                                        //     Child Loop BB6_118 Depth 2
                                        //     Child Loop BB6_112 Depth 2
                                        //     Child Loop BB6_91 Depth 2
                                        //       Child Loop BB6_93 Depth 3
                                        //     Child Loop BB6_308 Depth 2
	orr	x8, xzr, #0xfffffffffffffffe
	orr	x9, xzr, #0x2
	ldr	x10, [sp, #1688]        // 8-byte Folded Reload
	ldr	w11, [x10, #420]
	ldr	x12, [x10]
	strh	w11, [x12]
	ldr	x12, [x10, #8]
	ldr	x13, [sp, #1048]        // 8-byte Folded Reload
	ldr	x14, [x13, #4136]
	mul	x9, x9, x14
	add	x9, x12, x9
	add	x8, x9, x8
	ldr	x9, [x10]
	cmp	x8, x9
	cset	w11, ls
	tbnz	w11, #0, .LBB6_3
	b	.LBB6_18
.LBB6_3:                                //   in Loop: Header=BB6_2 Depth=1
	mov	x8, #10000
	orr	x9, xzr, #0x2
	ldr	x10, [sp, #1688]        // 8-byte Folded Reload
	ldr	x11, [x10]
	ldr	x12, [x10, #8]
	subs	x11, x11, x12
	sdiv	x9, x11, x9
	add	x9, x9, #1              // =1
	ldr	x11, [sp, #1048]        // 8-byte Folded Reload
	str	x9, [x11, #3088]
	ldr	x9, [x11, #4136]
	cmp	x8, x9
	cset	w13, ls
	tbnz	w13, #0, .LBB6_4
	b	.LBB6_5
.LBB6_4:
	b	.LBB6_322
.LBB6_5:                                //   in Loop: Header=BB6_2 Depth=1
	mov	x8, #10000
	orr	x9, xzr, #0x2
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	ldr	x11, [x10, #4136]
	mul	x9, x11, x9
	str	x9, [x10, #4136]
	ldr	x9, [x10, #4136]
	cmp	x8, x9
	cset	w12, lo
	tbnz	w12, #0, .LBB6_6
	b	.LBB6_7
.LBB6_6:                                //   in Loop: Header=BB6_2 Depth=1
	mov	x8, #10000
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	str	x8, [x9, #4136]
.LBB6_7:                                //   in Loop: Header=BB6_2 Depth=1
	mov	x8, #1018
	ldr	x9, [sp, #1688]         // 8-byte Folded Reload
	ldr	x10, [x9, #8]
	ldr	x11, [sp, #1048]        // 8-byte Folded Reload
	str	x10, [x11, #3080]
	ldr	x10, [x11, #4136]
	mul	x8, x10, x8
	add	x0, x8, #1015           // =1015
	bl	malloc
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	str	x0, [x8, #3072]
	ldr	x9, [x8, #3072]
	ldr	x10, [sp, #960]         // 8-byte Folded Reload
	cmp	x9, x10
	cset	w12, ne
	tbnz	w12, #0, .LBB6_9
// %bb.8:
	b	.LBB6_322
.LBB6_9:                                //   in Loop: Header=BB6_2 Depth=1
// %bb.10:                              //   in Loop: Header=BB6_2 Depth=1
	orr	x8, xzr, #0x3f8
	orr	x9, xzr, #0x2
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	ldr	x0, [x10, #3072]
	ldr	x11, [sp, #1688]        // 8-byte Folded Reload
	ldr	x1, [x11, #8]
	ldr	x12, [x10, #3088]
	mul	x2, x12, x9
	str	x8, [sp, #832]          // 8-byte Folded Spill
	str	x9, [sp, #824]          // 8-byte Folded Spill
	bl	memcpy
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #3072]
	ldr	x10, [sp, #1688]        // 8-byte Folded Reload
	str	x9, [x10, #8]
	ldr	x9, [x8, #4136]
	ldr	x11, [sp, #824]         // 8-byte Folded Reload
	mul	x9, x9, x11
	add	x9, x9, #1015           // =1015
	str	x9, [x8, #3064]
	ldr	x9, [x8, #3064]
	ldr	x12, [sp, #832]         // 8-byte Folded Reload
	udiv	x9, x9, x12
	ldr	x0, [x8, #3072]
	mul	x9, x12, x9
	add	x9, x0, x9
	str	x9, [x8, #3072]
// %bb.11:                              //   in Loop: Header=BB6_2 Depth=1
// %bb.12:                              //   in Loop: Header=BB6_2 Depth=1
	orr	x8, xzr, #0x3f8
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x0, [x9, #3072]
	ldr	x1, [x9, #4152]
	ldr	x10, [x9, #3088]
	mul	x2, x10, x8
	str	x8, [sp, #816]          // 8-byte Folded Spill
	bl	memcpy
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #3072]
	str	x9, [x8, #4152]
	ldr	x9, [x8, #4136]
	ldr	x10, [sp, #816]         // 8-byte Folded Reload
	mul	x9, x9, x10
	add	x9, x9, #1015           // =1015
	str	x9, [x8, #3056]
	ldr	x9, [x8, #3056]
	udiv	x9, x9, x10
	ldr	x0, [x8, #3072]
	mul	x9, x10, x9
	add	x9, x0, x9
	str	x9, [x8, #3072]
// %bb.13:                              //   in Loop: Header=BB6_2 Depth=1
	add	x8, sp, #420, lsl #12   // =1720320
	add	x8, x8, #32             // =32
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x9, #3080]
	cmp	x10, x8
	cset	w11, ne
	tbnz	w11, #0, .LBB6_14
	b	.LBB6_15
.LBB6_14:                               //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x0, [x8, #3080]
	bl	free
.LBB6_15:                               //   in Loop: Header=BB6_2 Depth=1
	mov	x8, #-1016
	orr	x9, xzr, #0x3f8
	orr	x10, xzr, #0xfffffffffffffffe
	orr	x11, xzr, #0x2
	ldr	x12, [sp, #1688]        // 8-byte Folded Reload
	ldr	x13, [x12, #8]
	ldr	x14, [sp, #1048]        // 8-byte Folded Reload
	ldr	x15, [x14, #3088]
	mul	x15, x11, x15
	add	x13, x13, x15
	add	x13, x13, x10
	str	x13, [x12]
	ldr	x13, [x14, #4152]
	ldr	x15, [x14, #3088]
	mul	x9, x9, x15
	add	x9, x13, x9
	add	x8, x9, x8
	str	x8, [x14, #4144]
	ldr	x8, [x12, #8]
	ldr	x9, [x14, #4136]
	mul	x9, x11, x9
	add	x8, x8, x9
	add	x8, x8, x10
	ldr	x9, [x12]
	cmp	x8, x9
	cset	w16, ls
	tbnz	w16, #0, .LBB6_16
	b	.LBB6_17
.LBB6_16:
	b	.LBB6_321
.LBB6_17:                               //   in Loop: Header=BB6_2 Depth=1
.LBB6_18:                               //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0xf
	ldr	x9, [sp, #1688]         // 8-byte Folded Reload
	ldr	w10, [x9, #420]
	cmp	w10, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB6_19
	b	.LBB6_20
.LBB6_19:
	b	.LBB6_320
.LBB6_20:                               //   in Loop: Header=BB6_2 Depth=1
// %bb.21:                              //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #-41
	ldr	x9, [sp, #1688]         // 8-byte Folded Reload
	ldr	w10, [x9, #420]
	mov	w11, w10
	sxtw	x11, w11
	ldr	x12, [sp, #952]         // 8-byte Folded Reload
	add	x11, x12, x11
	ldrb	w10, [x11]
	sxtb	w10, w10
	ldr	x11, [sp, #1048]        // 8-byte Folded Reload
	str	w10, [x11, #4132]
	ldr	w10, [x11, #4132]
	cmp	w10, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB6_22
	b	.LBB6_23
.LBB6_22:                               //   in Loop: Header=BB6_2 Depth=1
	b	.LBB6_40
.LBB6_23:                               //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0xfffffffe
	ldr	x9, [sp, #968]          // 8-byte Folded Reload
	ldr	w10, [x9]
	cmp	w10, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB6_24
	b	.LBB6_25
.LBB6_24:                               //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #944]          // 8-byte Folded Reload
	blr	x8
	ldr	x8, [sp, #968]          // 8-byte Folded Reload
	str	w0, [x8]
.LBB6_25:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #0
	ldr	x9, [sp, #968]          // 8-byte Folded Reload
	ldr	w10, [x9]
	cmp	w10, w8
	cset	w8, le
	tbnz	w8, #0, .LBB6_26
	b	.LBB6_27
.LBB6_26:                               //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	str	wzr, [x8, #4124]
	ldr	x9, [sp, #968]          // 8-byte Folded Reload
	str	wzr, [x9]
	b	.LBB6_31
.LBB6_27:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #285
	ldr	x9, [sp, #968]          // 8-byte Folded Reload
	ldr	w10, [x9]
	cmp	w10, w8
	cset	w8, ls
	tbnz	w8, #0, .LBB6_28
	b	.LBB6_29
.LBB6_28:                               //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #968]          // 8-byte Folded Reload
	ldr	w9, [x8]
	mov	w10, w9
	sxtw	x10, w10
	ldr	x11, [sp, #936]         // 8-byte Folded Reload
	add	x10, x11, x10
	ldrb	w9, [x10]
	uxtb	w9, w9
	str	w9, [sp, #812]          // 4-byte Folded Spill
	b	.LBB6_30
.LBB6_29:                               //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x2
	str	w8, [sp, #812]          // 4-byte Folded Spill
.LBB6_30:                               //   in Loop: Header=BB6_2 Depth=1
	ldr	w8, [sp, #812]          // 4-byte Folded Reload
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	str	w8, [x9, #4124]
.LBB6_31:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #0
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	w10, [x9, #4124]
	ldr	w11, [x9, #4132]
	add	w10, w11, w10
	str	w10, [x9, #4132]
	ldr	w10, [x9, #4132]
	cmp	w10, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB6_34
// %bb.32:                              //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x3f
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	w10, [x9, #4132]
	cmp	w8, w10
	cset	w8, lt
	tbnz	w8, #0, .LBB6_34
// %bb.33:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	w9, [x8, #4132]
	mov	w10, w9
	sxtw	x10, w10
	ldr	x11, [sp, #928]         // 8-byte Folded Reload
	add	x10, x11, x10
	ldrb	w9, [x10]
	sxtb	w9, w9
	ldr	w12, [x8, #4124]
	cmp	w9, w12
	cset	w9, ne
	tbnz	w9, #0, .LBB6_34
	b	.LBB6_35
.LBB6_34:                               //   in Loop: Header=BB6_2 Depth=1
	b	.LBB6_40
.LBB6_35:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #0
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	w10, [x9, #4132]
	mov	w11, w10
	sxtw	x11, w11
	ldr	x12, [sp, #920]         // 8-byte Folded Reload
	add	x11, x12, x11
	ldrb	w10, [x11]
	sxtb	w10, w10
	str	w10, [x9, #4132]
	ldr	w10, [x9, #4132]
	cmp	w10, w8
	cset	w8, le
	tbnz	w8, #0, .LBB6_36
	b	.LBB6_37
.LBB6_36:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #0
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	w10, [x9, #4132]
	subs	w8, w8, w10
	str	w8, [x9, #4132]
	b	.LBB6_43
.LBB6_37:                               //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #1688]         // 8-byte Folded Reload
	ldr	w9, [x8, #416]
	cbnz	w9, .LBB6_38
	b	.LBB6_39
.LBB6_38:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #-1
	ldr	x9, [sp, #1688]         // 8-byte Folded Reload
	ldr	w10, [x9, #416]
	add	w8, w10, w8
	str	w8, [x9, #416]
.LBB6_39:                               //   in Loop: Header=BB6_2 Depth=1
	orr	x8, xzr, #0x3f8
	orr	w9, wzr, #0xfffffffe
	ldr	x10, [sp, #968]         // 8-byte Folded Reload
	str	w9, [x10]
	ldr	x11, [sp, #1048]        // 8-byte Folded Reload
	ldr	w9, [x11, #4132]
	ldr	x12, [sp, #1688]        // 8-byte Folded Reload
	str	w9, [x12, #420]
	ldr	x13, [x11, #4144]
	add	x13, x13, x8
	str	x13, [x11, #4144]
	mov	x0, x13
	ldr	x1, [sp, #904]          // 8-byte Folded Reload
	mov	x2, x8
	bl	memcpy
	b	.LBB6_1
.LBB6_40:                               //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #1688]         // 8-byte Folded Reload
	ldr	w9, [x8, #420]
	mov	w10, w9
	sxtw	x10, w10
	ldr	x11, [sp, #896]         // 8-byte Folded Reload
	add	x10, x11, x10
	ldrb	w9, [x10]
	uxtb	w9, w9
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	str	w9, [x10, #4132]
	ldr	w9, [x10, #4132]
	cbz	w9, .LBB6_41
	b	.LBB6_42
.LBB6_41:                               //   in Loop: Header=BB6_2 Depth=1
	b	.LBB6_291
.LBB6_42:                               //   in Loop: Header=BB6_2 Depth=1
.LBB6_43:                               //   in Loop: Header=BB6_2 Depth=1
	add	x0, sp, #370, lsl #12   // =1515520
	add	x0, x0, #560            // =560
	orr	w8, wzr, #0x2
	orr	w9, wzr, #0x1
	orr	x10, xzr, #0x3f8
	ldr	x11, [sp, #1048]        // 8-byte Folded Reload
	ldr	w12, [x11, #4132]
	mov	w13, w12
	sxtw	x13, w13
	ldr	x14, [sp, #888]         // 8-byte Folded Reload
	add	x13, x14, x13
	ldrb	w12, [x13]
	uxtb	w12, w12
	str	w12, [x11, #3100]
	ldr	x13, [x11, #4144]
	ldr	w12, [x11, #3100]
	subs	w9, w9, w12
	mov	w15, w9
	sxtw	x15, w15
	mul	x15, x10, x15
	add	x13, x13, x15
	mov	x1, x13
	mov	x2, x10
	str	w8, [sp, #808]          // 4-byte Folded Spill
	bl	memcpy
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	ldr	w8, [x10, #4132]
	ldr	w9, [sp, #808]          // 4-byte Folded Reload
	cmp	w9, w8
	cset	w12, eq
	str	w8, [sp, #804]          // 4-byte Folded Spill
	tbnz	w12, #0, .LBB6_83
	b	.LBB6_44
.LBB6_44:                               //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x3
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_84
	b	.LBB6_45
.LBB6_45:                               //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x4
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_85
	b	.LBB6_46
.LBB6_46:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #5
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_86
	b	.LBB6_47
.LBB6_47:                               //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x6
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_87
	b	.LBB6_48
.LBB6_48:                               //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x7
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_88
	b	.LBB6_49
.LBB6_49:                               //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x8
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_89
	b	.LBB6_50
.LBB6_50:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #9
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_90
	b	.LBB6_51
.LBB6_51:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #10
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_106
	b	.LBB6_52
.LBB6_52:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #11
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_107
	b	.LBB6_53
.LBB6_53:                               //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0xc
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_108
	b	.LBB6_54
.LBB6_54:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #13
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_109
	b	.LBB6_55
.LBB6_55:                               //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0xe
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_110
	b	.LBB6_56
.LBB6_56:                               //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0xf
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_124
	b	.LBB6_57
.LBB6_57:                               //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x10
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_125
	b	.LBB6_58
.LBB6_58:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #17
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_126
	b	.LBB6_59
.LBB6_59:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #18
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_127
	b	.LBB6_60
.LBB6_60:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #19
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_128
	b	.LBB6_61
.LBB6_61:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #20
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_129
	b	.LBB6_62
.LBB6_62:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #21
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_136
	b	.LBB6_63
.LBB6_63:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #22
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_137
	b	.LBB6_64
.LBB6_64:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #23
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_171
	b	.LBB6_65
.LBB6_65:                               //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x18
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_185
	b	.LBB6_66
.LBB6_66:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #25
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_186
	b	.LBB6_67
.LBB6_67:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #26
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_195
	b	.LBB6_68
.LBB6_68:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #27
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_196
	b	.LBB6_69
.LBB6_69:                               //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x1c
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_197
	b	.LBB6_70
.LBB6_70:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #29
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_206
	b	.LBB6_71
.LBB6_71:                               //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x1e
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_207
	b	.LBB6_72
.LBB6_72:                               //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x1f
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_208
	b	.LBB6_73
.LBB6_73:                               //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x20
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_209
	b	.LBB6_74
.LBB6_74:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #33
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_210
	b	.LBB6_75
.LBB6_75:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #34
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_211
	b	.LBB6_76
.LBB6_76:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #35
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_212
	b	.LBB6_77
.LBB6_77:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #36
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_222
	b	.LBB6_78
.LBB6_78:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #37
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_232
	b	.LBB6_79
.LBB6_79:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #38
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_233
	b	.LBB6_80
.LBB6_80:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #39
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_240
	b	.LBB6_81
.LBB6_81:                               //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #40
	ldr	w9, [sp, #804]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_247
	b	.LBB6_82
.LBB6_82:                               //   in Loop: Header=BB6_2 Depth=1
	b	.LBB6_284
.LBB6_83:                               //   in Loop: Header=BB6_2 Depth=1
	ldr	x0, [sp, #1152]         // 8-byte Folded Reload
	bl	printf
	b	.LBB6_285
.LBB6_84:                               //   in Loop: Header=BB6_2 Depth=1
	ldr	x0, [sp, #1160]         // 8-byte Folded Reload
	bl	printf
	b	.LBB6_285
.LBB6_85:                               //   in Loop: Header=BB6_2 Depth=1
	ldr	x0, [sp, #1168]         // 8-byte Folded Reload
	bl	printf
	b	.LBB6_285
.LBB6_86:                               //   in Loop: Header=BB6_2 Depth=1
	ldr	x0, [sp, #1176]         // 8-byte Folded Reload
	bl	printf
	b	.LBB6_285
.LBB6_87:                               //   in Loop: Header=BB6_2 Depth=1
	b	.LBB6_285
.LBB6_88:                               //   in Loop: Header=BB6_2 Depth=1
	b	.LBB6_285
.LBB6_89:                               //   in Loop: Header=BB6_2 Depth=1
	b	.LBB6_285
.LBB6_90:                               //   in Loop: Header=BB6_2 Depth=1
	mov	x8, #-2032
	orr	w9, wzr, #0x2
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	ldr	x11, [x10, #4144]
	ldr	x11, [x11]
	str	x11, [x10, #3048]
	ldr	x0, [sp, #1240]         // 8-byte Folded Reload
	str	x8, [sp, #792]          // 8-byte Folded Spill
	str	w9, [sp, #788]          // 4-byte Folded Spill
	bl	printf
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x8, #3048]
	mov	x0, x10
	bl	print_list
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x8, #4144]
	ldr	x11, [sp, #792]         // 8-byte Folded Reload
	add	x10, x10, x11
	mov	x0, x10
	bl	opendir
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	str	x0, [x8, #3040]
	ldr	w9, [sp, #788]          // 4-byte Folded Reload
	str	w9, [x8, #3028]
.LBB6_91:                               //   Parent Loop BB6_2 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB6_93 Depth 3
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x0, [x8, #3040]
	bl	readdir
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	str	x0, [x8, #3032]
	ldr	x9, [sp, #960]          // 8-byte Folded Reload
	cmp	x0, x9
	cset	w10, ne
	tbnz	w10, #0, .LBB6_92
	b	.LBB6_105
.LBB6_92:                               //   in Loop: Header=BB6_91 Depth=2
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	x9, [x9]
	str	x9, [x8, #3048]
.LBB6_93:                               //   Parent Loop BB6_2 Depth=1
                                        //     Parent Loop BB6_91 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #3048]
	ldr	x10, [sp, #960]         // 8-byte Folded Reload
	cmp	x9, x10
	cset	w11, ne
	tbnz	w11, #0, .LBB6_94
	b	.LBB6_104
.LBB6_94:                               //   in Loop: Header=BB6_93 Depth=3
	orr	w8, wzr, #0x1
	mov	w3, #0
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x1, [x9, #3048]
	ldr	x0, [sp, #1232]         // 8-byte Folded Reload
	str	w8, [sp, #784]          // 4-byte Folded Spill
	str	w3, [sp, #780]          // 4-byte Folded Spill
	bl	printf
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x1, [x9, #3048]
	ldr	w1, [x1]
	ldr	x2, [sp, #1224]         // 8-byte Folded Reload
	mov	x0, x2
	ldr	w2, [sp, #784]          // 4-byte Folded Reload
	ldr	w3, [sp, #780]          // 4-byte Folded Reload
	bl	printf
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x9, #3048]
	ldr	w8, [x10]
	ldr	w1, [sp, #784]          // 4-byte Folded Reload
	cmp	w1, w8
	cset	w2, eq
	str	w8, [sp, #776]          // 4-byte Folded Spill
	tbnz	w2, #0, .LBB6_97
	b	.LBB6_95
.LBB6_95:                               //   in Loop: Header=BB6_93 Depth=3
	ldr	w8, [sp, #776]          // 4-byte Folded Reload
	cbz	w8, .LBB6_100
	b	.LBB6_96
.LBB6_96:                               //   in Loop: Header=BB6_93 Depth=3
	b	.LBB6_103
.LBB6_97:                               //   in Loop: Header=BB6_93 Depth=3
	orr	x8, xzr, #0x4
	mov	x9, #19
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	ldr	x11, [x10, #3048]
	add	x8, x11, x8
	ldr	x11, [x10, #3032]
	add	x9, x11, x9
	mov	x0, x8
	mov	x1, x9
	bl	strcmp
	cbz	w0, .LBB6_98
	b	.LBB6_99
.LBB6_98:                               //   in Loop: Header=BB6_93 Depth=3
	add	x8, sp, #369, lsl #12   // =1511424
	add	x8, x8, #3580           // =3580
	mov	x9, #-2032
	mov	x10, #19
	mov	x0, x8
	ldr	x11, [sp, #1048]        // 8-byte Folded Reload
	ldr	x12, [x11, #4144]
	add	x9, x12, x9
	ldr	x12, [x11, #3032]
	add	x10, x12, x10
	ldr	x1, [sp, #1184]         // 8-byte Folded Reload
	mov	x2, x9
	mov	x3, x10
	str	x8, [sp, #768]          // 8-byte Folded Spill
	bl	sprintf
	ldr	x1, [sp, #1192]         // 8-byte Folded Reload
	mov	x0, x1
	bl	puts
	ldr	x8, [sp, #768]          // 8-byte Folded Reload
	mov	x0, x8
	bl	puts
	ldr	x8, [sp, #768]          // 8-byte Folded Reload
	mov	x0, x8
	bl	remove
.LBB6_99:                               //   in Loop: Header=BB6_93 Depth=3
	b	.LBB6_103
.LBB6_100:                              //   in Loop: Header=BB6_93 Depth=3
	add	x8, sp, #369, lsl #12   // =1511424
	add	x8, x8, #2580           // =2580
	mov	x9, #19
	orr	w10, wzr, #0x3
	ldr	x11, [sp, #1048]        // 8-byte Folded Reload
	str	w10, [x11, #3028]
	mov	x0, x8
	ldr	x12, [x11, #3048]
	ldr	w2, [x12, #4]
	ldr	x1, [sp, #1216]         // 8-byte Folded Reload
	str	x8, [sp, #760]          // 8-byte Folded Spill
	str	x9, [sp, #752]          // 8-byte Folded Spill
	bl	sprintf
	ldr	x8, [sp, #760]          // 8-byte Folded Reload
	ldr	x1, [sp, #1208]         // 8-byte Folded Reload
	mov	x0, x1
	mov	x1, x8
	bl	printf
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #3032]
	ldr	x11, [sp, #752]         // 8-byte Folded Reload
	add	x9, x9, x11
	ldr	x1, [sp, #1200]         // 8-byte Folded Reload
	mov	x0, x1
	mov	x1, x9
	bl	printf
	ldr	x8, [sp, #760]          // 8-byte Folded Reload
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x11, [x9, #3032]
	ldr	x12, [sp, #752]         // 8-byte Folded Reload
	add	x11, x11, x12
	mov	x0, x8
	mov	x1, x11
	bl	strcmp
	cbz	w0, .LBB6_101
	b	.LBB6_102
.LBB6_101:                              //   in Loop: Header=BB6_93 Depth=3
	add	x8, sp, #369, lsl #12   // =1511424
	add	x8, x8, #1580           // =1580
	mov	x9, #-2032
	mov	x10, #19
	mov	x0, x8
	ldr	x11, [sp, #1048]        // 8-byte Folded Reload
	ldr	x12, [x11, #4144]
	add	x9, x12, x9
	ldr	x12, [x11, #3032]
	add	x10, x12, x10
	ldr	x1, [sp, #1640]         // 8-byte Folded Reload
	mov	x2, x9
	mov	x3, x10
	str	x8, [sp, #744]          // 8-byte Folded Spill
	bl	sprintf
	ldr	x1, [sp, #1192]         // 8-byte Folded Reload
	mov	x0, x1
	bl	puts
	ldr	x8, [sp, #744]          // 8-byte Folded Reload
	mov	x0, x8
	bl	puts
	ldr	x8, [sp, #744]          // 8-byte Folded Reload
	mov	x0, x8
	bl	remove
.LBB6_102:                              //   in Loop: Header=BB6_93 Depth=3
.LBB6_103:                              //   in Loop: Header=BB6_93 Depth=3
	mov	x8, #34872
	movk	x8, #1, lsl #16
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x9, #3048]
	add	x8, x10, x8
	ldr	x8, [x8]
	str	x8, [x9, #3048]
	b	.LBB6_93
.LBB6_104:                              //   in Loop: Header=BB6_91 Depth=2
	b	.LBB6_91
.LBB6_105:                              //   in Loop: Header=BB6_2 Depth=1
	b	.LBB6_285
.LBB6_106:                              //   in Loop: Header=BB6_2 Depth=1
	mov	x8, #-1016
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x9, #4144]
	add	x8, x10, x8
	ldr	x8, [x8]
	str	x8, [x9, #3104]
	b	.LBB6_285
.LBB6_107:                              //   in Loop: Header=BB6_2 Depth=1
	mov	x8, #-2032
	mov	x0, #1004
	str	x8, [sp, #736]          // 8-byte Folded Spill
	bl	malloc
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	str	x0, [x8, #16]
	ldr	x0, [x8, #16]
	ldr	x9, [x8, #4144]
	ldr	x10, [sp, #736]         // 8-byte Folded Reload
	add	x9, x9, x10
	mov	x1, x9
	bl	strcpy
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	x10, [sp, #736]         // 8-byte Folded Reload
	add	x9, x9, x10
	mov	x0, x9
	bl	strlen
	mov	w11, w0
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #16]
	str	w11, [x9, #1000]
	ldr	x9, [x8, #4144]
	ldr	x9, [x9]
	ldr	w11, [x9, #1016]
	add	w11, w11, #1            // =1
	str	w11, [x9, #1016]
	ldr	x9, [x8, #16]
	ldr	x10, [x8, #3104]
	str	x9, [x10, #1008]
	b	.LBB6_285
.LBB6_108:                              //   in Loop: Header=BB6_2 Depth=1
	mov	x0, #1004
	orr	w8, wzr, #0x1
	str	w8, [sp, #732]          // 4-byte Folded Spill
	bl	malloc
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	str	x0, [x9, #8]
	ldr	x0, [x9, #8]
	ldr	x10, [x9, #4144]
	mov	x1, x10
	bl	strcpy
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x9, #4144]
	mov	x0, x10
	bl	strlen
	mov	w8, w0
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x9, #8]
	str	w8, [x10, #1000]
	ldr	x10, [x9, #8]
	ldr	w8, [sp, #732]          // 4-byte Folded Reload
	str	w8, [x10, #1016]
	ldr	x10, [x9, #8]
	str	x10, [x9, #3104]
	b	.LBB6_285
.LBB6_109:                              //   in Loop: Header=BB6_2 Depth=1
	add	x8, sp, #370, lsl #12   // =1515520
	add	x8, x8, #560            // =560
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x9, #4144]
	mov	x0, x8
	mov	x1, x10
	bl	strcpy
	b	.LBB6_285
.LBB6_110:                              //   in Loop: Header=BB6_2 Depth=1
	mov	x8, #-2032
	orr	w9, wzr, #0x1
	mov	x10, #-1016
	ldr	x0, [sp, #1264]         // 8-byte Folded Reload
	str	x8, [sp, #720]          // 8-byte Folded Spill
	str	w9, [sp, #716]          // 4-byte Folded Spill
	str	x10, [sp, #704]         // 8-byte Folded Spill
	bl	puts
	ldr	x8, [sp, #960]          // 8-byte Folded Reload
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	str	x8, [x10, #3104]
	ldr	x11, [x10, #4144]
	ldr	x12, [sp, #720]         // 8-byte Folded Reload
	add	x11, x11, x12
	ldr	x11, [x11]
	str	x11, [x10]
	ldr	x11, [x10, #4144]
	ldr	x13, [sp, #704]         // 8-byte Folded Reload
	add	x11, x11, x13
	ldr	w9, [x11]
	ldr	w14, [sp, #716]         // 4-byte Folded Reload
	cmp	w9, w14
	cset	w9, eq
	tbnz	w9, #0, .LBB6_111
	b	.LBB6_117
.LBB6_111:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x0, [sp, #1256]         // 8-byte Folded Reload
	bl	printf
.LBB6_112:                              //   Parent Loop BB6_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	x10, [sp, #960]         // 8-byte Folded Reload
	cmp	x9, x10
	cset	w11, ne
	tbnz	w11, #0, .LBB6_113
	b	.LBB6_116
.LBB6_113:                              //   in Loop: Header=BB6_112 Depth=2
	add	x8, sp, #344, lsl #12   // =1409024
	add	x8, x8, #3536           // =3536
	mov	x2, #34880
	movk	x2, #1, lsl #16
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x1, [x9]
	ldr	x10, [x9, #4144]
	ldr	x10, [x10]
	mov	x0, x8
	str	x8, [sp, #696]          // 8-byte Folded Spill
	str	x10, [sp, #688]         // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #696]          // 8-byte Folded Reload
	ldr	x1, [sp, #688]          // 8-byte Folded Reload
	bl	find
	tbnz	w0, #0, .LBB6_114
	b	.LBB6_115
.LBB6_114:                              //   in Loop: Header=BB6_112 Depth=2
	add	x8, sp, #320, lsl #12   // =1310720
	add	x8, x8, #1436           // =1436
	add	x1, sp, #370, lsl #12   // =1515520
	add	x1, x1, #560            // =560
	mov	x2, #34868
	movk	x2, #1, lsl #16
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x9]
	mov	x0, x8
	str	x1, [sp, #680]          // 8-byte Folded Spill
	mov	x1, x10
	str	x8, [sp, #672]          // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #672]          // 8-byte Folded Reload
	ldr	x1, [sp, #680]          // 8-byte Folded Reload
	bl	push_back
.LBB6_115:                              //   in Loop: Header=BB6_112 Depth=2
	mov	x8, #34872
	movk	x8, #1, lsl #16
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x9]
	add	x8, x10, x8
	ldr	x8, [x8]
	str	x8, [x9]
	b	.LBB6_112
.LBB6_116:                              //   in Loop: Header=BB6_2 Depth=1
	b	.LBB6_123
.LBB6_117:                              //   in Loop: Header=BB6_2 Depth=1
	mov	x8, #-2032
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x9, #4144]
	add	x8, x10, x8
	ldr	x8, [x8]
	str	x8, [x9, #3104]
	ldr	x8, [x9, #4144]
	ldr	x8, [x8]
	str	x8, [x9]
.LBB6_118:                              //   Parent Loop BB6_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	x10, [sp, #960]         // 8-byte Folded Reload
	cmp	x9, x10
	cset	w11, ne
	tbnz	w11, #0, .LBB6_119
	b	.LBB6_122
.LBB6_119:                              //   in Loop: Header=BB6_118 Depth=2
	add	x8, sp, #295, lsl #12   // =1208320
	add	x8, x8, #3416           // =3416
	mov	x2, #34880
	movk	x2, #1, lsl #16
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x1, [x9]
	ldr	x10, [x9, #3104]
	mov	x0, x8
	str	x8, [sp, #664]          // 8-byte Folded Spill
	str	x10, [sp, #656]         // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #664]          // 8-byte Folded Reload
	ldr	x1, [sp, #656]          // 8-byte Folded Reload
	bl	find
	tbnz	w0, #0, .LBB6_121
// %bb.120:                             //   in Loop: Header=BB6_118 Depth=2
	add	x8, sp, #271, lsl #12   // =1110016
	add	x8, x8, #1316           // =1316
	add	x1, sp, #370, lsl #12   // =1515520
	add	x1, x1, #560            // =560
	mov	x2, #34868
	movk	x2, #1, lsl #16
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x9]
	mov	x0, x8
	str	x1, [sp, #648]          // 8-byte Folded Spill
	mov	x1, x10
	str	x8, [sp, #640]          // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #640]          // 8-byte Folded Reload
	ldr	x1, [sp, #648]          // 8-byte Folded Reload
	bl	push_back
.LBB6_121:                              //   in Loop: Header=BB6_118 Depth=2
	mov	x8, #34872
	movk	x8, #1, lsl #16
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x9]
	add	x8, x10, x8
	ldr	x8, [x8]
	str	x8, [x9]
	b	.LBB6_118
.LBB6_122:                              //   in Loop: Header=BB6_2 Depth=1
.LBB6_123:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x0, [sp, #1248]         // 8-byte Folded Reload
	bl	printf
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #3104]
	mov	x0, x9
	bl	print_list
	b	.LBB6_285
.LBB6_124:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	x9, [x9]
	str	x9, [x8, #3104]
	b	.LBB6_285
.LBB6_125:                              //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x1
	ldr	x0, [sp, #1272]         // 8-byte Folded Reload
	str	w8, [sp, #636]          // 4-byte Folded Spill
	bl	printf
	ldr	w8, [sp, #636]          // 4-byte Folded Reload
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	str	w8, [x9, #3104]
	b	.LBB6_285
.LBB6_126:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x0, [sp, #1280]         // 8-byte Folded Reload
	bl	printf
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	str	wzr, [x8, #3104]
	b	.LBB6_285
.LBB6_127:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	x9, [x9]
	str	x9, [x8, #3104]
	b	.LBB6_285
.LBB6_128:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	x9, [x9]
	str	x9, [x8, #3104]
	b	.LBB6_285
.LBB6_129:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #960]          // 8-byte Folded Reload
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	str	x8, [x9, #3104]
	ldr	x10, [sp, #1656]        // 8-byte Folded Reload
	ldr	x11, [x10]
	ldr	x12, [sp, #1032]        // 8-byte Folded Reload
	str	x11, [x12]
.LBB6_130:                              //   Parent Loop BB6_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #1032]         // 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	x10, [sp, #960]         // 8-byte Folded Reload
	cmp	x9, x10
	cset	w11, ne
	tbnz	w11, #0, .LBB6_131
	b	.LBB6_135
.LBB6_131:                              //   in Loop: Header=BB6_130 Depth=2
	add	x8, sp, #246, lsl #12   // =1007616
	add	x8, x8, #3288           // =3288
	mov	x2, #34880
	movk	x2, #1, lsl #16
	ldr	x9, [sp, #1032]         // 8-byte Folded Reload
	ldr	x1, [x9]
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	ldr	x11, [x10, #4144]
	ldr	x11, [x11]
	mov	x0, x8
	str	x8, [sp, #624]          // 8-byte Folded Spill
	str	x11, [sp, #616]         // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #624]          // 8-byte Folded Reload
	ldr	x1, [sp, #616]          // 8-byte Folded Reload
	bl	find
	tbnz	w0, #0, .LBB6_132
	b	.LBB6_133
.LBB6_132:                              //   in Loop: Header=BB6_130 Depth=2
	b	.LBB6_130
.LBB6_133:                              //   in Loop: Header=BB6_130 Depth=2
	add	x8, sp, #222, lsl #12   // =909312
	add	x8, x8, #1188           // =1188
	add	x1, sp, #370, lsl #12   // =1515520
	add	x1, x1, #560            // =560
	mov	x2, #34868
	movk	x2, #1, lsl #16
	ldr	x9, [sp, #1032]         // 8-byte Folded Reload
	ldr	x10, [x9]
	mov	x0, x8
	str	x1, [sp, #608]          // 8-byte Folded Spill
	mov	x1, x10
	str	x8, [sp, #600]          // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #600]          // 8-byte Folded Reload
	ldr	x1, [sp, #608]          // 8-byte Folded Reload
	bl	push_back
// %bb.134:                             //   in Loop: Header=BB6_130 Depth=2
	b	.LBB6_130
.LBB6_135:                              //   in Loop: Header=BB6_2 Depth=1
	mov	x8, #34872
	movk	x8, #1, lsl #16
	ldr	x9, [sp, #1032]         // 8-byte Folded Reload
	ldr	x10, [x9]
	add	x8, x10, x8
	ldr	x8, [x8]
	str	x8, [x9]
	b	.LBB6_285
.LBB6_136:                              //   in Loop: Header=BB6_2 Depth=1
	mov	x8, #-1016
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x9, #4144]
	add	x8, x10, x8
	ldr	x8, [x8]
	str	x8, [x9, #3104]
	b	.LBB6_285
.LBB6_137:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #960]          // 8-byte Folded Reload
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	str	x8, [x9, #3104]
	ldr	x0, [sp, #1400]         // 8-byte Folded Reload
	bl	puts
	ldr	x8, [sp, #1656]         // 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	x10, [sp, #1024]        // 8-byte Folded Reload
	str	x9, [x10, #16]
	ldr	x9, [x8]
	mov	x0, x9
	bl	print_list
	ldr	x8, [sp, #1024]         // 8-byte Folded Reload
	str	wzr, [x8, #12]
	str	wzr, [x8, #8]
.LBB6_138:                              //   Parent Loop BB6_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #1024]         // 8-byte Folded Reload
	ldr	w9, [x8, #8]
	ldr	x10, [sp, #1040]        // 8-byte Folded Reload
	ldr	w11, [x10, #8]
	cmp	w9, w11
	cset	w9, lt
	tbnz	w9, #0, .LBB6_139
	b	.LBB6_143
.LBB6_139:                              //   in Loop: Header=BB6_138 Depth=2
	mov	x8, #-2032
	orr	x9, xzr, #0x4
	mov	x10, #1004
	ldr	x11, [sp, #1048]        // 8-byte Folded Reload
	ldr	x12, [x11, #4144]
	add	x12, x12, x8
	ldr	x0, [sp, #1392]         // 8-byte Folded Reload
	mov	x1, x12
	str	x8, [sp, #592]          // 8-byte Folded Spill
	str	x9, [sp, #584]          // 8-byte Folded Spill
	str	x10, [sp, #576]         // 8-byte Folded Spill
	bl	printf
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	x10, [sp, #592]         // 8-byte Folded Reload
	add	x9, x9, x10
	ldr	x11, [sp, #1680]        // 8-byte Folded Reload
	ldr	x12, [x11]
	ldr	x1, [sp, #1024]         // 8-byte Folded Reload
	ldr	w13, [x1, #8]
	mov	w14, w13
	sxtw	x14, w14
	ldr	x15, [sp, #576]         // 8-byte Folded Reload
	mul	x14, x15, x14
	add	x12, x12, x14
	ldr	x14, [sp, #584]         // 8-byte Folded Reload
	add	x12, x12, x14
	mov	x0, x9
	mov	x1, x12
	bl	strcmp
	cbz	w0, .LBB6_140
	b	.LBB6_141
.LBB6_140:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #1024]         // 8-byte Folded Reload
	ldr	w9, [x8, #8]
	str	w9, [x8, #12]
	b	.LBB6_143
.LBB6_141:                              //   in Loop: Header=BB6_138 Depth=2
// %bb.142:                             //   in Loop: Header=BB6_138 Depth=2
	ldr	x8, [sp, #1024]         // 8-byte Folded Reload
	ldr	w9, [x8, #8]
	add	w9, w9, #1              // =1
	str	w9, [x8, #8]
	b	.LBB6_138
.LBB6_143:                              //   in Loop: Header=BB6_2 Depth=1
	mov	x8, #1004
	ldr	x9, [sp, #1024]         // 8-byte Folded Reload
	ldr	x1, [x9, #16]
	ldr	x10, [x9, #16]
	ldr	w11, [x9, #12]
	mov	w12, w11
	sxtw	x12, w12
	mul	x8, x8, x12
	add	x8, x10, x8
	ldr	w2, [x8, #4]
	ldr	x0, [sp, #1384]         // 8-byte Folded Reload
	bl	printf
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	w1, [x9, #4]
	ldr	x9, [sp, #1376]         // 8-byte Folded Reload
	mov	x0, x9
	bl	printf
.LBB6_144:                              //   Parent Loop BB6_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #1024]         // 8-byte Folded Reload
	ldr	x9, [x8, #16]
	ldr	x10, [sp, #960]         // 8-byte Folded Reload
	cmp	x9, x10
	cset	w11, ne
	tbnz	w11, #0, .LBB6_145
	b	.LBB6_170
.LBB6_145:                              //   in Loop: Header=BB6_144 Depth=2
	mov	x0, #34880
	movk	x0, #1, lsl #16
	orr	x8, xzr, #0x3f0
	mov	x2, #34868
	movk	x2, #1, lsl #16
	mov	x9, #1004
	mov	x10, #-1016
	ldr	x11, [sp, #1024]        // 8-byte Folded Reload
	ldr	x12, [x11, #16]
	ldr	w13, [x11, #12]
	mov	w14, w13
	sxtw	x14, w14
	mul	x9, x9, x14
	add	x9, x12, x9
	ldr	w1, [x9, #4]
	ldr	x9, [sp, #1360]         // 8-byte Folded Reload
	str	x0, [sp, #568]          // 8-byte Folded Spill
	mov	x0, x9
	str	x8, [sp, #560]          // 8-byte Folded Spill
	str	x2, [sp, #552]          // 8-byte Folded Spill
	str	x10, [sp, #544]         // 8-byte Folded Spill
	bl	printf
	ldr	x8, [sp, #568]          // 8-byte Folded Reload
	mov	x0, x8
	bl	malloc
	ldr	x8, [sp, #1024]         // 8-byte Folded Reload
	str	x0, [x8]
	ldr	x9, [x8]
	ldr	x10, [x8, #16]
	mov	x0, x9
	mov	x1, x10
	ldr	x2, [sp, #552]          // 8-byte Folded Reload
	bl	memcpy
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	x10, [sp, #544]         // 8-byte Folded Reload
	add	x9, x9, x10
	ldr	x11, [sp, #560]         // 8-byte Folded Reload
	add	x9, x9, x11
	mov	x0, x9
	ldr	x1, [sp, #1552]         // 8-byte Folded Reload
	bl	strcmp
	cbz	w0, .LBB6_146
	b	.LBB6_149
.LBB6_146:                              //   in Loop: Header=BB6_144 Depth=2
	mov	x8, #1004
	ldr	x0, [sp, #1352]         // 8-byte Folded Reload
	str	x8, [sp, #536]          // 8-byte Folded Spill
	bl	puts
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	w1, [x9, #4]
	ldr	x9, [sp, #1344]         // 8-byte Folded Reload
	mov	x0, x9
	bl	printf
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	w1, [x9, #4]
	ldr	x9, [sp, #1024]         // 8-byte Folded Reload
	ldr	x10, [x9, #16]
	ldr	w11, [x9, #12]
	mov	w12, w11
	sxtw	x12, w12
	ldr	x13, [sp, #536]         // 8-byte Folded Reload
	mul	x12, x13, x12
	add	x10, x10, x12
	ldr	w11, [x10, #4]
	cmp	w1, w11
	cset	w11, eq
	tbnz	w11, #0, .LBB6_147
	b	.LBB6_148
.LBB6_147:                              //   in Loop: Header=BB6_144 Depth=2
	add	x8, sp, #197, lsl #12   // =806912
	add	x8, x8, #3156           // =3156
	add	x1, sp, #370, lsl #12   // =1515520
	add	x1, x1, #560            // =560
	mov	x2, #34868
	movk	x2, #1, lsl #16
	ldr	x0, [sp, #1336]         // 8-byte Folded Reload
	str	x8, [sp, #528]          // 8-byte Folded Spill
	str	x1, [sp, #520]          // 8-byte Folded Spill
	str	x2, [sp, #512]          // 8-byte Folded Spill
	bl	printf
	ldr	x8, [sp, #1024]         // 8-byte Folded Reload
	ldr	x1, [x8]
	ldr	x2, [sp, #528]          // 8-byte Folded Reload
	mov	x0, x2
	ldr	x2, [sp, #512]          // 8-byte Folded Reload
	bl	memcpy
	ldr	x0, [sp, #528]          // 8-byte Folded Reload
	ldr	x1, [sp, #520]          // 8-byte Folded Reload
	bl	push_back
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x0, [x8, #3104]
	bl	print_list
.LBB6_148:                              //   in Loop: Header=BB6_144 Depth=2
.LBB6_149:                              //   in Loop: Header=BB6_144 Depth=2
	orr	x8, xzr, #0x3f0
	mov	x9, #-1016
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	ldr	x11, [x10, #4144]
	add	x9, x11, x9
	add	x8, x9, x8
	mov	x0, x8
	ldr	x1, [sp, #1560]         // 8-byte Folded Reload
	bl	strcmp
	cbz	w0, .LBB6_150
	b	.LBB6_153
.LBB6_150:                              //   in Loop: Header=BB6_144 Depth=2
	mov	x8, #1004
	ldr	x0, [sp, #1328]         // 8-byte Folded Reload
	str	x8, [sp, #504]          // 8-byte Folded Spill
	bl	puts
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	w10, [x9, #4]
	ldr	x9, [sp, #1024]         // 8-byte Folded Reload
	ldr	x11, [x9, #16]
	ldr	w12, [x9, #12]
	mov	w13, w12
	sxtw	x13, w13
	ldr	x14, [sp, #504]         // 8-byte Folded Reload
	mul	x13, x14, x13
	add	x11, x11, x13
	ldr	w12, [x11, #4]
	cmp	w10, w12
	cset	w10, ne
	tbnz	w10, #0, .LBB6_151
	b	.LBB6_152
.LBB6_151:                              //   in Loop: Header=BB6_144 Depth=2
	add	x8, sp, #173, lsl #12   // =708608
	add	x8, x8, #1056           // =1056
	add	x1, sp, #370, lsl #12   // =1515520
	add	x1, x1, #560            // =560
	mov	x2, #34868
	movk	x2, #1, lsl #16
	ldr	x9, [sp, #1024]         // 8-byte Folded Reload
	ldr	x10, [x9]
	mov	x0, x8
	str	x1, [sp, #496]          // 8-byte Folded Spill
	mov	x1, x10
	str	x8, [sp, #488]          // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #488]          // 8-byte Folded Reload
	ldr	x1, [sp, #496]          // 8-byte Folded Reload
	bl	push_back
.LBB6_152:                              //   in Loop: Header=BB6_144 Depth=2
.LBB6_153:                              //   in Loop: Header=BB6_144 Depth=2
	orr	x8, xzr, #0x3f0
	mov	x9, #-1016
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	ldr	x11, [x10, #4144]
	add	x9, x11, x9
	add	x8, x9, x8
	mov	x0, x8
	ldr	x1, [sp, #1544]         // 8-byte Folded Reload
	bl	strcmp
	cbz	w0, .LBB6_154
	b	.LBB6_157
.LBB6_154:                              //   in Loop: Header=BB6_144 Depth=2
	mov	x8, #1004
	ldr	x0, [sp, #1320]         // 8-byte Folded Reload
	str	x8, [sp, #480]          // 8-byte Folded Spill
	bl	puts
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	w10, [x9, #4]
	ldr	x9, [sp, #1024]         // 8-byte Folded Reload
	ldr	x11, [x9, #16]
	ldr	w12, [x9, #12]
	mov	w13, w12
	sxtw	x13, w13
	ldr	x14, [sp, #480]         // 8-byte Folded Reload
	mul	x13, x14, x13
	add	x11, x11, x13
	ldr	w12, [x11, #4]
	cmp	w10, w12
	cset	w10, lt
	tbnz	w10, #0, .LBB6_155
	b	.LBB6_156
.LBB6_155:                              //   in Loop: Header=BB6_144 Depth=2
	add	x8, sp, #148, lsl #12   // =606208
	add	x8, x8, #3052           // =3052
	add	x1, sp, #370, lsl #12   // =1515520
	add	x1, x1, #560            // =560
	mov	x2, #34868
	movk	x2, #1, lsl #16
	ldr	x9, [sp, #1024]         // 8-byte Folded Reload
	ldr	x10, [x9]
	mov	x0, x8
	str	x1, [sp, #472]          // 8-byte Folded Spill
	mov	x1, x10
	str	x8, [sp, #464]          // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #464]          // 8-byte Folded Reload
	ldr	x1, [sp, #472]          // 8-byte Folded Reload
	bl	push_back
.LBB6_156:                              //   in Loop: Header=BB6_144 Depth=2
.LBB6_157:                              //   in Loop: Header=BB6_144 Depth=2
	orr	x8, xzr, #0x3f0
	mov	x9, #-1016
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	ldr	x11, [x10, #4144]
	add	x9, x11, x9
	add	x8, x9, x8
	mov	x0, x8
	ldr	x1, [sp, #1528]         // 8-byte Folded Reload
	bl	strcmp
	cbz	w0, .LBB6_158
	b	.LBB6_161
.LBB6_158:                              //   in Loop: Header=BB6_144 Depth=2
	mov	x8, #1004
	ldr	x0, [sp, #1312]         // 8-byte Folded Reload
	str	x8, [sp, #456]          // 8-byte Folded Spill
	bl	puts
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	w10, [x9, #4]
	ldr	x9, [sp, #1024]         // 8-byte Folded Reload
	ldr	x11, [x9, #16]
	ldr	w12, [x9, #12]
	mov	w13, w12
	sxtw	x13, w13
	ldr	x14, [sp, #456]         // 8-byte Folded Reload
	mul	x13, x14, x13
	add	x11, x11, x13
	ldr	w12, [x11, #4]
	cmp	w10, w12
	cset	w10, gt
	tbnz	w10, #0, .LBB6_159
	b	.LBB6_160
.LBB6_159:                              //   in Loop: Header=BB6_144 Depth=2
	add	x8, sp, #124, lsl #12   // =507904
	add	x8, x8, #952            // =952
	add	x1, sp, #370, lsl #12   // =1515520
	add	x1, x1, #560            // =560
	mov	x2, #34868
	movk	x2, #1, lsl #16
	ldr	x9, [sp, #1024]         // 8-byte Folded Reload
	ldr	x10, [x9]
	mov	x0, x8
	str	x1, [sp, #448]          // 8-byte Folded Spill
	mov	x1, x10
	str	x8, [sp, #440]          // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #440]          // 8-byte Folded Reload
	ldr	x1, [sp, #448]          // 8-byte Folded Reload
	bl	push_back
.LBB6_160:                              //   in Loop: Header=BB6_144 Depth=2
.LBB6_161:                              //   in Loop: Header=BB6_144 Depth=2
	orr	x8, xzr, #0x3f0
	mov	x9, #-1016
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	ldr	x11, [x10, #4144]
	add	x9, x11, x9
	add	x8, x9, x8
	mov	x0, x8
	ldr	x1, [sp, #1304]         // 8-byte Folded Reload
	bl	strcmp
	cbz	w0, .LBB6_162
	b	.LBB6_165
.LBB6_162:                              //   in Loop: Header=BB6_144 Depth=2
	mov	x8, #1004
	ldr	x0, [sp, #1296]         // 8-byte Folded Reload
	str	x8, [sp, #432]          // 8-byte Folded Spill
	bl	puts
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	w10, [x9, #4]
	ldr	x9, [sp, #1024]         // 8-byte Folded Reload
	ldr	x11, [x9, #16]
	ldr	w12, [x9, #12]
	mov	w13, w12
	sxtw	x13, w13
	ldr	x14, [sp, #432]         // 8-byte Folded Reload
	mul	x13, x14, x13
	add	x11, x11, x13
	ldr	w12, [x11, #4]
	cmp	w10, w12
	cset	w10, le
	tbnz	w10, #0, .LBB6_163
	b	.LBB6_164
.LBB6_163:                              //   in Loop: Header=BB6_144 Depth=2
	add	x8, sp, #99, lsl #12    // =405504
	add	x8, x8, #2948           // =2948
	add	x1, sp, #370, lsl #12   // =1515520
	add	x1, x1, #560            // =560
	mov	x2, #34868
	movk	x2, #1, lsl #16
	ldr	x9, [sp, #1024]         // 8-byte Folded Reload
	ldr	x10, [x9]
	mov	x0, x8
	str	x1, [sp, #424]          // 8-byte Folded Spill
	mov	x1, x10
	str	x8, [sp, #416]          // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #416]          // 8-byte Folded Reload
	ldr	x1, [sp, #424]          // 8-byte Folded Reload
	bl	push_back
.LBB6_164:                              //   in Loop: Header=BB6_144 Depth=2
.LBB6_165:                              //   in Loop: Header=BB6_144 Depth=2
	orr	x8, xzr, #0x3f0
	mov	x9, #-1016
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	ldr	x11, [x10, #4144]
	add	x9, x11, x9
	add	x8, x9, x8
	mov	x0, x8
	ldr	x1, [sp, #1536]         // 8-byte Folded Reload
	bl	strcmp
	cbz	w0, .LBB6_166
	b	.LBB6_169
.LBB6_166:                              //   in Loop: Header=BB6_144 Depth=2
	mov	x8, #1004
	ldr	x0, [sp, #1288]         // 8-byte Folded Reload
	str	x8, [sp, #408]          // 8-byte Folded Spill
	bl	puts
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	w10, [x9, #4]
	ldr	x9, [sp, #1024]         // 8-byte Folded Reload
	ldr	x11, [x9, #16]
	ldr	w12, [x9, #12]
	mov	w13, w12
	sxtw	x13, w13
	ldr	x14, [sp, #408]         // 8-byte Folded Reload
	mul	x13, x14, x13
	add	x11, x11, x13
	ldr	w12, [x11, #4]
	cmp	w10, w12
	cset	w10, ge
	tbnz	w10, #0, .LBB6_167
	b	.LBB6_168
.LBB6_167:                              //   in Loop: Header=BB6_144 Depth=2
	add	x8, sp, #75, lsl #12    // =307200
	add	x8, x8, #848            // =848
	add	x1, sp, #370, lsl #12   // =1515520
	add	x1, x1, #560            // =560
	mov	x2, #34868
	movk	x2, #1, lsl #16
	ldr	x9, [sp, #1024]         // 8-byte Folded Reload
	ldr	x10, [x9]
	mov	x0, x8
	str	x1, [sp, #400]          // 8-byte Folded Spill
	mov	x1, x10
	str	x8, [sp, #392]          // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #392]          // 8-byte Folded Reload
	ldr	x1, [sp, #400]          // 8-byte Folded Reload
	bl	push_back
.LBB6_168:                              //   in Loop: Header=BB6_144 Depth=2
.LBB6_169:                              //   in Loop: Header=BB6_144 Depth=2
	mov	x8, #34872
	movk	x8, #1, lsl #16
	ldr	x9, [sp, #1024]         // 8-byte Folded Reload
	ldr	x10, [x9, #16]
	add	x8, x10, x8
	ldr	x8, [x8]
	str	x8, [x9, #16]
	b	.LBB6_144
.LBB6_170:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x0, [sp, #1368]         // 8-byte Folded Reload
	bl	printf
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #3104]
	mov	x0, x9
	bl	print_list
	ldr	x0, [sp, #1368]         // 8-byte Folded Reload
	bl	printf
	b	.LBB6_285
.LBB6_171:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #960]          // 8-byte Folded Reload
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	str	x8, [x9, #3104]
	ldr	x10, [sp, #1656]        // 8-byte Folded Reload
	ldr	x11, [x10]
	ldr	x12, [sp, #1016]        // 8-byte Folded Reload
	str	x11, [x12, #1016]
	ldr	x0, [sp, #1472]         // 8-byte Folded Reload
	bl	printf
	ldr	x8, [sp, #1016]         // 8-byte Folded Reload
	str	wzr, [x8, #1012]
	str	wzr, [x8, #1008]
.LBB6_172:                              //   Parent Loop BB6_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #1016]         // 8-byte Folded Reload
	ldr	w9, [x8, #1008]
	ldr	x10, [sp, #1040]        // 8-byte Folded Reload
	ldr	w11, [x10, #8]
	cmp	w9, w11
	cset	w9, lt
	tbnz	w9, #0, .LBB6_173
	b	.LBB6_177
.LBB6_173:                              //   in Loop: Header=BB6_172 Depth=2
	mov	x8, #-2032
	orr	x9, xzr, #0x4
	mov	x10, #1004
	ldr	x11, [sp, #1048]        // 8-byte Folded Reload
	ldr	x12, [x11, #4144]
	add	x8, x12, x8
	ldr	x12, [sp, #1680]        // 8-byte Folded Reload
	ldr	x13, [x12]
	ldr	x14, [sp, #1016]        // 8-byte Folded Reload
	ldr	w15, [x14, #1008]
	mov	w16, w15
	sxtw	x16, w16
	mul	x10, x10, x16
	add	x10, x13, x10
	add	x9, x10, x9
	mov	x0, x8
	mov	x1, x9
	bl	strcmp
	cbz	w0, .LBB6_174
	b	.LBB6_175
.LBB6_174:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #1016]         // 8-byte Folded Reload
	ldr	w9, [x8, #1008]
	str	w9, [x8, #1012]
	ldr	w1, [x8, #1012]
	ldr	x0, [sp, #1464]         // 8-byte Folded Reload
	bl	printf
	b	.LBB6_177
.LBB6_175:                              //   in Loop: Header=BB6_172 Depth=2
// %bb.176:                             //   in Loop: Header=BB6_172 Depth=2
	ldr	x8, [sp, #1016]         // 8-byte Folded Reload
	ldr	w9, [x8, #1008]
	add	w9, w9, #1              // =1
	str	w9, [x8, #1008]
	b	.LBB6_172
.LBB6_177:                              //   in Loop: Header=BB6_2 Depth=1
	orr	x8, xzr, #0x3f0
	orr	x9, xzr, #0x4
	mov	x10, #-1016
	ldr	x11, [sp, #1016]        // 8-byte Folded Reload
	ldr	x1, [x11, #1016]
	ldr	x0, [sp, #1456]         // 8-byte Folded Reload
	str	x8, [sp, #384]          // 8-byte Folded Spill
	str	x9, [sp, #376]          // 8-byte Folded Spill
	str	x10, [sp, #368]         // 8-byte Folded Spill
	bl	printf
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	x10, [sp, #368]         // 8-byte Folded Reload
	add	x9, x9, x10
	ldr	x11, [sp, #384]         // 8-byte Folded Reload
	add	x9, x9, x11
	ldr	x1, [sp, #1448]         // 8-byte Folded Reload
	mov	x0, x1
	mov	x1, x9
	bl	printf
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	x10, [sp, #376]         // 8-byte Folded Reload
	add	x9, x9, x10
	ldr	x11, [x8, #4144]
	add	x11, x11, x10
	mov	x0, x11
	str	x9, [sp, #360]          // 8-byte Folded Spill
	bl	strlen
	ldr	x1, [sp, #1440]         // 8-byte Folded Reload
	str	x0, [sp, #352]          // 8-byte Folded Spill
	mov	x0, x1
	ldr	x1, [sp, #360]          // 8-byte Folded Reload
	ldr	x2, [sp, #352]          // 8-byte Folded Reload
	bl	printf
.LBB6_178:                              //   Parent Loop BB6_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #1016]         // 8-byte Folded Reload
	ldr	x9, [x8, #1016]
	ldr	x10, [sp, #960]         // 8-byte Folded Reload
	cmp	x9, x10
	cset	w11, ne
	tbnz	w11, #0, .LBB6_179
	b	.LBB6_184
.LBB6_179:                              //   in Loop: Header=BB6_178 Depth=2
	orr	x8, xzr, #0x3f0
	mov	x9, #-1016
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	ldr	x11, [x10, #4144]
	add	x9, x11, x9
	add	x8, x9, x8
	mov	x0, x8
	ldr	x1, [sp, #1504]         // 8-byte Folded Reload
	bl	strcmp
	cbz	w0, .LBB6_180
	b	.LBB6_183
.LBB6_180:                              //   in Loop: Header=BB6_178 Depth=2
	add	x8, sp, #74, lsl #12    // =303104
	add	x8, x8, #3928           // =3928
	orr	x9, xzr, #0x4
	mov	x10, #1004
	mov	x0, x8
	ldr	x11, [sp, #1048]        // 8-byte Folded Reload
	ldr	x12, [x11, #4144]
	add	x12, x12, x9
	mov	x1, x12
	str	x8, [sp, #344]          // 8-byte Folded Spill
	str	x9, [sp, #336]          // 8-byte Folded Spill
	str	x10, [sp, #328]         // 8-byte Folded Spill
	bl	strcpy
	ldr	x8, [sp, #1016]         // 8-byte Folded Reload
	ldr	x9, [x8, #1016]
	ldr	w13, [x8, #1012]
	mov	w10, w13
	sxtw	x10, w10
	ldr	x11, [sp, #328]         // 8-byte Folded Reload
	mul	x10, x11, x10
	add	x9, x9, x10
	ldr	x10, [sp, #336]         // 8-byte Folded Reload
	add	x9, x9, x10
	mov	x0, x9
	bl	strlen
	ldr	x1, [sp, #1416]         // 8-byte Folded Reload
	str	x0, [sp, #320]          // 8-byte Folded Spill
	mov	x0, x1
	ldr	x1, [sp, #320]          // 8-byte Folded Reload
	bl	printf
	ldr	x8, [sp, #1016]         // 8-byte Folded Reload
	ldr	x9, [x8, #1016]
	ldr	w13, [x8, #1012]
	mov	w10, w13
	sxtw	x10, w10
	ldr	x11, [sp, #328]         // 8-byte Folded Reload
	mul	x10, x11, x10
	add	x9, x9, x10
	ldr	x10, [sp, #336]         // 8-byte Folded Reload
	add	x9, x9, x10
	ldr	x12, [sp, #1048]        // 8-byte Folded Reload
	ldr	x1, [x12, #4144]
	add	x1, x1, x10
	ldr	x14, [x8, #1016]
	ldr	w13, [x8, #1012]
	mov	w15, w13
	sxtw	x15, w15
	mul	x15, x11, x15
	add	x14, x14, x15
	add	x14, x14, x10
	mov	x0, x1
	mov	x1, x14
	str	x9, [sp, #312]          // 8-byte Folded Spill
	bl	strcmp
	ldr	x8, [sp, #344]          // 8-byte Folded Reload
	ldr	x9, [sp, #1016]         // 8-byte Folded Reload
	ldr	x10, [x9, #1016]
	ldr	w13, [x9, #1012]
	mov	w11, w13
	sxtw	x11, w11
	ldr	x12, [sp, #328]         // 8-byte Folded Reload
	mul	x11, x12, x11
	add	x10, x10, x11
	ldr	x11, [sp, #336]         // 8-byte Folded Reload
	add	x10, x10, x11
	str	w0, [sp, #308]          // 4-byte Folded Spill
	mov	x0, x8
	mov	x1, x10
	bl	strcmp
	ldr	x1, [sp, #1408]         // 8-byte Folded Reload
	str	w0, [sp, #304]          // 4-byte Folded Spill
	mov	x0, x1
	ldr	x1, [sp, #312]          // 8-byte Folded Reload
	ldr	w2, [sp, #308]          // 4-byte Folded Reload
	ldr	w3, [sp, #304]          // 4-byte Folded Reload
	bl	printf
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	x10, [sp, #336]         // 8-byte Folded Reload
	add	x9, x9, x10
	ldr	x11, [sp, #1016]        // 8-byte Folded Reload
	ldr	x12, [x11, #1016]
	ldr	w13, [x11, #1012]
	mov	w14, w13
	sxtw	x14, w14
	ldr	x15, [sp, #328]         // 8-byte Folded Reload
	mul	x14, x15, x14
	add	x12, x12, x14
	add	x12, x12, x10
	mov	x0, x9
	mov	x1, x12
	bl	strcmp
	cbz	w0, .LBB6_181
	b	.LBB6_182
.LBB6_181:                              //   in Loop: Header=BB6_178 Depth=2
	add	x8, sp, #50, lsl #12    // =204800
	add	x8, x8, #1820           // =1820
	add	x1, sp, #370, lsl #12   // =1515520
	add	x1, x1, #560            // =560
	mov	x0, #34880
	movk	x0, #1, lsl #16
	mov	x9, #34868
	movk	x9, #1, lsl #16
	str	x8, [sp, #296]          // 8-byte Folded Spill
	str	x1, [sp, #288]          // 8-byte Folded Spill
	str	x9, [sp, #280]          // 8-byte Folded Spill
	bl	malloc
	ldr	x8, [sp, #1016]         // 8-byte Folded Reload
	str	x0, [x8]
	ldr	x9, [x8]
	ldr	x0, [x8, #1016]
	str	x0, [sp, #272]          // 8-byte Folded Spill
	mov	x0, x9
	ldr	x1, [sp, #272]          // 8-byte Folded Reload
	ldr	x2, [sp, #280]          // 8-byte Folded Reload
	bl	memcpy
	ldr	x8, [sp, #1016]         // 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	x0, [sp, #296]          // 8-byte Folded Reload
	mov	x1, x9
	ldr	x2, [sp, #280]          // 8-byte Folded Reload
	bl	memcpy
	ldr	x0, [sp, #296]          // 8-byte Folded Reload
	ldr	x1, [sp, #288]          // 8-byte Folded Reload
	bl	push_back
.LBB6_182:                              //   in Loop: Header=BB6_178 Depth=2
.LBB6_183:                              //   in Loop: Header=BB6_178 Depth=2
	mov	x8, #34872
	movk	x8, #1, lsl #16
	ldr	x9, [sp, #1016]         // 8-byte Folded Reload
	ldr	x10, [x9, #1016]
	add	x8, x10, x8
	ldr	x8, [x8]
	str	x8, [x9, #1016]
	b	.LBB6_178
.LBB6_184:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x0, [sp, #1432]         // 8-byte Folded Reload
	bl	printf
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #3104]
	mov	x0, x9
	bl	print_list
	ldr	x0, [sp, #1424]         // 8-byte Folded Reload
	bl	printf
	b	.LBB6_285
.LBB6_185:                              //   in Loop: Header=BB6_2 Depth=1
	add	x8, sp, #370, lsl #12   // =1515520
	add	x8, x8, #560            // =560
	orr	x9, xzr, #0x4
	add	x8, x8, x9
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	ldr	x11, [x10, #4144]
	add	x9, x11, x9
	mov	x0, x8
	mov	x1, x9
	bl	strcpy
	b	.LBB6_285
.LBB6_186:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x0, [sp, #1488]         // 8-byte Folded Reload
	bl	printf
	ldr	w8, [sp, #1524]         // 4-byte Folded Reload
	ldr	x9, [sp, #1008]         // 8-byte Folded Reload
	strb	w8, [x9, #1027]
	str	wzr, [x9, #1020]
.LBB6_187:                              //   Parent Loop BB6_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #1008]         // 8-byte Folded Reload
	ldr	w9, [x8, #1020]
	ldr	x10, [sp, #1040]        // 8-byte Folded Reload
	ldr	w11, [x10, #8]
	cmp	w9, w11
	cset	w9, lt
	tbnz	w9, #0, .LBB6_188
	b	.LBB6_192
.LBB6_188:                              //   in Loop: Header=BB6_187 Depth=2
	orr	x8, xzr, #0x4
	mov	x9, #1004
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	ldr	x11, [x10, #4144]
	ldr	x12, [sp, #1680]        // 8-byte Folded Reload
	ldr	x13, [x12]
	ldr	x14, [sp, #1008]        // 8-byte Folded Reload
	ldr	w15, [x14, #1020]
	mov	w16, w15
	sxtw	x16, w16
	mul	x9, x9, x16
	add	x9, x13, x9
	add	x8, x9, x8
	mov	x0, x11
	mov	x1, x8
	bl	strcmp
	cbz	w0, .LBB6_189
	b	.LBB6_190
.LBB6_189:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	w8, [sp, #1520]         // 4-byte Folded Reload
	ldr	x9, [sp, #1008]         // 8-byte Folded Reload
	strb	w8, [x9, #1027]
	b	.LBB6_192
.LBB6_190:                              //   in Loop: Header=BB6_187 Depth=2
// %bb.191:                             //   in Loop: Header=BB6_187 Depth=2
	ldr	x8, [sp, #1008]         // 8-byte Folded Reload
	ldr	w9, [x8, #1020]
	add	w9, w9, #1              // =1
	str	w9, [x8, #1020]
	b	.LBB6_187
.LBB6_192:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #1008]         // 8-byte Folded Reload
	ldrb	w9, [x8, #1027]
	orr	w10, wzr, #0x1
	and	w9, w9, w10
	cbz	w9, .LBB6_193
	b	.LBB6_194
.LBB6_193:
	ldr	x0, [sp, #1512]         // 8-byte Folded Reload
	bl	printf
	b	.LBB6_321
.LBB6_194:                              //   in Loop: Header=BB6_2 Depth=1
	add	x8, sp, #370, lsl #12   // =1515520
	add	x8, x8, #560            // =560
	mov	x0, x8
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x9, #4144]
	mov	x1, x10
	str	x8, [sp, #264]          // 8-byte Folded Spill
	bl	strcpy
	ldr	x8, [sp, #264]          // 8-byte Folded Reload
	ldr	x1, [sp, #1624]         // 8-byte Folded Reload
	mov	x0, x1
	mov	x1, x8
	bl	printf
	ldr	x1, [sp, #1480]         // 8-byte Folded Reload
	mov	x0, x1
	bl	printf
	b	.LBB6_285
.LBB6_195:                              //   in Loop: Header=BB6_2 Depth=1
	add	x8, sp, #370, lsl #12   // =1515520
	add	x8, x8, #560            // =560
	orr	x9, xzr, #0x3f0
	mov	x10, x8
	str	wzr, [x10]
	add	x10, x8, x9
	mov	x0, x10
	ldr	x1, [sp, #1504]         // 8-byte Folded Reload
	str	x8, [sp, #256]          // 8-byte Folded Spill
	str	x9, [sp, #248]          // 8-byte Folded Spill
	bl	strcpy
	ldr	x8, [sp, #256]          // 8-byte Folded Reload
	ldr	x9, [sp, #248]          // 8-byte Folded Reload
	add	x10, x8, x9
	ldr	x1, [sp, #1496]         // 8-byte Folded Reload
	mov	x0, x1
	mov	x1, x10
	bl	printf
	b	.LBB6_285
.LBB6_196:                              //   in Loop: Header=BB6_2 Depth=1
	add	x8, sp, #370, lsl #12   // =1515520
	add	x8, x8, #560            // =560
	orr	w9, wzr, #0x1
	str	w9, [x8]
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x8, #4144]
	ldr	w9, [x10, #4]
	str	w9, [x8, #3108]
	b	.LBB6_285
.LBB6_197:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	w8, [sp, #1524]         // 4-byte Folded Reload
	ldr	x9, [sp, #1008]         // 8-byte Folded Reload
	strb	w8, [x9, #1019]
	str	wzr, [x9, #1012]
.LBB6_198:                              //   Parent Loop BB6_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #1008]         // 8-byte Folded Reload
	ldr	w9, [x8, #1012]
	ldr	x10, [sp, #1040]        // 8-byte Folded Reload
	ldr	w11, [x10, #8]
	cmp	w9, w11
	cset	w9, lt
	tbnz	w9, #0, .LBB6_199
	b	.LBB6_203
.LBB6_199:                              //   in Loop: Header=BB6_198 Depth=2
	orr	x8, xzr, #0x4
	mov	x9, #1004
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	ldr	x11, [x10, #4144]
	ldr	x12, [sp, #1680]        // 8-byte Folded Reload
	ldr	x13, [x12]
	ldr	x14, [sp, #1008]        // 8-byte Folded Reload
	ldr	w15, [x14, #1012]
	mov	w16, w15
	sxtw	x16, w16
	mul	x9, x9, x16
	add	x9, x13, x9
	add	x8, x9, x8
	mov	x0, x11
	mov	x1, x8
	bl	strcmp
	cbz	w0, .LBB6_200
	b	.LBB6_201
.LBB6_200:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	w8, [sp, #1520]         // 4-byte Folded Reload
	ldr	x9, [sp, #1008]         // 8-byte Folded Reload
	strb	w8, [x9, #1019]
	b	.LBB6_203
.LBB6_201:                              //   in Loop: Header=BB6_198 Depth=2
// %bb.202:                             //   in Loop: Header=BB6_198 Depth=2
	ldr	x8, [sp, #1008]         // 8-byte Folded Reload
	ldr	w9, [x8, #1012]
	add	w9, w9, #1              // =1
	str	w9, [x8, #1012]
	b	.LBB6_198
.LBB6_203:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #1008]         // 8-byte Folded Reload
	ldrb	w9, [x8, #1019]
	orr	w10, wzr, #0x1
	and	w9, w9, w10
	cbz	w9, .LBB6_204
	b	.LBB6_205
.LBB6_204:
	ldr	x0, [sp, #1512]         // 8-byte Folded Reload
	bl	printf
	b	.LBB6_321
.LBB6_205:                              //   in Loop: Header=BB6_2 Depth=1
	add	x8, sp, #370, lsl #12   // =1515520
	add	x8, x8, #560            // =560
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x9, #4144]
	mov	x0, x8
	mov	x1, x10
	bl	strcpy
	b	.LBB6_285
.LBB6_206:                              //   in Loop: Header=BB6_2 Depth=1
	add	x8, sp, #370, lsl #12   // =1515520
	add	x8, x8, #560            // =560
	orr	x9, xzr, #0x3f0
	mov	x10, x8
	str	wzr, [x10]
	add	x8, x8, x9
	mov	x0, x8
	ldr	x1, [sp, #1528]         // 8-byte Folded Reload
	bl	strcpy
	b	.LBB6_285
.LBB6_207:                              //   in Loop: Header=BB6_2 Depth=1
	add	x8, sp, #370, lsl #12   // =1515520
	add	x8, x8, #560            // =560
	orr	x9, xzr, #0x3f0
	mov	x10, x8
	str	wzr, [x10]
	add	x8, x8, x9
	mov	x0, x8
	ldr	x1, [sp, #1536]         // 8-byte Folded Reload
	bl	strcpy
	b	.LBB6_285
.LBB6_208:                              //   in Loop: Header=BB6_2 Depth=1
	add	x8, sp, #370, lsl #12   // =1515520
	add	x8, x8, #560            // =560
	orr	x9, xzr, #0x3f0
	mov	x10, x8
	str	wzr, [x10]
	add	x8, x8, x9
	mov	x0, x8
	ldr	x1, [sp, #1544]         // 8-byte Folded Reload
	bl	strcpy
	b	.LBB6_285
.LBB6_209:                              //   in Loop: Header=BB6_2 Depth=1
	add	x8, sp, #370, lsl #12   // =1515520
	add	x8, x8, #560            // =560
	orr	x9, xzr, #0x3f0
	mov	x10, x8
	str	wzr, [x10]
	add	x8, x8, x9
	mov	x0, x8
	ldr	x1, [sp, #1544]         // 8-byte Folded Reload
	bl	strcpy
	b	.LBB6_285
.LBB6_210:                              //   in Loop: Header=BB6_2 Depth=1
	add	x8, sp, #370, lsl #12   // =1515520
	add	x8, x8, #560            // =560
	orr	x9, xzr, #0x3f0
	mov	x10, x8
	str	wzr, [x10]
	add	x8, x8, x9
	mov	x0, x8
	ldr	x1, [sp, #1552]         // 8-byte Folded Reload
	bl	strcpy
	b	.LBB6_285
.LBB6_211:                              //   in Loop: Header=BB6_2 Depth=1
	add	x8, sp, #370, lsl #12   // =1515520
	add	x8, x8, #560            // =560
	orr	x9, xzr, #0x3f0
	mov	x10, x8
	str	wzr, [x10]
	add	x8, x8, x9
	mov	x0, x8
	ldr	x1, [sp, #1560]         // 8-byte Folded Reload
	bl	strcpy
	b	.LBB6_285
.LBB6_212:                              //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #100
	mov	x9, #34864
	movk	x9, #1, lsl #16
	mov	x10, #-1016
	ldr	x11, [sp, #1048]        // 8-byte Folded Reload
	ldr	x12, [x11, #4144]
	add	x10, x12, x10
	ldr	x10, [x10]
	add	x9, x10, x9
	ldr	w13, [x9]
	cmp	w13, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB6_213
	b	.LBB6_214
.LBB6_213:
	ldr	x0, [sp, #1568]         // 8-byte Folded Reload
	bl	printf
	b	.LBB6_321
.LBB6_214:                              //   in Loop: Header=BB6_2 Depth=1
	mov	x8, #-2032
	mov	x9, #34864
	movk	x9, #1, lsl #16
	mov	x10, #1004
	mov	x11, #-1016
	ldr	x12, [sp, #1048]        // 8-byte Folded Reload
	ldr	x13, [x12, #4144]
	add	x11, x13, x11
	ldr	x11, [x11]
	str	x11, [x12, #3104]
	ldr	x11, [x12, #4144]
	add	x11, x11, x8
	ldr	w14, [x11]
	ldr	x11, [x12, #3104]
	ldr	x13, [x12, #3104]
	add	x9, x13, x9
	ldr	w15, [x9]
	mov	w9, w15
	sxtw	x9, w9
	mul	x9, x10, x9
	add	x9, x11, x9
	str	w14, [x9]
	ldr	x9, [x12, #4144]
	add	x8, x9, x8
	ldr	w14, [x8]
	str	w14, [sp, #244]         // 4-byte Folded Spill
	cbz	w14, .LBB6_217
	b	.LBB6_215
.LBB6_215:                              //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x1
	ldr	w9, [sp, #244]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_218
	b	.LBB6_216
.LBB6_216:
	b	.LBB6_219
.LBB6_217:                              //   in Loop: Header=BB6_2 Depth=1
	mov	x8, #-2032
	mov	x9, #34864
	movk	x9, #1, lsl #16
	mov	x10, #1004
	ldr	x11, [sp, #1048]        // 8-byte Folded Reload
	ldr	x12, [x11, #4144]
	add	x8, x12, x8
	ldr	w13, [x8, #4]
	ldr	x8, [x11, #3104]
	ldr	x12, [x11, #3104]
	add	x9, x12, x9
	ldr	w14, [x9]
	mov	w9, w14
	sxtw	x9, w9
	mul	x9, x10, x9
	add	x8, x8, x9
	str	w13, [x8, #4]
	b	.LBB6_220
.LBB6_218:                              //   in Loop: Header=BB6_2 Depth=1
	mov	x8, #-2032
	orr	x9, xzr, #0x4
	mov	x10, #34864
	movk	x10, #1, lsl #16
	mov	x11, #1004
	ldr	x12, [sp, #1048]        // 8-byte Folded Reload
	ldr	x13, [x12, #3104]
	ldr	x14, [x12, #3104]
	add	x10, x14, x10
	ldr	w15, [x10]
	mov	w10, w15
	sxtw	x10, w10
	mul	x10, x11, x10
	add	x10, x13, x10
	add	x10, x10, x9
	ldr	x11, [x12, #4144]
	add	x8, x11, x8
	add	x8, x8, x9
	mov	x0, x10
	mov	x1, x8
	bl	strcpy
	b	.LBB6_220
.LBB6_219:
	ldr	x0, [sp, #1576]         // 8-byte Folded Reload
	bl	printf
	b	.LBB6_321
.LBB6_220:                              //   in Loop: Header=BB6_2 Depth=1
	mov	x8, #34864
	movk	x8, #1, lsl #16
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x9, #3104]
	add	x10, x10, x8
	ldr	w11, [x10]
	add	w11, w11, #1            // =1
	ldr	x10, [x9, #3104]
	add	x8, x10, x8
	str	w11, [x8]
// %bb.221:                             //   in Loop: Header=BB6_2 Depth=1
	b	.LBB6_285
.LBB6_222:                              //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #100
	mov	x9, #34864
	movk	x9, #1, lsl #16
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	ldr	x11, [x10, #4144]
	ldr	x11, [x11]
	add	x9, x11, x9
	ldr	w12, [x9]
	cmp	w12, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB6_223
	b	.LBB6_224
.LBB6_223:
	ldr	x0, [sp, #1568]         // 8-byte Folded Reload
	bl	printf
	b	.LBB6_321
.LBB6_224:                              //   in Loop: Header=BB6_2 Depth=1
	mov	x8, #34864
	movk	x8, #1, lsl #16
	mov	x9, #1004
	mov	x10, #-1016
	ldr	x11, [sp, #1048]        // 8-byte Folded Reload
	ldr	x12, [x11, #4144]
	ldr	x12, [x12]
	str	x12, [x11, #3104]
	ldr	x12, [x11, #4144]
	add	x12, x12, x10
	ldr	w13, [x12]
	ldr	x12, [x11, #3104]
	ldr	x14, [x11, #3104]
	add	x8, x14, x8
	ldr	w15, [x8]
	mov	w8, w15
	sxtw	x8, w8
	mul	x8, x9, x8
	add	x8, x12, x8
	str	w13, [x8]
	ldr	x8, [x11, #4144]
	add	x8, x8, x10
	ldr	w13, [x8]
	str	w13, [sp, #240]         // 4-byte Folded Spill
	cbz	w13, .LBB6_227
	b	.LBB6_225
.LBB6_225:                              //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x1
	ldr	w9, [sp, #240]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_228
	b	.LBB6_226
.LBB6_226:
	b	.LBB6_229
.LBB6_227:                              //   in Loop: Header=BB6_2 Depth=1
	mov	x8, #34864
	movk	x8, #1, lsl #16
	mov	x9, #1004
	mov	x10, #-1016
	ldr	x11, [sp, #1048]        // 8-byte Folded Reload
	ldr	x12, [x11, #4144]
	add	x10, x12, x10
	ldr	w13, [x10, #4]
	ldr	x10, [x11, #3104]
	ldr	x12, [x11, #3104]
	add	x8, x12, x8
	ldr	w14, [x8]
	mov	w8, w14
	sxtw	x8, w8
	mul	x8, x9, x8
	add	x8, x10, x8
	str	w13, [x8, #4]
	b	.LBB6_230
.LBB6_228:                              //   in Loop: Header=BB6_2 Depth=1
	orr	x8, xzr, #0x4
	mov	x9, #34864
	movk	x9, #1, lsl #16
	mov	x10, #1004
	mov	x11, #-1016
	ldr	x12, [sp, #1048]        // 8-byte Folded Reload
	ldr	x13, [x12, #3104]
	ldr	x14, [x12, #3104]
	add	x9, x14, x9
	ldr	w15, [x9]
	mov	w9, w15
	sxtw	x9, w9
	mul	x9, x10, x9
	add	x9, x13, x9
	add	x9, x9, x8
	ldr	x10, [x12, #4144]
	add	x10, x10, x11
	add	x8, x10, x8
	mov	x0, x9
	mov	x1, x8
	bl	strcpy
	b	.LBB6_230
.LBB6_229:
	ldr	x0, [sp, #1576]         // 8-byte Folded Reload
	bl	printf
	b	.LBB6_321
.LBB6_230:                              //   in Loop: Header=BB6_2 Depth=1
	mov	x8, #34864
	movk	x8, #1, lsl #16
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x9, #3104]
	add	x10, x10, x8
	ldr	w11, [x10]
	add	w11, w11, #1            // =1
	ldr	x10, [x9, #3104]
	add	x8, x10, x8
	str	w11, [x8]
// %bb.231:                             //   in Loop: Header=BB6_2 Depth=1
	b	.LBB6_285
.LBB6_232:                              //   in Loop: Header=BB6_2 Depth=1
	mov	x1, #34868
	movk	x1, #1, lsl #16
	mov	x8, #34864
	movk	x8, #1, lsl #16
	orr	x0, xzr, #0x1
	str	x8, [sp, #232]          // 8-byte Folded Spill
	bl	calloc
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	str	x0, [x8, #3104]
	ldr	x0, [x8, #3104]
	ldr	x1, [sp, #232]          // 8-byte Folded Reload
	add	x0, x0, x1
	str	wzr, [x0]
	b	.LBB6_285
.LBB6_233:                              //   in Loop: Header=BB6_2 Depth=1
	add	x8, sp, #370, lsl #12   // =1515520
	add	x8, x8, #560            // =560
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x9, #4144]
	ldr	w11, [x10]
	str	w11, [x8]
	ldr	w11, [x8]
	str	w11, [sp, #228]         // 4-byte Folded Spill
	cbz	w11, .LBB6_236
	b	.LBB6_234
.LBB6_234:                              //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x1
	ldr	w9, [sp, #228]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_237
	b	.LBB6_235
.LBB6_235:
	b	.LBB6_238
.LBB6_236:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	w10, [x9, #4]
	str	w10, [x8, #3108]
	b	.LBB6_239
.LBB6_237:                              //   in Loop: Header=BB6_2 Depth=1
	add	x8, sp, #370, lsl #12   // =1515520
	add	x8, x8, #560            // =560
	orr	x9, xzr, #0x4
	add	x8, x8, x9
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	ldr	x11, [x10, #4144]
	add	x9, x11, x9
	mov	x0, x8
	mov	x1, x9
	bl	strcpy
	b	.LBB6_239
.LBB6_238:
	ldr	x0, [sp, #1584]         // 8-byte Folded Reload
	bl	printf
	b	.LBB6_321
.LBB6_239:                              //   in Loop: Header=BB6_2 Depth=1
	b	.LBB6_285
.LBB6_240:                              //   in Loop: Header=BB6_2 Depth=1
	add	x8, sp, #370, lsl #12   // =1515520
	add	x8, x8, #560            // =560
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x9, #4144]
	ldr	w11, [x10]
	str	w11, [x8]
	ldr	w11, [x8]
	str	w11, [sp, #224]         // 4-byte Folded Spill
	cbz	w11, .LBB6_243
	b	.LBB6_241
.LBB6_241:                              //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x1
	ldr	w9, [sp, #224]          // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB6_244
	b	.LBB6_242
.LBB6_242:
	b	.LBB6_245
.LBB6_243:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	w10, [x9, #4]
	str	w10, [x8, #3108]
	b	.LBB6_246
.LBB6_244:                              //   in Loop: Header=BB6_2 Depth=1
	add	x8, sp, #370, lsl #12   // =1515520
	add	x8, x8, #560            // =560
	orr	x9, xzr, #0x4
	add	x8, x8, x9
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	ldr	x11, [x10, #4144]
	add	x9, x11, x9
	mov	x0, x8
	mov	x1, x9
	bl	strcpy
	b	.LBB6_246
.LBB6_245:
	ldr	x0, [sp, #1584]         // 8-byte Folded Reload
	bl	printf
	b	.LBB6_321
.LBB6_246:                              //   in Loop: Header=BB6_2 Depth=1
	b	.LBB6_285
.LBB6_247:                              //   in Loop: Header=BB6_2 Depth=1
	add	x8, sp, #50, lsl #12    // =204800
	add	x8, x8, #804            // =804
	add	x9, sp, #370, lsl #12   // =1515520
	add	x9, x9, #560            // =560
	mov	x0, x9
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	ldr	x11, [x10, #4144]
	mov	x1, x11
	str	x8, [sp, #216]          // 8-byte Folded Spill
	str	x9, [sp, #208]          // 8-byte Folded Spill
	bl	strcpy
	ldr	x8, [sp, #216]          // 8-byte Folded Reload
	mov	x0, x8
	ldr	x1, [sp, #880]          // 8-byte Folded Reload
	bl	strcpy
	ldr	x8, [sp, #216]          // 8-byte Folded Reload
	mov	x0, x8
	ldr	x1, [sp, #872]          // 8-byte Folded Reload
	bl	strcat
	ldr	x8, [sp, #216]          // 8-byte Folded Reload
	ldr	x9, [sp, #208]          // 8-byte Folded Reload
	mov	x0, x8
	mov	x1, x9
	bl	strcat
	ldr	x8, [sp, #216]          // 8-byte Folded Reload
	ldr	x1, [sp, #864]          // 8-byte Folded Reload
	mov	x0, x1
	mov	x1, x8
	bl	printf
	ldr	x8, [sp, #216]          // 8-byte Folded Reload
	mov	x0, x8
	ldr	x1, [sp, #856]          // 8-byte Folded Reload
	bl	fopen
	ldr	x8, [sp, #1008]         // 8-byte Folded Reload
	str	x0, [x8]
	ldr	x9, [x8]
	ldr	x10, [sp, #960]         // 8-byte Folded Reload
	cmp	x9, x10
	cset	w12, eq
	tbnz	w12, #0, .LBB6_248
	b	.LBB6_249
.LBB6_248:                              //   in Loop: Header=BB6_2 Depth=1
	bl	handle_query_file_error
.LBB6_249:                              //   in Loop: Header=BB6_2 Depth=1
	add	x8, sp, #49, lsl #12    // =200704
	add	x8, x8, #3888           // =3888
	add	x9, sp, #370, lsl #12   // =1515520
	add	x9, x9, #560            // =560
	ldr	x0, [sp, #848]          // 8-byte Folded Reload
	str	x8, [sp, #200]          // 8-byte Folded Spill
	str	x9, [sp, #192]          // 8-byte Folded Spill
	bl	printf
	ldr	x8, [sp, #200]          // 8-byte Folded Reload
	mov	x0, x8
	ldr	x1, [sp, #840]          // 8-byte Folded Reload
	bl	strcpy
	ldr	x8, [sp, #200]          // 8-byte Folded Reload
	mov	x0, x8
	ldr	x1, [sp, #872]          // 8-byte Folded Reload
	bl	strcat
	ldr	x8, [sp, #200]          // 8-byte Folded Reload
	ldr	x9, [sp, #192]          // 8-byte Folded Reload
	mov	x0, x8
	mov	x1, x9
	bl	strcat
	ldr	x8, [sp, #200]          // 8-byte Folded Reload
	mov	x0, x8
	bl	opendir
	ldr	x8, [sp, #1000]         // 8-byte Folded Reload
	stur	x0, [x8, #52]
	ldur	x9, [x8, #52]
	ldr	x0, [sp, #960]          // 8-byte Folded Reload
	cmp	x9, x0
	cset	w10, eq
	tbnz	w10, #0, .LBB6_250
	b	.LBB6_251
.LBB6_250:                              //   in Loop: Header=BB6_2 Depth=1
	mov	w0, #0
	bl	handleError
.LBB6_251:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x0, [sp, #984]          // 8-byte Folded Reload
	bl	printf
	ldr	x8, [sp, #960]          // 8-byte Folded Reload
	ldr	x9, [sp, #1000]         // 8-byte Folded Reload
	stur	x8, [x9, #44]
	stur	x8, [x9, #36]
	str	wzr, [x9, #16]
.LBB6_252:                              //   Parent Loop BB6_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x1, sp, #49, lsl #12    // =200704
	add	x1, x1, #3848           // =3848
	add	x0, sp, #49, lsl #12    // =200704
	add	x0, x0, #3864           // =3864
	mov	x8, #-1
	ldr	x9, [sp, #1008]         // 8-byte Folded Reload
	ldr	x2, [x9]
	str	x8, [sp, #184]          // 8-byte Folded Spill
	bl	getline
	ldr	x8, [sp, #1000]         // 8-byte Folded Reload
	stur	x0, [x8, #28]
	ldr	x9, [sp, #184]          // 8-byte Folded Reload
	cmp	x0, x9
	cset	w10, ne
	tbnz	w10, #0, .LBB6_253
	b	.LBB6_254
.LBB6_253:                              //   in Loop: Header=BB6_252 Depth=2
	ldr	x8, [sp, #1000]         // 8-byte Folded Reload
	ldr	w9, [x8, #16]
	add	w9, w9, #1              // =1
	str	w9, [x8, #16]
	b	.LBB6_252
.LBB6_254:                              //   in Loop: Header=BB6_2 Depth=1
	add	x8, sp, #50, lsl #12    // =204800
	add	x8, x8, #804            // =804
	ldr	x9, [sp, #1008]         // 8-byte Folded Reload
	ldr	x0, [x9]
	str	x8, [sp, #176]          // 8-byte Folded Spill
	bl	fclose
	ldr	x8, [sp, #1000]         // 8-byte Folded Reload
	ldr	w10, [x8, #16]
	ldr	x9, [sp, #1040]         // 8-byte Folded Reload
	str	w10, [x9, #8]
	ldr	w10, [x8, #16]
	mov	w11, #1004
	smull	x12, w10, w11
	mov	x0, x12
	bl	malloc
	ldr	x8, [sp, #1680]         // 8-byte Folded Reload
	str	x0, [x8]
	ldr	x9, [sp, #176]          // 8-byte Folded Reload
	mov	x0, x9
	ldr	x1, [sp, #856]          // 8-byte Folded Reload
	bl	fopen
	ldr	x8, [sp, #1008]         // 8-byte Folded Reload
	str	x0, [x8]
	ldr	x9, [sp, #1000]         // 8-byte Folded Reload
	str	wzr, [x9, #12]
.LBB6_255:                              //   Parent Loop BB6_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x1, sp, #49, lsl #12    // =200704
	add	x1, x1, #3848           // =3848
	add	x0, sp, #49, lsl #12    // =200704
	add	x0, x0, #3864           // =3864
	mov	x8, #-1
	ldr	x9, [sp, #1008]         // 8-byte Folded Reload
	ldr	x2, [x9]
	str	x8, [sp, #168]          // 8-byte Folded Spill
	bl	getline
	ldr	x8, [sp, #1000]         // 8-byte Folded Reload
	stur	x0, [x8, #28]
	ldr	x9, [sp, #168]          // 8-byte Folded Reload
	cmp	x0, x9
	cset	w10, ne
	tbnz	w10, #0, .LBB6_256
	b	.LBB6_262
.LBB6_256:                              //   in Loop: Header=BB6_255 Depth=2
	orr	x8, xzr, #0x4
	mov	x9, #1004
	ldr	x10, [sp, #1000]        // 8-byte Folded Reload
	ldur	x0, [x10, #36]
	str	x8, [sp, #160]          // 8-byte Folded Spill
	str	x9, [sp, #152]          // 8-byte Folded Spill
	bl	strip
	ldr	x8, [sp, #1000]         // 8-byte Folded Reload
	ldur	x0, [x8, #36]
	ldr	x1, [sp, #1608]         // 8-byte Folded Reload
	bl	strtok
	ldr	x8, [sp, #1000]         // 8-byte Folded Reload
	stur	x0, [x8, #4]
	ldr	x9, [sp, #1680]         // 8-byte Folded Reload
	ldr	x10, [x9]
	ldr	w11, [x8, #12]
	mov	w0, w11
	sxtw	x0, w0
	ldr	x1, [sp, #152]          // 8-byte Folded Reload
	mul	x0, x1, x0
	add	x10, x10, x0
	ldr	x0, [sp, #160]          // 8-byte Folded Reload
	add	x10, x10, x0
	ldur	x1, [x8, #4]
	mov	x0, x10
	bl	strcpy
	ldr	x8, [sp, #960]          // 8-byte Folded Reload
	mov	x0, x8
	ldr	x1, [sp, #1608]         // 8-byte Folded Reload
	bl	strtok
	ldr	x8, [sp, #1000]         // 8-byte Folded Reload
	stur	x0, [x8, #4]
	ldur	x0, [x8, #4]
	ldr	x1, [sp, #1600]         // 8-byte Folded Reload
	bl	strcmp
	cbz	w0, .LBB6_257
	b	.LBB6_258
.LBB6_257:                              //   in Loop: Header=BB6_255 Depth=2
	mov	x8, #1004
	orr	w9, wzr, #0x1
	ldr	x10, [sp, #1680]        // 8-byte Folded Reload
	ldr	x11, [x10]
	ldr	x12, [sp, #1000]        // 8-byte Folded Reload
	ldr	w13, [x12, #12]
	add	w14, w13, #1            // =1
	str	w14, [x12, #12]
	mov	w15, w13
	sxtw	x15, w15
	mul	x8, x8, x15
	add	x8, x11, x8
	str	w9, [x8]
	b	.LBB6_261
.LBB6_258:                              //   in Loop: Header=BB6_255 Depth=2
	ldr	x8, [sp, #1000]         // 8-byte Folded Reload
	ldur	x0, [x8, #4]
	ldr	x1, [sp, #1592]         // 8-byte Folded Reload
	bl	strcmp
	cbz	w0, .LBB6_259
	b	.LBB6_260
.LBB6_259:                              //   in Loop: Header=BB6_255 Depth=2
	mov	x8, #1004
	ldr	x9, [sp, #1680]         // 8-byte Folded Reload
	ldr	x10, [x9]
	ldr	x11, [sp, #1000]        // 8-byte Folded Reload
	ldr	w12, [x11, #12]
	add	w13, w12, #1            // =1
	str	w13, [x11, #12]
	mov	w14, w12
	sxtw	x14, w14
	mul	x8, x8, x14
	add	x8, x10, x8
	str	wzr, [x8]
.LBB6_260:                              //   in Loop: Header=BB6_255 Depth=2
.LBB6_261:                              //   in Loop: Header=BB6_255 Depth=2
	b	.LBB6_255
.LBB6_262:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #1008]         // 8-byte Folded Reload
	ldr	x0, [x8]
	bl	fclose
	ldr	x8, [sp, #1000]         // 8-byte Folded Reload
	ldr	w1, [x8, #16]
	ldr	x2, [sp, #1672]         // 8-byte Folded Reload
	mov	x0, x2
	bl	printf
	ldr	x8, [sp, #1000]         // 8-byte Folded Reload
	str	wzr, [x8]
.LBB6_263:                              //   Parent Loop BB6_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #1000]         // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #16]
	cmp	w9, w10
	cset	w9, lt
	tbnz	w9, #0, .LBB6_264
	b	.LBB6_266
.LBB6_264:                              //   in Loop: Header=BB6_263 Depth=2
	orr	x8, xzr, #0x4
	mov	x9, #1004
	ldr	x10, [sp, #1680]        // 8-byte Folded Reload
	ldr	x11, [x10]
	ldr	x12, [sp, #1000]        // 8-byte Folded Reload
	ldr	w13, [x12]
	mov	w14, w13
	sxtw	x14, w14
	mul	x9, x9, x14
	add	x9, x11, x9
	add	x8, x9, x8
	ldr	x0, [sp, #1624]         // 8-byte Folded Reload
	mov	x1, x8
	bl	printf
// %bb.265:                             //   in Loop: Header=BB6_263 Depth=2
	ldr	x8, [sp, #1000]         // 8-byte Folded Reload
	ldr	w9, [x8]
	add	w9, w9, #1              // =1
	str	w9, [x8]
	b	.LBB6_263
.LBB6_266:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x0, [sp, #1664]         // 8-byte Folded Reload
	bl	printf
.LBB6_267:                              //   Parent Loop BB6_2 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB6_273 Depth 3
                                        //       Child Loop BB6_276 Depth 3
	ldr	x8, [sp, #1000]         // 8-byte Folded Reload
	ldur	x0, [x8, #52]
	bl	readdir
	ldr	x8, [sp, #1000]         // 8-byte Folded Reload
	stur	x0, [x8, #44]
	ldr	x9, [sp, #960]          // 8-byte Folded Reload
	cmp	x0, x9
	cset	w10, ne
	tbnz	w10, #0, .LBB6_268
	b	.LBB6_283
.LBB6_268:                              //   in Loop: Header=BB6_267 Depth=2
	orr	w8, wzr, #0x8
	ldr	x9, [sp, #1000]         // 8-byte Folded Reload
	ldur	x10, [x9, #44]
	ldrb	w11, [x10, #18]
	uxtb	w11, w11
	cmp	w11, w8
	cset	w8, ne
	tbnz	w8, #0, .LBB6_269
	b	.LBB6_270
.LBB6_269:                              //   in Loop: Header=BB6_267 Depth=2
	b	.LBB6_267
.LBB6_270:                              //   in Loop: Header=BB6_267 Depth=2
	add	x8, sp, #25, lsl #12    // =102400
	add	x8, x8, #728            // =728
	add	x1, sp, #49, lsl #12    // =200704
	add	x1, x1, #3848           // =3848
	add	x0, sp, #49, lsl #12    // =200704
	add	x0, x0, #3864           // =3864
	add	x9, sp, #49, lsl #12    // =200704
	add	x9, x9, #3888           // =3888
	mov	x10, #19
	mov	x11, #-1
	mov	x2, x8
	ldr	x12, [sp, #1000]        // 8-byte Folded Reload
	ldur	x13, [x12, #44]
	add	x10, x13, x10
	str	x0, [sp, #144]          // 8-byte Folded Spill
	mov	x0, x2
	ldr	x2, [sp, #1640]         // 8-byte Folded Reload
	str	x1, [sp, #136]          // 8-byte Folded Spill
	mov	x1, x2
	mov	x2, x9
	mov	x3, x10
	str	x8, [sp, #128]          // 8-byte Folded Spill
	str	x11, [sp, #120]         // 8-byte Folded Spill
	bl	sprintf
	ldr	x8, [sp, #128]          // 8-byte Folded Reload
	mov	x0, x8
	ldr	x1, [sp, #1632]         // 8-byte Folded Reload
	bl	fopen
	ldr	x8, [sp, #992]          // 8-byte Folded Reload
	str	x0, [x8, #1008]
	ldr	x2, [x8, #1008]
	ldr	x0, [sp, #144]          // 8-byte Folded Reload
	ldr	x1, [sp, #136]          // 8-byte Folded Reload
	bl	getline
	ldr	x8, [sp, #1000]         // 8-byte Folded Reload
	stur	x0, [x8, #28]
	ldur	x0, [x8, #36]
	bl	strip
	ldr	x8, [sp, #1000]         // 8-byte Folded Reload
	ldur	x9, [x8, #28]
	ldr	x10, [sp, #120]         // 8-byte Folded Reload
	cmp	x9, x10
	cset	w14, eq
	tbnz	w14, #0, .LBB6_271
	b	.LBB6_272
.LBB6_271:                              //   in Loop: Header=BB6_267 Depth=2
	bl	handle_query_file_error
.LBB6_272:                              //   in Loop: Header=BB6_267 Depth=2
	add	x8, sp, #24, lsl #12    // =98304
	add	x8, x8, #3816           // =3816
	ldr	x9, [sp, #1000]         // 8-byte Folded Reload
	str	wzr, [x9, #12]
	ldur	x1, [x9, #36]
	ldr	x0, [sp, #1624]         // 8-byte Folded Reload
	str	x8, [sp, #112]          // 8-byte Folded Spill
	bl	printf
	ldr	x8, [sp, #112]          // 8-byte Folded Reload
	ldr	x9, [sp, #1000]         // 8-byte Folded Reload
	ldur	x1, [x9, #36]
	mov	x0, x8
	bl	strcpy
	ldr	x8, [sp, #1000]         // 8-byte Folded Reload
	ldur	x9, [x8, #36]
	mov	x0, x9
	ldr	x1, [sp, #1616]         // 8-byte Folded Reload
	bl	strtok
	ldr	x8, [sp, #992]          // 8-byte Folded Reload
	str	x0, [x8]
.LBB6_273:                              //   Parent Loop BB6_2 Depth=1
                                        //     Parent Loop BB6_267 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x8, [sp, #992]          // 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	x10, [sp, #960]         // 8-byte Folded Reload
	cmp	x9, x10
	cset	w11, ne
	tbnz	w11, #0, .LBB6_274
	b	.LBB6_275
.LBB6_274:                              //   in Loop: Header=BB6_273 Depth=3
	ldr	x8, [sp, #1000]         // 8-byte Folded Reload
	ldr	w9, [x8, #12]
	add	w9, w9, #1              // =1
	str	w9, [x8, #12]
	ldr	x0, [sp, #960]          // 8-byte Folded Reload
	ldr	x1, [sp, #1616]         // 8-byte Folded Reload
	bl	strtok
	ldr	x8, [sp, #992]          // 8-byte Folded Reload
	str	x0, [x8]
	b	.LBB6_273
.LBB6_275:                              //   in Loop: Header=BB6_267 Depth=2
	add	x8, sp, #24, lsl #12    // =98304
	add	x8, x8, #3816           // =3816
	add	x9, sp, #25, lsl #12    // =102400
	add	x9, x9, #1728           // =1728
	mov	x10, #34864
	movk	x10, #1, lsl #16
	ldr	x11, [sp, #1000]        // 8-byte Folded Reload
	ldr	w12, [x11, #12]
	add	x9, x9, x10
	str	w12, [x9]
	str	wzr, [x11, #12]
	mov	x0, x8
	ldr	x1, [sp, #1616]         // 8-byte Folded Reload
	bl	strtok
	ldr	x8, [sp, #992]          // 8-byte Folded Reload
	str	x0, [x8]
.LBB6_276:                              //   Parent Loop BB6_2 Depth=1
                                        //     Parent Loop BB6_267 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x8, [sp, #992]          // 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	x10, [sp, #960]         // 8-byte Folded Reload
	cmp	x9, x10
	cset	w11, ne
	tbnz	w11, #0, .LBB6_277
	b	.LBB6_281
.LBB6_277:                              //   in Loop: Header=BB6_276 Depth=3
	add	x8, sp, #25, lsl #12    // =102400
	add	x8, x8, #1728           // =1728
	mov	x9, #1004
	ldr	x10, [sp, #1680]        // 8-byte Folded Reload
	ldr	x11, [x10]
	ldr	x12, [sp, #1000]        // 8-byte Folded Reload
	ldr	w13, [x12, #12]
	mov	w14, w13
	sxtw	x14, w14
	mul	x14, x9, x14
	add	x11, x11, x14
	ldr	w13, [x11]
	mov	x11, x8
	ldr	w15, [x12, #12]
	mov	w14, w15
	sxtw	x14, w14
	mul	x14, x9, x14
	add	x11, x11, x14
	str	w13, [x11]
	ldr	w13, [x12, #12]
	mov	w11, w13
	sxtw	x11, w11
	mul	x9, x9, x11
	add	x8, x8, x9
	ldr	w13, [x8]
	cbz	w13, .LBB6_278
	b	.LBB6_279
.LBB6_278:                              //   in Loop: Header=BB6_276 Depth=3
	add	x8, sp, #25, lsl #12    // =102400
	add	x8, x8, #1728           // =1728
	mov	x9, #1004
	ldr	x10, [sp, #992]         // 8-byte Folded Reload
	ldr	x0, [x10]
	str	x8, [sp, #104]          // 8-byte Folded Spill
	str	x9, [sp, #96]           // 8-byte Folded Spill
	bl	atoi
	ldr	x8, [sp, #104]          // 8-byte Folded Reload
	ldr	x9, [sp, #1000]         // 8-byte Folded Reload
	ldr	w11, [x9, #12]
	mov	w10, w11
	sxtw	x10, w10
	ldr	x12, [sp, #96]          // 8-byte Folded Reload
	mul	x10, x12, x10
	add	x8, x8, x10
	str	w0, [x8, #4]
	b	.LBB6_280
.LBB6_279:                              //   in Loop: Header=BB6_276 Depth=3
	add	x8, sp, #25, lsl #12    // =102400
	add	x8, x8, #1728           // =1728
	orr	x9, xzr, #0x4
	mov	x10, #1004
	ldr	x11, [sp, #1000]        // 8-byte Folded Reload
	ldr	w12, [x11, #12]
	mov	w13, w12
	sxtw	x13, w13
	mul	x10, x10, x13
	add	x8, x8, x10
	add	x8, x8, x9
	ldr	x9, [sp, #992]          // 8-byte Folded Reload
	ldr	x1, [x9]
	mov	x0, x8
	bl	strcpy
.LBB6_280:                              //   in Loop: Header=BB6_276 Depth=3
	ldr	x8, [sp, #1000]         // 8-byte Folded Reload
	ldr	w9, [x8, #12]
	add	w9, w9, #1              // =1
	str	w9, [x8, #12]
	ldr	x0, [sp, #960]          // 8-byte Folded Reload
	ldr	x1, [sp, #1616]         // 8-byte Folded Reload
	bl	strtok
	ldr	x8, [sp, #992]          // 8-byte Folded Reload
	str	x0, [x8]
	b	.LBB6_276
.LBB6_281:                              //   in Loop: Header=BB6_267 Depth=2
	add	x8, sp, #1708           // =1708
	add	x1, sp, #25, lsl #12    // =102400
	add	x1, x1, #1728           // =1728
	mov	x2, #34868
	movk	x2, #1, lsl #16
	mov	x0, x8
	str	x8, [sp, #88]           // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #88]           // 8-byte Folded Reload
	ldr	x1, [sp, #1656]         // 8-byte Folded Reload
	bl	push_back
// %bb.282:                             //   in Loop: Header=BB6_267 Depth=2
	b	.LBB6_267
.LBB6_283:                              //   in Loop: Header=BB6_2 Depth=1
	add	x8, sp, #49, lsl #12    // =200704
	add	x8, x8, #3888           // =3888
	add	x9, sp, #370, lsl #12   // =1515520
	add	x9, x9, #560            // =560
	ldr	x10, [sp, #1656]        // 8-byte Folded Reload
	ldr	x0, [x10]
	str	x8, [sp, #80]           // 8-byte Folded Spill
	str	x9, [sp, #72]           // 8-byte Folded Spill
	bl	print_list
	ldr	x8, [sp, #72]           // 8-byte Folded Reload
	ldr	x9, [sp, #80]           // 8-byte Folded Reload
	mov	x0, x8
	mov	x1, x9
	bl	strcpy
	ldr	x1, [sp, #1648]         // 8-byte Folded Reload
	mov	x0, x1
	bl	puts
	ldr	x8, [sp, #72]           // 8-byte Folded Reload
	mov	x0, x8
	bl	puts
	b	.LBB6_285
.LBB6_284:                              //   in Loop: Header=BB6_2 Depth=1
.LBB6_285:                              //   in Loop: Header=BB6_2 Depth=1
	add	x1, sp, #370, lsl #12   // =1515520
	add	x1, x1, #560            // =560
	orr	x8, xzr, #0x3f8
	orr	x9, xzr, #0x2
	mov	w10, #0
	ldr	x11, [sp, #1048]        // 8-byte Folded Reload
	ldr	w12, [x11, #3100]
	ldr	x13, [x11, #4144]
	mov	w14, w12
	sxtw	x14, w14
	mneg	x14, x14, x8
	add	x13, x13, x14
	str	x13, [x11, #4144]
	ldr	w12, [x11, #3100]
	ldr	x13, [sp, #1688]        // 8-byte Folded Reload
	ldr	x14, [x13]
	mov	w15, w12
	sxtw	x15, w15
	mneg	x9, x15, x9
	add	x9, x14, x9
	str	x9, [x13]
	str	wzr, [x11, #3100]
	ldr	x9, [x11, #4144]
	add	x9, x9, x8
	str	x9, [x11, #4144]
	mov	x0, x9
	mov	x2, x8
	str	w10, [sp, #68]          // 4-byte Folded Spill
	bl	memcpy
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	w10, [x8, #4132]
	mov	w9, w10
	sxtw	x9, w9
	ldr	x11, [sp, #1144]        // 8-byte Folded Reload
	add	x9, x11, x9
	ldrb	w10, [x9]
	uxtb	w10, w10
	subs	w10, w10, #31           // =31
	str	w10, [sp, #1704]
	ldr	w10, [sp, #1704]
	mov	w9, w10
	sxtw	x9, w9
	ldr	x13, [sp, #1136]        // 8-byte Folded Reload
	add	x9, x13, x9
	ldrb	w10, [x9]
	sxtb	w10, w10
	ldr	x9, [sp, #1688]         // 8-byte Folded Reload
	ldr	x14, [x9]
	ldrh	w12, [x14]
	sxth	w12, w12
	add	w10, w10, w12
	str	w10, [sp, #1700]
	ldr	w10, [sp, #1700]
	ldr	w12, [sp, #68]          // 4-byte Folded Reload
	cmp	w12, w10
	cset	w10, le
	tbnz	w10, #0, .LBB6_286
	b	.LBB6_289
.LBB6_286:                              //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x3f
	ldr	w9, [sp, #1700]
	cmp	w9, w8
	cset	w8, le
	tbnz	w8, #0, .LBB6_287
	b	.LBB6_289
.LBB6_287:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	w8, [sp, #1700]
	mov	w9, w8
	sxtw	x9, w9
	ldr	x10, [sp, #928]         // 8-byte Folded Reload
	add	x9, x10, x9
	ldrb	w8, [x9]
	sxtb	w8, w8
	ldr	x9, [sp, #1688]         // 8-byte Folded Reload
	ldr	x11, [x9]
	ldrh	w12, [x11]
	sxth	w12, w12
	cmp	w8, w12
	cset	w8, eq
	tbnz	w8, #0, .LBB6_288
	b	.LBB6_289
.LBB6_288:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	w8, [sp, #1700]
	mov	w9, w8
	sxtw	x9, w9
	ldr	x10, [sp, #920]         // 8-byte Folded Reload
	add	x9, x10, x9
	ldrb	w8, [x9]
	sxtb	w8, w8
	str	w8, [sp, #64]           // 4-byte Folded Spill
	b	.LBB6_290
.LBB6_289:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	w8, [sp, #1704]
	mov	w9, w8
	sxtw	x9, w9
	ldr	x10, [sp, #1128]        // 8-byte Folded Reload
	add	x9, x10, x9
	ldrb	w8, [x9]
	sxtb	w8, w8
	str	w8, [sp, #64]           // 4-byte Folded Spill
.LBB6_290:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	w8, [sp, #64]           // 4-byte Folded Reload
	ldr	x9, [sp, #1688]         // 8-byte Folded Reload
	str	w8, [x9, #420]
	b	.LBB6_1
.LBB6_291:                              //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0xfffffffe
	ldr	x9, [sp, #968]          // 8-byte Folded Reload
	ldr	w10, [x9]
	cmp	w10, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB6_292
	b	.LBB6_293
.LBB6_292:                              //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0xfffffffe
	str	w8, [sp, #60]           // 4-byte Folded Spill
	b	.LBB6_297
.LBB6_293:                              //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #285
	ldr	x9, [sp, #968]          // 8-byte Folded Reload
	ldr	w10, [x9]
	cmp	w10, w8
	cset	w8, ls
	tbnz	w8, #0, .LBB6_294
	b	.LBB6_295
.LBB6_294:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #968]          // 8-byte Folded Reload
	ldr	w9, [x8]
	mov	w10, w9
	sxtw	x10, w10
	ldr	x11, [sp, #936]         // 8-byte Folded Reload
	add	x10, x11, x10
	ldrb	w9, [x10]
	uxtb	w9, w9
	str	w9, [sp, #56]           // 4-byte Folded Spill
	b	.LBB6_296
.LBB6_295:                              //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x2
	str	w8, [sp, #56]           // 4-byte Folded Spill
.LBB6_296:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	w8, [sp, #56]           // 4-byte Folded Reload
	str	w8, [sp, #60]           // 4-byte Folded Spill
.LBB6_297:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	w8, [sp, #60]           // 4-byte Folded Reload
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	str	w8, [x9, #4124]
	ldr	x10, [sp, #1688]        // 8-byte Folded Reload
	ldr	w8, [x10, #416]
	cbnz	w8, .LBB6_299
// %bb.298:                             //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #976]          // 8-byte Folded Reload
	ldr	w9, [x8]
	add	w9, w9, #1              // =1
	str	w9, [x8]
	ldr	x0, [sp, #1120]         // 8-byte Folded Reload
	bl	yyerror
.LBB6_299:                              //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x3
	ldr	x9, [sp, #1688]         // 8-byte Folded Reload
	ldr	w10, [x9, #416]
	cmp	w10, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB6_300
	b	.LBB6_306
.LBB6_300:                              //   in Loop: Header=BB6_2 Depth=1
	mov	w8, #0
	ldr	x9, [sp, #968]          // 8-byte Folded Reload
	ldr	w10, [x9]
	cmp	w10, w8
	cset	w8, le
	tbnz	w8, #0, .LBB6_301
	b	.LBB6_304
.LBB6_301:                              //   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #968]          // 8-byte Folded Reload
	ldr	w9, [x8]
	cbz	w9, .LBB6_302
	b	.LBB6_303
.LBB6_302:
	b	.LBB6_321
.LBB6_303:                              //   in Loop: Header=BB6_2 Depth=1
	b	.LBB6_305
.LBB6_304:                              //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0xfffffffe
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	w1, [x9, #4124]
	ldr	x0, [sp, #1112]         // 8-byte Folded Reload
	ldr	x2, [sp, #912]          // 8-byte Folded Reload
	str	w8, [sp, #52]           // 4-byte Folded Spill
	bl	yydestruct
	ldr	w8, [sp, #52]           // 4-byte Folded Reload
	ldr	x9, [sp, #968]          // 8-byte Folded Reload
	str	w8, [x9]
.LBB6_305:                              //   in Loop: Header=BB6_2 Depth=1
.LBB6_306:                              //   in Loop: Header=BB6_2 Depth=1
// %bb.307:                             //   in Loop: Header=BB6_2 Depth=1
	orr	w8, wzr, #0x3
	ldr	x9, [sp, #1688]         // 8-byte Folded Reload
	str	w8, [x9, #416]
.LBB6_308:                              //   Parent Loop BB6_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	w8, #-41
	ldr	x9, [sp, #1688]         // 8-byte Folded Reload
	ldr	w10, [x9, #420]
	mov	w11, w10
	sxtw	x11, w11
	ldr	x12, [sp, #952]         // 8-byte Folded Reload
	add	x11, x12, x11
	ldrb	w10, [x11]
	sxtb	w10, w10
	ldr	x11, [sp, #1048]        // 8-byte Folded Reload
	str	w10, [x11, #4132]
	ldr	w10, [x11, #4132]
	cmp	w10, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB6_316
// %bb.309:                             //   in Loop: Header=BB6_308 Depth=2
	mov	w8, #0
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	w10, [x9, #4132]
	add	w10, w10, #1            // =1
	str	w10, [x9, #4132]
	ldr	w10, [x9, #4132]
	cmp	w8, w10
	cset	w8, le
	tbnz	w8, #0, .LBB6_310
	b	.LBB6_315
.LBB6_310:                              //   in Loop: Header=BB6_308 Depth=2
	orr	w8, wzr, #0x3f
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	w10, [x9, #4132]
	cmp	w10, w8
	cset	w8, le
	tbnz	w8, #0, .LBB6_311
	b	.LBB6_315
.LBB6_311:                              //   in Loop: Header=BB6_308 Depth=2
	orr	w8, wzr, #0x1
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	w10, [x9, #4132]
	mov	w11, w10
	sxtw	x11, w11
	ldr	x12, [sp, #928]         // 8-byte Folded Reload
	add	x11, x12, x11
	ldrb	w10, [x11]
	sxtb	w10, w10
	cmp	w10, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB6_312
	b	.LBB6_315
.LBB6_312:                              //   in Loop: Header=BB6_308 Depth=2
	mov	w8, #0
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	w10, [x9, #4132]
	mov	w11, w10
	sxtw	x11, w11
	ldr	x12, [sp, #920]         // 8-byte Folded Reload
	add	x11, x12, x11
	ldrb	w10, [x11]
	sxtb	w10, w10
	str	w10, [x9, #4132]
	ldr	w10, [x9, #4132]
	cmp	w8, w10
	cset	w8, lt
	tbnz	w8, #0, .LBB6_313
	b	.LBB6_314
.LBB6_313:                              //   in Loop: Header=BB6_2 Depth=1
	b	.LBB6_319
.LBB6_314:                              //   in Loop: Header=BB6_308 Depth=2
.LBB6_315:                              //   in Loop: Header=BB6_308 Depth=2
.LBB6_316:                              //   in Loop: Header=BB6_308 Depth=2
	ldr	x8, [sp, #1688]         // 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	x10, [x8, #8]
	cmp	x9, x10
	cset	w11, eq
	tbnz	w11, #0, .LBB6_317
	b	.LBB6_318
.LBB6_317:
	b	.LBB6_321
.LBB6_318:                              //   in Loop: Header=BB6_308 Depth=2
	mov	x8, #-1016
	orr	x9, xzr, #0xfffffffffffffffe
	ldr	x10, [sp, #1688]        // 8-byte Folded Reload
	ldr	w11, [x10, #420]
	mov	w12, w11
	sxtw	x12, w12
	ldr	x13, [sp, #1104]        // 8-byte Folded Reload
	add	x12, x13, x12
	ldrb	w11, [x12]
	uxtb	w1, w11
	ldr	x12, [sp, #1048]        // 8-byte Folded Reload
	ldr	x2, [x12, #4144]
	ldr	x0, [sp, #1096]         // 8-byte Folded Reload
	str	x8, [sp, #40]           // 8-byte Folded Spill
	str	x9, [sp, #32]           // 8-byte Folded Spill
	bl	yydestruct
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	x10, [sp, #40]          // 8-byte Folded Reload
	add	x9, x9, x10
	str	x9, [x8, #4144]
	ldr	x9, [sp, #1688]         // 8-byte Folded Reload
	ldr	x12, [x9]
	ldr	x13, [sp, #32]          // 8-byte Folded Reload
	add	x12, x12, x13
	str	x12, [x9]
	ldr	x12, [x9]
	ldrh	w11, [x12]
	sxth	w11, w11
	str	w11, [x9, #420]
	b	.LBB6_308
.LBB6_319:                              //   in Loop: Header=BB6_2 Depth=1
	orr	x8, xzr, #0x3f8
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	ldr	x10, [x9, #4144]
	add	x10, x10, x8
	str	x10, [x9, #4144]
	mov	x0, x10
	ldr	x1, [sp, #904]          // 8-byte Folded Reload
	mov	x2, x8
	bl	memcpy
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	w11, [x8, #4132]
	ldr	x9, [sp, #1688]         // 8-byte Folded Reload
	str	w11, [x9, #420]
	b	.LBB6_1
.LBB6_320:
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	str	wzr, [x8, #4128]
	b	.LBB6_323
.LBB6_321:
	orr	w8, wzr, #0x1
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	str	w8, [x9, #4128]
	b	.LBB6_323
.LBB6_322:
	orr	w8, wzr, #0x2
	ldr	x0, [sp, #1088]         // 8-byte Folded Reload
	str	w8, [sp, #28]           // 4-byte Folded Spill
	bl	yyerror
	ldr	w8, [sp, #28]           // 4-byte Folded Reload
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	str	w8, [x9, #4128]
.LBB6_323:
	orr	w8, wzr, #0xfffffffe
	ldr	x9, [sp, #968]          // 8-byte Folded Reload
	ldr	w10, [x9]
	cmp	w10, w8
	cset	w8, ne
	tbnz	w8, #0, .LBB6_324
	b	.LBB6_328
.LBB6_324:
	mov	w8, #285
	ldr	x9, [sp, #968]          // 8-byte Folded Reload
	ldr	w10, [x9]
	cmp	w10, w8
	cset	w8, ls
	tbnz	w8, #0, .LBB6_325
	b	.LBB6_326
.LBB6_325:
	ldr	x8, [sp, #968]          // 8-byte Folded Reload
	ldr	w9, [x8]
	mov	w10, w9
	sxtw	x10, w10
	ldr	x11, [sp, #936]         // 8-byte Folded Reload
	add	x10, x11, x10
	ldrb	w9, [x10]
	uxtb	w9, w9
	str	w9, [sp, #24]           // 4-byte Folded Spill
	b	.LBB6_327
.LBB6_326:
	orr	w8, wzr, #0x2
	str	w8, [sp, #24]           // 4-byte Folded Spill
.LBB6_327:
	ldr	w8, [sp, #24]           // 4-byte Folded Reload
	ldr	x9, [sp, #1048]         // 8-byte Folded Reload
	str	w8, [x9, #4124]
	ldr	w1, [x9, #4124]
	ldr	x0, [sp, #1080]         // 8-byte Folded Reload
	ldr	x2, [sp, #912]          // 8-byte Folded Reload
	bl	yydestruct
.LBB6_328:
	orr	x8, xzr, #0x3f8
	orr	x9, xzr, #0x2
	ldr	x10, [sp, #1048]        // 8-byte Folded Reload
	ldr	w11, [x10, #3100]
	ldr	x12, [x10, #4144]
	mov	w13, w11
	sxtw	x13, w13
	mneg	x8, x13, x8
	add	x8, x12, x8
	str	x8, [x10, #4144]
	ldr	w11, [x10, #3100]
	ldr	x8, [sp, #1688]         // 8-byte Folded Reload
	ldr	x12, [x8]
	mov	w13, w11
	sxtw	x13, w13
	mneg	x9, x13, x9
	add	x9, x12, x9
	str	x9, [x8]
.LBB6_329:                              // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #1688]         // 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	x10, [x8, #8]
	cmp	x9, x10
	cset	w11, ne
	tbnz	w11, #0, .LBB6_330
	b	.LBB6_331
.LBB6_330:                              //   in Loop: Header=BB6_329 Depth=1
	mov	x8, #-1016
	orr	x9, xzr, #0xfffffffffffffffe
	ldr	x10, [sp, #1688]        // 8-byte Folded Reload
	ldr	x11, [x10]
	ldrh	w12, [x11]
	mov	w11, w12
	sxth	x11, w11
	ldr	x13, [sp, #1104]        // 8-byte Folded Reload
	add	x11, x13, x11
	ldrb	w12, [x11]
	uxtb	w1, w12
	ldr	x11, [sp, #1048]        // 8-byte Folded Reload
	ldr	x2, [x11, #4144]
	ldr	x0, [sp, #1072]         // 8-byte Folded Reload
	str	x8, [sp, #16]           // 8-byte Folded Spill
	str	x9, [sp, #8]            // 8-byte Folded Spill
	bl	yydestruct
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	x9, [x8, #4144]
	ldr	x10, [sp, #16]          // 8-byte Folded Reload
	add	x9, x9, x10
	str	x9, [x8, #4144]
	ldr	x9, [sp, #1688]         // 8-byte Folded Reload
	ldr	x11, [x9]
	ldr	x13, [sp, #8]           // 8-byte Folded Reload
	add	x11, x11, x13
	str	x11, [x9]
	b	.LBB6_329
.LBB6_331:
	add	x8, sp, #420, lsl #12   // =1720320
	add	x8, x8, #32             // =32
	ldr	x9, [sp, #1688]         // 8-byte Folded Reload
	ldr	x10, [x9, #8]
	cmp	x10, x8
	cset	w11, ne
	tbnz	w11, #0, .LBB6_332
	b	.LBB6_333
.LBB6_332:
	ldr	x8, [sp, #1688]         // 8-byte Folded Reload
	ldr	x0, [x8, #8]
	bl	free
.LBB6_333:
	ldr	x8, [sp, #1048]         // 8-byte Folded Reload
	ldr	w0, [x8, #4128]
	add	sp, sp, #420, lsl #12   // =1720320
	add	sp, sp, #448            // =448
	ldp	x29, x30, [sp, #80]     // 8-byte Folded Reload
	ldp	x20, x19, [sp, #64]     // 8-byte Folded Reload
	ldp	x22, x21, [sp, #48]     // 8-byte Folded Reload
	ldp	x24, x23, [sp, #32]     // 8-byte Folded Reload
	ldp	x26, x25, [sp, #16]     // 8-byte Folded Reload
	ldp	x28, x27, [sp], #96     // 8-byte Folded Reload
	ret
.Lfunc_end6:
	.size	yyparse, .Lfunc_end6-yyparse
                                        // -- End function
	.globl	handleError             // -- Begin function handleError
	.p2align	2
	.type	handleError,@function
handleError:                            // @handleError
// %bb.0:
	sub	sp, sp, #192            // =192
	stp	x29, x30, [sp, #176]    // 8-byte Folded Spill
	add	x29, sp, #176           // =176
	mov	w8, #13
	adrp	x9, .L.str.101
	add	x9, x9, :lo12:.L.str.101
	adrp	x10, .L.str.100
	add	x10, x10, :lo12:.L.str.100
	adrp	x11, .L.str.95
	add	x11, x11, :lo12:.L.str.95
	adrp	x12, .L.str.96
	add	x12, x12, :lo12:.L.str.96
	adrp	x13, .L.str.97
	add	x13, x13, :lo12:.L.str.97
	adrp	x14, .L.str
	add	x14, x14, :lo12:.L.str
	adrp	x15, .L.str.1
	add	x15, x15, :lo12:.L.str.1
	adrp	x16, .L.str.99
	add	x16, x16, :lo12:.L.str.99
	adrp	x17, .L.str.98
	add	x17, x17, :lo12:.L.str.98
	adrp	x18, .L.str.94
	add	x18, x18, :lo12:.L.str.94
	adrp	x1, .L.str.93
	add	x1, x1, :lo12:.L.str.93
	adrp	x2, .L.str.92
	add	x2, x2, :lo12:.L.str.92
	adrp	x3, .L.str.91
	add	x3, x3, :lo12:.L.str.91
	stur	w0, [x29, #-4]
	stur	x3, [x29, #-16]         // 8-byte Folded Spill
	stur	w8, [x29, #-20]         // 4-byte Folded Spill
	stur	x9, [x29, #-32]         // 8-byte Folded Spill
	stur	x10, [x29, #-40]        // 8-byte Folded Spill
	stur	x11, [x29, #-48]        // 8-byte Folded Spill
	stur	x12, [x29, #-56]        // 8-byte Folded Spill
	stur	x13, [x29, #-64]        // 8-byte Folded Spill
	stur	x14, [x29, #-72]        // 8-byte Folded Spill
	stur	x15, [x29, #-80]        // 8-byte Folded Spill
	str	x16, [sp, #88]          // 8-byte Folded Spill
	str	x17, [sp, #80]          // 8-byte Folded Spill
	str	x18, [sp, #72]          // 8-byte Folded Spill
	str	x1, [sp, #64]           // 8-byte Folded Spill
	str	x2, [sp, #56]           // 8-byte Folded Spill
	bl	__errno
	ldr	w8, [x0]
	ldur	w4, [x29, #-20]         // 4-byte Folded Reload
	cmp	w4, w8
	cset	w5, eq
	str	w8, [sp, #52]           // 4-byte Folded Spill
	tbnz	w5, #0, .LBB7_8
	b	.LBB7_1
.LBB7_1:
	mov	w8, #9
	ldr	w9, [sp, #52]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB7_9
	b	.LBB7_2
.LBB7_2:
	orr	w8, wzr, #0x18
	ldr	w9, [sp, #52]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB7_10
	b	.LBB7_3
.LBB7_3:
	mov	w8, #23
	ldr	w9, [sp, #52]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB7_11
	b	.LBB7_4
.LBB7_4:
	orr	w8, wzr, #0x2
	ldr	w9, [sp, #52]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB7_12
	b	.LBB7_5
.LBB7_5:
	orr	w8, wzr, #0xc
	ldr	w9, [sp, #52]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB7_19
	b	.LBB7_6
.LBB7_6:
	mov	w8, #20
	ldr	w9, [sp, #52]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB7_20
	b	.LBB7_7
.LBB7_7:
	b	.LBB7_21
.LBB7_8:
	orr	w0, wzr, #0x1
	ldur	x1, [x29, #-16]         // 8-byte Folded Reload
	str	w0, [sp, #48]           // 4-byte Folded Spill
	mov	x0, x1
	bl	perror
	ldr	w0, [sp, #48]           // 4-byte Folded Reload
	bl	exit
.LBB7_9:
	orr	w0, wzr, #0x1
	ldr	x1, [sp, #56]           // 8-byte Folded Reload
	str	w0, [sp, #44]           // 4-byte Folded Spill
	mov	x0, x1
	bl	perror
	ldr	w0, [sp, #44]           // 4-byte Folded Reload
	bl	exit
.LBB7_10:
	orr	w0, wzr, #0x1
	ldr	x1, [sp, #64]           // 8-byte Folded Reload
	str	w0, [sp, #40]           // 4-byte Folded Spill
	mov	x0, x1
	bl	perror
	ldr	w0, [sp, #40]           // 4-byte Folded Reload
	bl	exit
.LBB7_11:
	orr	w0, wzr, #0x1
	ldr	x1, [sp, #72]           // 8-byte Folded Reload
	str	w0, [sp, #36]           // 4-byte Folded Spill
	mov	x0, x1
	bl	perror
	ldr	w0, [sp, #36]           // 4-byte Folded Reload
	bl	exit
.LBB7_12:
	orr	w8, wzr, #0x1
	ldur	x0, [x29, #-48]         // 8-byte Folded Reload
	str	w8, [sp, #32]           // 4-byte Folded Spill
	bl	printf
	ldur	w8, [x29, #-4]
	ldr	w9, [sp, #32]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB7_13
	b	.LBB7_18
.LBB7_13:
	sub	x1, x29, #5             // =5
	mov	w8, #110
	ldur	x0, [x29, #-56]         // 8-byte Folded Reload
	str	x1, [sp, #24]           // 8-byte Folded Spill
	str	w8, [sp, #20]           // 4-byte Folded Spill
	bl	printf
	ldur	x1, [x29, #-64]         // 8-byte Folded Reload
	mov	x0, x1
	ldr	x1, [sp, #24]           // 8-byte Folded Reload
	bl	scanf
	ldurb	w8, [x29, #-5]
	uxtb	w8, w8
	ldr	w9, [sp, #20]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB7_15
// %bb.14:
	mov	w8, #78
	ldurb	w9, [x29, #-5]
	uxtb	w9, w9
	cmp	w9, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB7_15
	b	.LBB7_16
.LBB7_15:
	mov	w0, #0
	ldr	x1, [sp, #80]           // 8-byte Folded Reload
	str	w0, [sp, #16]           // 4-byte Folded Spill
	mov	x0, x1
	bl	printf
	ldr	w8, [sp, #16]           // 4-byte Folded Reload
	mov	w0, w8
	bl	exit
.LBB7_16:
	orr	w8, wzr, #0x1ff
	ldur	x0, [x29, #-72]         // 8-byte Folded Reload
	mov	w1, w8
	str	w8, [sp, #12]           // 4-byte Folded Spill
	bl	mkdir
	ldur	x2, [x29, #-80]         // 8-byte Folded Reload
	mov	x0, x2
	ldr	w1, [sp, #12]           // 4-byte Folded Reload
	bl	mkdir
	ldr	x2, [sp, #88]           // 8-byte Folded Reload
	mov	x0, x2
	bl	printf
// %bb.17:
	mov	w0, #0
	bl	exit
.LBB7_18:
	mov	w0, #0
	bl	exit
.LBB7_19:
	orr	w0, wzr, #0x1
	ldur	x1, [x29, #-40]         // 8-byte Folded Reload
	str	w0, [sp, #8]            // 4-byte Folded Spill
	mov	x0, x1
	bl	perror
	ldr	w0, [sp, #8]            // 4-byte Folded Reload
	bl	exit
.LBB7_20:
	orr	w0, wzr, #0x1
	ldur	x1, [x29, #-32]         // 8-byte Folded Reload
	str	w0, [sp, #4]            // 4-byte Folded Spill
	mov	x0, x1
	bl	perror
	ldr	w0, [sp, #4]            // 4-byte Folded Reload
	bl	exit
.LBB7_21:
	ldp	x29, x30, [sp, #176]    // 8-byte Folded Reload
	add	sp, sp, #192            // =192
	ret
.Lfunc_end7:
	.size	handleError, .Lfunc_end7-handleError
                                        // -- End function
	.globl	yyerror                 // -- Begin function yyerror
	.p2align	2
	.type	yyerror,@function
yyerror:                                // @yyerror
// %bb.0:
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 8-byte Folded Spill
	add	x29, sp, #16            // =16
	adrp	x8, :got:__sF
	ldr	x8, [x8, :got_lo12:__sF]
	mov	x9, #304
	add	x8, x8, x9
	adrp	x9, .L.str.90
	add	x9, x9, :lo12:.L.str.90
	mov	w10, #0
	str	x0, [sp, #8]
	ldr	x2, [sp, #8]
	mov	x0, x8
	mov	x1, x9
	str	w10, [sp, #4]           // 4-byte Folded Spill
	bl	fprintf
	ldr	w10, [sp, #4]           // 4-byte Folded Reload
	mov	w0, w10
	ldp	x29, x30, [sp, #16]     // 8-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end8:
	.size	yyerror, .Lfunc_end8-yyerror
                                        // -- End function
	.p2align	2               // -- Begin function yydestruct
	.type	yydestruct,@function
yydestruct:                             // @yydestruct
// %bb.0:
	sub	sp, sp, #32             // =32
	mov	x8, #0
	adrp	x9, .L.str.103
	add	x9, x9, :lo12:.L.str.103
	str	x0, [sp, #24]
	str	w1, [sp, #20]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	cmp	x0, x8
	cset	w1, ne
	str	x9, [sp]                // 8-byte Folded Spill
	tbnz	w1, #0, .LBB9_2
// %bb.1:
	ldr	x8, [sp]                // 8-byte Folded Reload
	str	x8, [sp, #24]
.LBB9_2:
	add	sp, sp, #32             // =32
	ret
.Lfunc_end9:
	.size	yydestruct, .Lfunc_end9-yydestruct
                                        // -- End function
	.globl	handle_query_file_error // -- Begin function handle_query_file_error
	.p2align	2
	.type	handle_query_file_error,@function
handle_query_file_error:                // @handle_query_file_error
// %bb.0:
	sub	sp, sp, #80             // =80
	stp	x29, x30, [sp, #64]     // 8-byte Folded Spill
	add	x29, sp, #64            // =64
	mov	w8, #22
	adrp	x9, .L.str.89
	add	x9, x9, :lo12:.L.str.89
	adrp	x10, .L.str.88
	add	x10, x10, :lo12:.L.str.88
	adrp	x11, .L.str.87
	add	x11, x11, :lo12:.L.str.87
	adrp	x12, .L.str.86
	add	x12, x12, :lo12:.L.str.86
	adrp	x13, .L.str.85
	add	x13, x13, :lo12:.L.str.85
	stur	w8, [x29, #-4]          // 4-byte Folded Spill
	stur	x9, [x29, #-16]         // 8-byte Folded Spill
	stur	x10, [x29, #-24]        // 8-byte Folded Spill
	str	x11, [sp, #32]          // 8-byte Folded Spill
	str	x12, [sp, #24]          // 8-byte Folded Spill
	str	x13, [sp, #16]          // 8-byte Folded Spill
	bl	__errno
	ldr	w8, [x0]
	ldur	w14, [x29, #-4]         // 4-byte Folded Reload
	cmp	w14, w8
	cset	w15, eq
	str	w8, [sp, #12]           // 4-byte Folded Spill
	tbnz	w15, #0, .LBB10_6
	b	.LBB10_1
.LBB10_1:
	orr	w8, wzr, #0xc
	ldr	w9, [sp, #12]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB10_7
	b	.LBB10_2
.LBB10_2:
	mov	w8, #13
	ldr	w9, [sp, #12]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB10_8
	b	.LBB10_3
.LBB10_3:
	orr	w8, wzr, #0xe
	ldr	w9, [sp, #12]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB10_9
	b	.LBB10_4
.LBB10_4:
	orr	w8, wzr, #0x2
	ldr	w9, [sp, #12]           // 4-byte Folded Reload
	cmp	w8, w9
	cset	w8, eq
	tbnz	w8, #0, .LBB10_10
	b	.LBB10_5
.LBB10_5:
	b	.LBB10_11
.LBB10_6:
	ldr	x0, [sp, #16]           // 8-byte Folded Reload
	bl	printf
	b	.LBB10_11
.LBB10_7:
	ldr	x0, [sp, #24]           // 8-byte Folded Reload
	bl	printf
	b	.LBB10_11
.LBB10_8:
	ldr	x0, [sp, #32]           // 8-byte Folded Reload
	bl	printf
	b	.LBB10_11
.LBB10_9:
	ldur	x0, [x29, #-24]         // 8-byte Folded Reload
	bl	printf
	b	.LBB10_11
.LBB10_10:
	ldur	x0, [x29, #-16]         // 8-byte Folded Reload
	bl	printf
.LBB10_11:
	orr	w0, wzr, #0x1
	bl	exit
.Lfunc_end10:
	.size	handle_query_file_error, .Lfunc_end10-handle_query_file_error
                                        // -- End function
	.globl	initFunction            // -- Begin function initFunction
	.p2align	2
	.type	initFunction,@function
initFunction:                           // @initFunction
// %bb.0:
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 8-byte Folded Spill
	add	x29, sp, #32            // =32
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	mov	x9, #0
	adrp	x10, .L.str.102
	add	x10, x10, :lo12:.L.str.102
	stur	x0, [x29, #-8]
	mov	x0, x8
	str	x10, [sp, #8]           // 8-byte Folded Spill
	str	x9, [sp]                // 8-byte Folded Spill
	bl	opendir
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x9, [sp]                // 8-byte Folded Reload
	cmp	x8, x9
	cset	w11, ne
	tbnz	w11, #0, .LBB11_1
	b	.LBB11_2
.LBB11_1:
	ldr	x0, [sp, #8]            // 8-byte Folded Reload
	bl	printf
	b	.LBB11_3
.LBB11_2:
	orr	w0, wzr, #0x2
	bl	handleError
.LBB11_3:
	mov	w0, #0
	ldp	x29, x30, [sp, #32]     // 8-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end11:
	.size	initFunction, .Lfunc_end11-initFunction
                                        // -- End function
	.globl	main                    // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 8-byte Folded Spill
	add	x29, sp, #16            // =16
	stur	wzr, [x29, #-4]
	str	w0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp]
	ldr	x0, [x1]
	bl	initFunction
.LBB12_1:                               // =>This Inner Loop Header: Depth=1
	bl	yyparse
	cbz	w0, .LBB12_2
	b	.LBB12_3
.LBB12_2:                               //   in Loop: Header=BB12_1 Depth=1
	b	.LBB12_1
.LBB12_3:
	mov	w0, #0
	ldp	x29, x30, [sp, #16]     // 8-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end12:
	.size	main, .Lfunc_end12-main
                                        // -- End function
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"./master"
	.size	.L.str, 9

	.type	masterPath,@object      // @masterPath
	.data
	.globl	masterPath
	.p2align	3
masterPath:
	.xword	.L.str
	.size	masterPath, 8

	.type	.L.str.1,@object        // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"./data"
	.size	.L.str.1, 7

	.type	dataPath,@object        // @dataPath
	.data
	.globl	dataPath
	.p2align	3
dataPath:
	.xword	.L.str.1
	.size	dataPath, 8

	.type	.L.str.2,@object        // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Now printing\n"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        // @.str.3
.L.str.3:
	.asciz	"%d "
	.size	.L.str.3, 4

	.type	.L.str.4,@object        // @.str.4
.L.str.4:
	.asciz	"%s "
	.size	.L.str.4, 4

	.type	.L.str.5,@object        // @.str.5
.L.str.5:
	.asciz	"Invalid Type\n"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        // @.str.6
.L.str.6:
	.asciz	"\n"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        // @.str.7
.L.str.7:
	.asciz	"record ka field array first data is %d\n"
	.size	.L.str.7, 40

	.type	.L.str.8,@object        // @.str.8
.L.str.8:
	.asciz	"head ka field array first data is %d\n"
	.size	.L.str.8, 38

	.type	.L.str.9,@object        // @.str.9
.L.str.9:
	.asciz	"The list after updation\n"
	.size	.L.str.9, 25

	.type	table_records,@object   // @table_records
	.bss
	.globl	table_records
	.p2align	3
table_records:
	.xword	0
	.size	table_records, 8

	.type	string_list_ptr,@object // @string_list_ptr
	.globl	string_list_ptr
	.p2align	3
string_list_ptr:
	.xword	0
	.size	string_list_ptr, 8

	.type	yynerrs,@object         // @yynerrs
	.comm	yynerrs,4,4
	.type	yychar,@object          // @yychar
	.comm	yychar,4,4
	.type	yypact,@object          // @yypact
	.section	.rodata,"a",@progbits
yypact:
	.ascii	"\002\376\n\024\027\037\327\327\327\327\003\034\022\031 \327\327\025\030\013\352\"\013\013\327\003\327#\327\327\035\013$&\327\362\352!\327\376\362\362\362\023\371\327\327\327\026\377\035\327'\371\t\327\327\327\362\327\021\327\327\327\327\327\327\032\327\022\327\327\327\327\327\327+\362\371"
	.size	yypact, 79

	.type	yytranslate,@object     // @yytranslate
yytranslate:
	.ascii	"\000\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036"
	.size	yytranslate, 286

	.type	yycheck,@object         // @yycheck
yycheck:
	.ascii	"()\020*\022\003\034\035\006\026\027\t\023\024\020\r\036\007\037:\025\026\027\030\031\032\021\007\023\024\007\000\004\036\020\n\004M\021\017\005\036\b\005\017\034\033\013\005\033\021\f'E2\035\377\377\377\377\377\377\031$"
	.size	yycheck, 64

	.type	yytable,@object         // @yytable
yytable:
	.ascii	"56)7*\001\034\035\002 !\00389\n\004+\f&G=>?@ABF\r89\016\017\023\020\024\026\027N\030\031#\032\037($H\347'M;3E4LDJ\000\000\000\000\000\000\"2"
	.size	yytable, 64

	.type	yylval,@object          // @yylval
	.comm	yylval,1016,8
	.type	yydefact,@object        // @yydefact
yydefact:
	.ascii	"\000\000\000\000\000\000\002\003\004\005\000\000\000\000\000\001\r\000\f\000\000\000\000\000\n\000(\000&'%\000\000\000\013\000\000\000\007\000\000\000\000\034\006\017\022\023\000\000%#\000\t\000\024\020\021\000\032\000\035\036\037 !\"\000$\000\025\016\030\027\033\026\000\000\b"
	.size	yydefact, 79

	.type	yyr2,@object            // @yyr2
yyr2:
	.ascii	"\000\002\001\001\001\001\006\005\n\006\003\003\001\001\003\001\001\001\001\001\002\003\003\003\001\001\001\001\001\001\001\001\001\001\001\004\003\000\001\001\001"
	.size	yyr2, 41

	.type	.L.str.10,@object       // @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"Get query\n"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       // @.str.11
.L.str.11:
	.asciz	"Insert query\n"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       // @.str.12
.L.str.12:
	.asciz	"Update query\n"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       // @.str.13
.L.str.13:
	.asciz	"Delete query\n"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       // @.str.14
.L.str.14:
	.asciz	"DELETE KE ANDAR\n"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       // @.str.15
.L.str.15:
	.asciz	"the dir handle 2 is %p\n"
	.size	.L.str.15, 24

	.type	.L.str.16,@object       // @.str.16
.L.str.16:
	.asciz	"the type is %d, STRING %d INT %d\n "
	.size	.L.str.16, 35

	.type	.L.str.17,@object       // @.str.17
.L.str.17:
	.asciz	"%s/%s.txt"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       // @.str.18
.L.str.18:
	.asciz	"path to deletion"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       // @.str.19
.L.str.19:
	.asciz	"%d.txt"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       // @.str.20
.L.str.20:
	.asciz	"string format is %s\n"
	.size	.L.str.20, 21

	.type	.L.str.21,@object       // @.str.21
.L.str.21:
	.asciz	"%s is the dir_name\n"
	.size	.L.str.21, 20

	.type	.L.str.22,@object       // @.str.22
.L.str.22:
	.asciz	"%s/%s"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       // @.str.23
.L.str.23:
	.asciz	"entered condition list"
	.size	.L.str.23, 23

	.type	.L.str.24,@object       // @.str.24
.L.str.24:
	.asciz	"Inside AND\n"
	.size	.L.str.24, 12

	.type	.L.str.25,@object       // @.str.25
.L.str.25:
	.asciz	"output after condition\n\n"
	.size	.L.str.25, 25

	.type	.L.str.26,@object       // @.str.26
.L.str.26:
	.asciz	"GAND\n"
	.size	.L.str.26, 6

	.type	.L.str.27,@object       // @.str.27
.L.str.27:
	.asciz	"GORI\n"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       // @.str.28
.L.str.28:
	.asciz	"entered NUMERICAL_CONDITION"
	.size	.L.str.28, 28

	.type	schema,@object          // @schema
	.comm	schema,16,8
	.type	.L.str.29,@object       // @.str.29
.L.str.29:
	.asciz	"schema field name %s \n"
	.size	.L.str.29, 23

	.type	.L.str.30,@object       // @.str.30
.L.str.30:
	.asciz	"table record pointer: %p, first record %d\n"
	.size	.L.str.30, 43

	.type	.L.str.31,@object       // @.str.31
.L.str.31:
	.asciz	"comparing %d\n"
	.size	.L.str.31, 14

	.type	.L.str.32,@object       // @.str.32
.L.str.32:
	.asciz	"values in iter %d\n"
	.size	.L.str.32, 19

	.type	.L.str.33,@object       // @.str.33
.L.str.33:
	.asciz	"=="
	.size	.L.str.33, 3

	.type	.L.str.34,@object       // @.str.34
.L.str.34:
	.asciz	"eq"
	.size	.L.str.34, 3

	.type	.L.str.35,@object       // @.str.35
.L.str.35:
	.asciz	"$3 value integer is %d\n"
	.size	.L.str.35, 24

	.type	.L.str.36,@object       // @.str.36
.L.str.36:
	.asciz	"EQ condition matched\n"
	.size	.L.str.36, 22

	.type	.L.str.37,@object       // @.str.37
.L.str.37:
	.asciz	"!="
	.size	.L.str.37, 3

	.type	.L.str.38,@object       // @.str.38
.L.str.38:
	.asciz	"neq"
	.size	.L.str.38, 4

	.type	.L.str.39,@object       // @.str.39
.L.str.39:
	.asciz	">"
	.size	.L.str.39, 2

	.type	.L.str.40,@object       // @.str.40
.L.str.40:
	.asciz	"gt"
	.size	.L.str.40, 3

	.type	.L.str.41,@object       // @.str.41
.L.str.41:
	.asciz	"<"
	.size	.L.str.41, 2

	.type	.L.str.42,@object       // @.str.42
.L.str.42:
	.asciz	"lt"
	.size	.L.str.42, 3

	.type	.L.str.43,@object       // @.str.43
.L.str.43:
	.asciz	">="
	.size	.L.str.43, 3

	.type	.L.str.44,@object       // @.str.44
.L.str.44:
	.asciz	"geq"
	.size	.L.str.44, 4

	.type	.L.str.45,@object       // @.str.45
.L.str.45:
	.asciz	"<="
	.size	.L.str.45, 3

	.type	.L.str.46,@object       // @.str.46
.L.str.46:
	.asciz	"leq"
	.size	.L.str.46, 4

	.type	.L.str.47,@object       // @.str.47
.L.str.47:
	.asciz	"DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD\n"
	.size	.L.str.47, 42

	.type	.L.str.48,@object       // @.str.48
.L.str.48:
	.asciz	"INSIDE STRING COND\n"
	.size	.L.str.48, 20

	.type	.L.str.49,@object       // @.str.49
.L.str.49:
	.asciz	"%d is POS OF FIELD\n"
	.size	.L.str.49, 20

	.type	.L.str.50,@object       // @.str.50
.L.str.50:
	.asciz	"ITER IS %p\n"
	.size	.L.str.50, 12

	.type	.L.str.51,@object       // @.str.51
.L.str.51:
	.asciz	"OP IS %s\n"
	.size	.L.str.51, 10

	.type	.L.str.52,@object       // @.str.52
.L.str.52:
	.asciz	"COMPARinG with %s %d\n"
	.size	.L.str.52, 22

	.type	.L.str.53,@object       // @.str.53
.L.str.53:
	.asciz	"="
	.size	.L.str.53, 2

	.type	.L.str.54,@object       // @.str.54
.L.str.54:
	.asciz	"Length of the iter string %d\n"
	.size	.L.str.54, 30

	.type	.L.str.55,@object       // @.str.55
.L.str.55:
	.asciz	"NOW COMPARING %s %d with temp %d\n"
	.size	.L.str.55, 34

	.type	.L.str.56,@object       // @.str.56
.L.str.56:
	.asciz	"DAS STRING CONDITIONES OP IS \n"
	.size	.L.str.56, 31

	.type	.L.str.57,@object       // @.str.57
.L.str.57:
	.asciz	"I AINT GOT NO MONEY\n"
	.size	.L.str.57, 21

	.type	.L.str.58,@object       // @.str.58
.L.str.58:
	.asciz	"THE STRING FIELD IS "
	.size	.L.str.58, 21

	.type	.L.str.59,@object       // @.str.59
.L.str.59:
	.asciz	"FIELD NOT FOUND, CHECK QUERY\n"
	.size	.L.str.59, 30

	.type	.L.str.60,@object       // @.str.60
.L.str.60:
	.asciz	"%s\n"
	.size	.L.str.60, 4

	.type	.L.str.61,@object       // @.str.61
.L.str.61:
	.asciz	"DDDDDDDDDDDDSSSSSSSSSSSSSSEEEEEEEEEEEEE\n"
	.size	.L.str.61, 41

	.type	.L.str.62,@object       // @.str.62
.L.str.62:
	.asciz	"RECEIVED OP %s"
	.size	.L.str.62, 15

	.type	.L.str.63,@object       // @.str.63
.L.str.63:
	.asciz	"Need more fields in the definition? contact the developer\n"
	.size	.L.str.63, 59

	.type	.L.str.64,@object       // @.str.64
.L.str.64:
	.asciz	"This datatype has not been defined\n"
	.size	.L.str.64, 36

	.type	.L.str.65,@object       // @.str.65
.L.str.65:
	.asciz	"Illegal type stopping execution\n"
	.size	.L.str.65, 33

	.type	.L.str.66,@object       // @.str.66
.L.str.66:
	.asciz	"/"
	.size	.L.str.66, 2

	.type	.L.str.67,@object       // @.str.67
.L.str.67:
	.asciz	"path to schema is %s\n"
	.size	.L.str.67, 22

	.type	.L.str.68,@object       // @.str.68
.L.str.68:
	.asciz	"r+"
	.size	.L.str.68, 3

	.type	.L.str.69,@object       // @.str.69
.L.str.69:
	.asciz	"Table Schema found!\n"
	.size	.L.str.69, 21

	.type	.L.str.70,@object       // @.str.70
.L.str.70:
	.asciz	"The table is found\n"
	.size	.L.str.70, 20

	.type	.L.str.71,@object       // @.str.71
.L.str.71:
	.asciz	":"
	.size	.L.str.71, 2

	.type	.L.str.72,@object       // @.str.72
.L.str.72:
	.asciz	"string"
	.size	.L.str.72, 7

	.type	.L.str.73,@object       // @.str.73
.L.str.73:
	.asciz	"int"
	.size	.L.str.73, 4

	.type	.L.str.74,@object       // @.str.74
.L.str.74:
	.asciz	"Number of  Attributes: %d\n"
	.size	.L.str.74, 27

	.type	.L.str.75,@object       // @.str.75
.L.str.75:
	.asciz	"dummy\n"
	.size	.L.str.75, 7

	.type	.L.str.76,@object       // @.str.76
.L.str.76:
	.asciz	"r"
	.size	.L.str.76, 2

	.type	.L.str.77,@object       // @.str.77
.L.str.77:
	.asciz	"\t"
	.size	.L.str.77, 2

	.type	.L.str.78,@object       // @.str.78
.L.str.78:
	.asciz	"THE PATH TO THE TABLE IS"
	.size	.L.str.78, 25

	.type	yyr1,@object            // @yyr1
	.section	.rodata,"a",@progbits
yyr1:
	.ascii	"\000\037    !\"#$%&&'(())****+,-./01222222344556"
	.size	yyr1, 41

	.type	yypgoto,@object         // @yypgoto
yypgoto:
	.ascii	"\327\327\327\327\327\327\r%\327\330\327\331\327\327\327\327\327\327\327\327\360\004\033\363"
	.size	yypgoto, 24

	.type	yydefgoto,@object       // @yydefgoto
yydefgoto:
	.ascii	"\377\005\006\007\b\t\013\021\022,:-./I0<K1C\025%\036\033"
	.size	yydefgoto, 24

	.type	.L.str.79,@object       // @.str.79
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.79:
	.asciz	"syntax error"
	.size	.L.str.79, 13

	.type	.L.str.80,@object       // @.str.80
.L.str.80:
	.asciz	"Error: discarding"
	.size	.L.str.80, 18

	.type	.L.str.81,@object       // @.str.81
.L.str.81:
	.asciz	"Error: popping"
	.size	.L.str.81, 15

	.type	yystos,@object          // @yystos
	.section	.rodata,"a",@progbits
yystos:
	.ascii	"\000\003\006\t\r !\"#$\020%\007\007\007\000\036&'\004\0203\n\004\021\017\0366\034\0355\b66&\005\01746\013\005\020\022\036(*+,.15\021%((*\023\024)\033/\025\026\027\030\031\03224\f\021*\034-\03503\005("
	.size	yystos, 79

	.type	.L.str.82,@object       // @.str.82
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.82:
	.asciz	"memory exhausted"
	.size	.L.str.82, 17

	.type	.L.str.83,@object       // @.str.83
.L.str.83:
	.asciz	"Cleanup: discarding lookahead"
	.size	.L.str.83, 30

	.type	.L.str.84,@object       // @.str.84
.L.str.84:
	.asciz	"Cleanup: popping"
	.size	.L.str.84, 17

	.type	.L.str.85,@object       // @.str.85
.L.str.85:
	.asciz	"The mode provided for opening the file is incorrect\n"
	.size	.L.str.85, 53

	.type	.L.str.86,@object       // @.str.86
.L.str.86:
	.asciz	"Out of memory as the memory has hit the memory limit set internally\n"
	.size	.L.str.86, 69

	.type	.L.str.87,@object       // @.str.87
.L.str.87:
	.asciz	"Access to the current file is not allowed.Check the permissions set for the file\n"
	.size	.L.str.87, 82

	.type	.L.str.88,@object       // @.str.88
.L.str.88:
	.asciz	"The path name is outside your accessible address space\n"
	.size	.L.str.88, 56

	.type	.L.str.89,@object       // @.str.89
.L.str.89:
	.asciz	"This file does not exist\n"
	.size	.L.str.89, 26

	.type	.L.str.90,@object       // @.str.90
.L.str.90:
	.asciz	" %s\n"
	.size	.L.str.90, 5

	.type	.L.str.91,@object       // @.str.91
.L.str.91:
	.asciz	"Permission denied.\n"
	.size	.L.str.91, 20

	.type	.L.str.92,@object       // @.str.92
.L.str.92:
	.asciz	"fd is not a valid file descriptor opened for reading.\n"
	.size	.L.str.92, 55

	.type	.L.str.93,@object       // @.str.93
.L.str.93:
	.asciz	"The per-process limit on the number of open file descriptors has been reached.\n"
	.size	.L.str.93, 80

	.type	.L.str.94,@object       // @.str.94
.L.str.94:
	.asciz	"The system-wide limit on the total number of open files has been reached.\n"
	.size	.L.str.94, 75

	.type	.L.str.95,@object       // @.str.95
.L.str.95:
	.asciz	"Directory does not exist, or name is an empty string.\n"
	.size	.L.str.95, 55

	.type	.L.str.96,@object       // @.str.96
.L.str.96:
	.asciz	"Do you want to create a new master Directory(y/n)\n"
	.size	.L.str.96, 51

	.type	.L.str.97,@object       // @.str.97
.L.str.97:
	.asciz	"%c"
	.size	.L.str.97, 3

	.type	.L.str.98,@object       // @.str.98
.L.str.98:
	.asciz	"Terminating execution\n"
	.size	.L.str.98, 23

	.type	.L.str.99,@object       // @.str.99
.L.str.99:
	.asciz	" Make use of the schema and the data helper utilities to fill the schema details and the input files\n"
	.size	.L.str.99, 102

	.type	.L.str.100,@object      // @.str.100
.L.str.100:
	.asciz	"Insufficient memory to complete the operation.\n"
	.size	.L.str.100, 48

	.type	.L.str.101,@object      // @.str.101
.L.str.101:
	.asciz	"name is not a directory.\n"
	.size	.L.str.101, 26

	.type	.L.str.102,@object      // @.str.102
.L.str.102:
	.asciz	"The master diretory is initialized.\n"
	.size	.L.str.102, 37

	.type	.L.str.103,@object      // @.str.103
.L.str.103:
	.asciz	"Deleting"
	.size	.L.str.103, 9


	.ident	"clang version 7.0.0 (tags/RELEASE_700/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlwr
	.addrsig_sym strlen
	.addrsig_sym tolower
	.addrsig_sym strupr
	.addrsig_sym toupper
	.addrsig_sym print_list
	.addrsig_sym printf
	.addrsig_sym push_back
	.addrsig_sym malloc
	.addrsig_sym find
	.addrsig_sym strcmp
	.addrsig_sym strip
	.addrsig_sym yyparse
	.addrsig_sym free
	.addrsig_sym yylex
	.addrsig_sym opendir
	.addrsig_sym readdir
	.addrsig_sym sprintf
	.addrsig_sym puts
	.addrsig_sym remove
	.addrsig_sym strcpy
	.addrsig_sym calloc
	.addrsig_sym strcat
	.addrsig_sym fopen
	.addrsig_sym handleError
	.addrsig_sym getline
	.addrsig_sym fclose
	.addrsig_sym strtok
	.addrsig_sym atoi
	.addrsig_sym yyerror
	.addrsig_sym yydestruct
	.addrsig_sym handle_query_file_error
	.addrsig_sym __errno
	.addrsig_sym exit
	.addrsig_sym fprintf
	.addrsig_sym perror
	.addrsig_sym scanf
	.addrsig_sym mkdir
	.addrsig_sym initFunction
	.addrsig_sym main
	.addrsig_sym masterPath
	.addrsig_sym dataPath
	.addrsig_sym table_records
	.addrsig_sym string_list_ptr
	.addrsig_sym yynerrs
	.addrsig_sym yychar
	.addrsig_sym yypact
	.addrsig_sym yytranslate
	.addrsig_sym yycheck
	.addrsig_sym yytable
	.addrsig_sym yylval
	.addrsig_sym yydefact
	.addrsig_sym yyr2
	.addrsig_sym schema
	.addrsig_sym yyr1
	.addrsig_sym yypgoto
	.addrsig_sym yydefgoto
	.addrsig_sym yystos
	.addrsig_sym __sF
