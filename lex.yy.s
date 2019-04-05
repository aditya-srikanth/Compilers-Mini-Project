	.file	"lex.yy.c"
	.text
	.local	yy_buffer_stack_top
	.comm	yy_buffer_stack_top,8,8
	.local	yy_buffer_stack_max
	.comm	yy_buffer_stack_max,8,8
	.local	yy_buffer_stack
	.comm	yy_buffer_stack,8,8
	.local	yy_hold_char
	.comm	yy_hold_char,1,1
	.local	yy_n_chars
	.comm	yy_n_chars,4,4
	.comm	yyleng,4,4
	.local	yy_c_buf_p
	.comm	yy_c_buf_p,8,8
	.local	yy_init
	.comm	yy_init,4,4
	.local	yy_start
	.comm	yy_start,4,4
	.local	yy_did_buffer_switch_on_eof
	.comm	yy_did_buffer_switch_on_eof,4,4
	.globl	yyin
	.bss
	.align 8
	.type	yyin, @object
	.size	yyin, 8
yyin:
	.zero	8
	.globl	yyout
	.align 8
	.type	yyout, @object
	.size	yyout, 8
yyout:
	.zero	8
	.globl	yylineno
	.data
	.align 4
	.type	yylineno, @object
	.size	yylineno, 4
yylineno:
	.long	1
	.section	.rodata
	.align 32
	.type	yy_accept, @object
	.size	yy_accept, 158
yy_accept:
	.value	0
	.value	0
	.value	0
	.value	32
	.value	30
	.value	29
	.value	31
	.value	30
	.value	30
	.value	15
	.value	16
	.value	25
	.value	30
	.value	28
	.value	24
	.value	17
	.value	23
	.value	19
	.value	26
	.value	26
	.value	26
	.value	26
	.value	26
	.value	26
	.value	26
	.value	26
	.value	26
	.value	26
	.value	26
	.value	26
	.value	26
	.value	22
	.value	0
	.value	28
	.value	18
	.value	21
	.value	20
	.value	26
	.value	26
	.value	26
	.value	26
	.value	26
	.value	11
	.value	26
	.value	5
	.value	26
	.value	26
	.value	13
	.value	26
	.value	26
	.value	27
	.value	4
	.value	26
	.value	26
	.value	1
	.value	26
	.value	26
	.value	6
	.value	26
	.value	12
	.value	26
	.value	26
	.value	26
	.value	2
	.value	26
	.value	9
	.value	26
	.value	26
	.value	26
	.value	26
	.value	26
	.value	26
	.value	26
	.value	3
	.value	14
	.value	7
	.value	8
	.value	10
	.value	0
	.align 32
	.type	yy_ec, @object
	.size	yy_ec, 256
yy_ec:
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	3
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	4
	.byte	5
	.byte	1
	.byte	6
	.byte	1
	.byte	1
	.byte	1
	.byte	7
	.byte	8
	.byte	1
	.byte	1
	.byte	9
	.byte	10
	.byte	1
	.byte	1
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	1
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	1
	.byte	1
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	17
	.byte	17
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	17
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	17
	.byte	34
	.byte	17
	.byte	17
	.byte	17
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	35
	.byte	1
	.byte	36
	.byte	17
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	43
	.byte	17
	.byte	17
	.byte	44
	.byte	45
	.byte	46
	.byte	47
	.byte	48
	.byte	17
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	17
	.byte	53
	.byte	17
	.byte	17
	.byte	17
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.align 32
	.type	yy_meta, @object
	.size	yy_meta, 54
yy_meta:
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	1
	.byte	1
	.byte	3
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	3
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.align 32
	.type	yy_base, @object
	.size	yy_base, 162
yy_base:
	.value	0
	.value	0
	.value	0
	.value	141
	.value	153
	.value	153
	.value	153
	.value	126
	.value	0
	.value	153
	.value	153
	.value	153
	.value	127
	.value	126
	.value	153
	.value	122
	.value	121
	.value	120
	.value	27
	.value	0
	.value	35
	.value	26
	.value	37
	.value	31
	.value	31
	.value	30
	.value	41
	.value	42
	.value	35
	.value	35
	.value	42
	.value	153
	.value	128
	.value	121
	.value	153
	.value	153
	.value	153
	.value	0
	.value	47
	.value	42
	.value	40
	.value	37
	.value	39
	.value	40
	.value	0
	.value	74
	.value	61
	.value	0
	.value	75
	.value	75
	.value	126
	.value	0
	.value	76
	.value	71
	.value	0
	.value	78
	.value	71
	.value	0
	.value	72
	.value	0
	.value	85
	.value	73
	.value	72
	.value	0
	.value	75
	.value	0
	.value	76
	.value	75
	.value	88
	.value	89
	.value	78
	.value	101
	.value	110
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	153
	.value	149
	.value	99
	.align 32
	.type	yy_def, @object
	.size	yy_def, 162
yy_def:
	.value	0
	.value	78
	.value	1
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	79
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	78
	.value	79
	.value	78
	.value	78
	.value	78
	.value	78
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	79
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	80
	.value	0
	.value	78
	.value	78
	.align 32
	.type	yy_nxt, @object
	.size	yy_nxt, 414
yy_nxt:
	.value	0
	.value	4
	.value	5
	.value	6
	.value	7
	.value	8
	.value	4
	.value	9
	.value	10
	.value	11
	.value	12
	.value	13
	.value	14
	.value	15
	.value	16
	.value	17
	.value	18
	.value	19
	.value	19
	.value	20
	.value	19
	.value	21
	.value	22
	.value	19
	.value	23
	.value	19
	.value	19
	.value	24
	.value	25
	.value	19
	.value	26
	.value	27
	.value	28
	.value	29
	.value	30
	.value	19
	.value	18
	.value	19
	.value	20
	.value	19
	.value	21
	.value	22
	.value	19
	.value	23
	.value	19
	.value	19
	.value	24
	.value	25
	.value	19
	.value	26
	.value	27
	.value	28
	.value	29
	.value	30
	.value	38
	.value	39
	.value	40
	.value	41
	.value	42
	.value	43
	.value	44
	.value	45
	.value	46
	.value	47
	.value	48
	.value	49
	.value	51
	.value	52
	.value	53
	.value	54
	.value	55
	.value	56
	.value	57
	.value	38
	.value	39
	.value	40
	.value	41
	.value	42
	.value	43
	.value	44
	.value	45
	.value	46
	.value	47
	.value	48
	.value	49
	.value	51
	.value	52
	.value	53
	.value	54
	.value	55
	.value	56
	.value	57
	.value	58
	.value	59
	.value	60
	.value	61
	.value	62
	.value	63
	.value	64
	.value	65
	.value	66
	.value	67
	.value	37
	.value	68
	.value	69
	.value	70
	.value	71
	.value	72
	.value	73
	.value	74
	.value	75
	.value	58
	.value	59
	.value	60
	.value	61
	.value	62
	.value	63
	.value	64
	.value	65
	.value	66
	.value	76
	.value	67
	.value	68
	.value	69
	.value	70
	.value	71
	.value	72
	.value	73
	.value	74
	.value	75
	.value	77
	.value	50
	.value	33
	.value	50
	.value	36
	.value	35
	.value	34
	.value	33
	.value	33
	.value	76
	.value	31
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	77
	.value	32
	.value	78
	.value	32
	.value	3
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.align 32
	.type	yy_chk, @object
	.size	yy_chk, 414
yy_chk:
	.value	0
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	18
	.value	20
	.value	21
	.value	22
	.value	23
	.value	24
	.value	25
	.value	26
	.value	27
	.value	28
	.value	29
	.value	30
	.value	38
	.value	39
	.value	40
	.value	41
	.value	42
	.value	42
	.value	43
	.value	18
	.value	20
	.value	21
	.value	22
	.value	23
	.value	24
	.value	25
	.value	26
	.value	27
	.value	28
	.value	29
	.value	30
	.value	38
	.value	39
	.value	40
	.value	41
	.value	42
	.value	42
	.value	43
	.value	45
	.value	46
	.value	48
	.value	49
	.value	52
	.value	53
	.value	55
	.value	56
	.value	58
	.value	60
	.value	80
	.value	61
	.value	62
	.value	64
	.value	66
	.value	67
	.value	68
	.value	69
	.value	70
	.value	45
	.value	46
	.value	48
	.value	49
	.value	52
	.value	53
	.value	55
	.value	56
	.value	58
	.value	71
	.value	60
	.value	61
	.value	62
	.value	64
	.value	66
	.value	67
	.value	68
	.value	69
	.value	70
	.value	72
	.value	50
	.value	33
	.value	32
	.value	17
	.value	16
	.value	15
	.value	13
	.value	12
	.value	71
	.value	7
	.value	3
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	72
	.value	79
	.value	0
	.value	79
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.value	78
	.local	yy_last_accepting_state
	.comm	yy_last_accepting_state,4,4
	.local	yy_last_accepting_cpos
	.comm	yy_last_accepting_cpos,8,8
	.globl	yy_flex_debug
	.bss
	.align 4
	.type	yy_flex_debug, @object
	.size	yy_flex_debug, 4
yy_flex_debug:
	.zero	4
	.comm	yytext,8,8
	.section	.rodata
.LC0:
	.string	"This is an invalid character"
	.align 8
.LC1:
	.string	"fatal flex scanner internal error--no action found"
	.text
	.globl	yylex
	.type	yylex, @function
yylex:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	yy_init(%rip), %eax
	testl	%eax, %eax
	jne	.L62
	movl	$1, yy_init(%rip)
	movl	yy_start(%rip), %eax
	testl	%eax, %eax
	jne	.L3
	movl	$1, yy_start(%rip)
.L3:
	movq	yyin(%rip), %rax
	testq	%rax, %rax
	jne	.L4
	movq	stdin(%rip), %rax
	movq	%rax, yyin(%rip)
.L4:
	movq	yyout(%rip), %rax
	testq	%rax, %rax
	jne	.L5
	movq	stdout(%rip), %rax
	movq	%rax, yyout(%rip)
.L5:
	movq	yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	.L6
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L7
.L6:
	call	yyensure_buffer_stack
	movq	yyin(%rip), %rax
	movq	yy_buffer_stack(%rip), %rdx
	movq	yy_buffer_stack_top(%rip), %rcx
	salq	$3, %rcx
	leaq	(%rdx,%rcx), %rbx
	movl	$16384, %esi
	movq	%rax, %rdi
	call	yy_create_buffer
	movq	%rax, (%rbx)
.L7:
	call	yy_load_buffer_state
.L62:
	movq	yy_c_buf_p(%rip), %rax
	movq	%rax, -32(%rbp)
	movzbl	yy_hold_char(%rip), %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	yy_start(%rip), %eax
	movl	%eax, -48(%rbp)
	jmp	.L8
.L63:
	nop
.L8:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movslq	%eax, %rdx
	leaq	yy_ec(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movb	%al, -49(%rbp)
	movl	-48(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	yy_accept(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	testw	%ax, %ax
	je	.L10
	movl	-48(%rbp), %eax
	movl	%eax, yy_last_accepting_state(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, yy_last_accepting_cpos(%rip)
	jmp	.L10
.L11:
	movl	-48(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	yy_def(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	cwtl
	movl	%eax, -48(%rbp)
	cmpl	$78, -48(%rbp)
	jle	.L10
	movzbl	-49(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yy_meta(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movb	%al, -49(%rbp)
.L10:
	movl	-48(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	yy_base(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movswl	%ax, %edx
	movzbl	-49(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	yy_chk(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	cwtl
	cmpl	%eax, -48(%rbp)
	jne	.L11
	movl	-48(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	yy_base(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movswl	%ax, %edx
	movzbl	-49(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	yy_nxt(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	cwtl
	movl	%eax, -48(%rbp)
	addq	$1, -32(%rbp)
	movl	-48(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	yy_base(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	cmpw	$153, %ax
	jne	.L63
	nop
.L12:
	movl	-48(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	yy_accept(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	cwtl
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.L13
	movq	yy_last_accepting_cpos(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	yy_last_accepting_state(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	yy_accept(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	cwtl
	movl	%eax, -44(%rbp)
.L13:
	movq	-24(%rbp), %rax
	movq	%rax, yytext(%rip)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, yyleng(%rip)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, yy_hold_char(%rip)
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, yy_c_buf_p(%rip)
.L14:
	cmpl	$33, -44(%rbp)
	ja	.L15
	movl	-44(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L17(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L17(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L17:
	.long	.L16-.L17
	.long	.L18-.L17
	.long	.L19-.L17
	.long	.L20-.L17
	.long	.L21-.L17
	.long	.L22-.L17
	.long	.L23-.L17
	.long	.L24-.L17
	.long	.L25-.L17
	.long	.L26-.L17
	.long	.L27-.L17
	.long	.L28-.L17
	.long	.L29-.L17
	.long	.L30-.L17
	.long	.L31-.L17
	.long	.L32-.L17
	.long	.L33-.L17
	.long	.L34-.L17
	.long	.L35-.L17
	.long	.L36-.L17
	.long	.L37-.L17
	.long	.L38-.L17
	.long	.L39-.L17
	.long	.L40-.L17
	.long	.L41-.L17
	.long	.L42-.L17
	.long	.L43-.L17
	.long	.L44-.L17
	.long	.L45-.L17
	.long	.L64-.L17
	.long	.L47-.L17
	.long	.L48-.L17
	.long	.L49-.L17
	.long	.L50-.L17
	.text
.L16:
	movzbl	yy_hold_char(%rip), %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	movq	yy_last_accepting_cpos(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	yy_last_accepting_state(%rip), %eax
	movl	%eax, -48(%rbp)
	jmp	.L12
.L18:
	movl	$258, %eax
	jmp	.L51
.L19:
	movl	$259, %eax
	jmp	.L51
.L20:
	movl	$260, %eax
	jmp	.L51
.L21:
	movl	$274, %eax
	jmp	.L51
.L22:
	movl	$275, %eax
	jmp	.L51
.L23:
	movl	$273, %eax
	jmp	.L51
.L24:
	movl	$261, %eax
	jmp	.L51
.L25:
	movl	$262, %eax
	jmp	.L51
.L26:
	movl	$263, %eax
	jmp	.L51
.L27:
	movl	$264, %eax
	jmp	.L51
.L28:
	movl	$265, %eax
	jmp	.L51
.L29:
	movl	$266, %eax
	jmp	.L51
.L30:
	movl	$267, %eax
	jmp	.L51
.L31:
	movl	$268, %eax
	jmp	.L51
.L32:
	movl	$271, %eax
	jmp	.L51
.L33:
	movl	$272, %eax
	jmp	.L51
.L34:
	movl	$276, %eax
	jmp	.L51
.L35:
	movl	$277, %eax
	jmp	.L51
.L36:
	movl	$278, %eax
	jmp	.L51
.L37:
	movl	$279, %eax
	jmp	.L51
.L38:
	movl	$280, %eax
	jmp	.L51
.L39:
	movl	$281, %eax
	jmp	.L51
.L40:
	movl	$282, %eax
	jmp	.L51
.L41:
	movl	$0, %eax
	jmp	.L51
.L42:
	movl	$270, %eax
	jmp	.L51
.L43:
	movq	yytext(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	strlwr@PLT
	movq	yytext(%rip), %rax
	movq	%rax, %rsi
	leaq	yylval(%rip), %rdi
	call	strcpy@PLT
	movl	$285, %eax
	jmp	.L51
.L44:
	movl	$1, yylval(%rip)
	movq	yytext(%rip), %rax
	movq	%rax, %rsi
	leaq	4+yylval(%rip), %rdi
	call	strcpy@PLT
	movl	$283, %eax
	jmp	.L51
.L45:
	movl	$0, yylval(%rip)
	movq	yytext(%rip), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, 4+yylval(%rip)
	movl	$284, %eax
	jmp	.L51
.L47:
	movq	yytext(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC0(%rip), %rdi
	call	yyerror@PLT
	jmp	.L52
.L48:
	movq	yyout(%rip), %rdx
	movl	yyleng(%rip), %eax
	movslq	%eax, %rsi
	movq	yytext(%rip), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	fwrite@PLT
	jmp	.L52
.L50:
	movl	$0, %eax
	jmp	.L51
.L49:
	movq	-32(%rbp), %rax
	movq	yytext(%rip), %rdx
	subq	%rdx, %rax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
	movzbl	yy_hold_char(%rip), %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	jne	.L53
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	28(%rax), %eax
	movl	%eax, yy_n_chars(%rip)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	yyin(%rip), %rdx
	movq	%rdx, (%rax)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$1, 56(%rax)
.L53:
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	yy_n_chars(%rip), %eax
	cltq
	addq	%rax, %rdx
	movq	yy_c_buf_p(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L54
	movq	yytext(%rip), %rdx
	movl	-40(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, yy_c_buf_p(%rip)
	call	yy_get_previous_state
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	yy_try_NUL_trans
	movl	%eax, -36(%rbp)
	movq	yytext(%rip), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L55
	movq	yy_c_buf_p(%rip), %rax
	addq	$1, %rax
	movq	%rax, yy_c_buf_p(%rip)
	movq	yy_c_buf_p(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.L8
.L55:
	movq	yy_c_buf_p(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L12
.L54:
	call	yy_get_next_buffer
	cmpl	$1, %eax
	je	.L57
	cmpl	$2, %eax
	je	.L58
	testl	%eax, %eax
	je	.L59
	jmp	.L52
.L57:
	movl	$0, yy_did_buffer_switch_on_eof(%rip)
	call	yywrap
	testl	%eax, %eax
	je	.L60
	movq	yytext(%rip), %rax
	movq	%rax, yy_c_buf_p(%rip)
	movl	yy_start(%rip), %eax
	subl	$1, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	addl	$33, %eax
	movl	%eax, -44(%rbp)
	jmp	.L14
.L60:
	movl	yy_did_buffer_switch_on_eof(%rip), %eax
	testl	%eax, %eax
	jne	.L65
	movq	yyin(%rip), %rax
	movq	%rax, %rdi
	call	yyrestart
	jmp	.L65
.L59:
	movq	yytext(%rip), %rdx
	movl	-40(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, yy_c_buf_p(%rip)
	call	yy_get_previous_state
	movl	%eax, -48(%rbp)
	movq	yy_c_buf_p(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	yytext(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L8
.L58:
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	yy_n_chars(%rip), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, yy_c_buf_p(%rip)
	call	yy_get_previous_state
	movl	%eax, -48(%rbp)
	movq	yy_c_buf_p(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	yytext(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L12
.L65:
	nop
	jmp	.L52
.L15:
	leaq	.LC1(%rip), %rdi
	call	yy_fatal_error
.L64:
	nop
.L52:
	jmp	.L62
.L51:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	yylex, .-yylex
	.section	.rodata
	.align 8
.LC2:
	.string	"fatal flex scanner internal error--end of buffer missed"
	.align 8
.LC3:
	.string	"fatal error - scanner input buffer overflow"
.LC4:
	.string	"input in flex scanner failed"
	.align 8
.LC5:
	.string	"out of dynamic memory in yy_get_next_buffer()"
	.text
	.type	yy_get_next_buffer, @function
yy_get_next_buffer:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	yytext(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	yy_n_chars(%rip), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rax, %rdx
	movq	yy_c_buf_p(%rip), %rax
	cmpq	%rax, %rdx
	jnb	.L67
	leaq	.LC2(%rip), %rdi
	call	yy_fatal_error
.L67:
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	52(%rax), %eax
	testl	%eax, %eax
	jne	.L68
	movq	yy_c_buf_p(%rip), %rax
	movq	%rax, %rdx
	movq	yytext(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	cmpq	$1, %rax
	jne	.L69
	movl	$1, %eax
	jmp	.L70
.L69:
	movl	$2, %eax
	jmp	.L70
.L68:
	movq	yy_c_buf_p(%rip), %rax
	movq	%rax, %rdx
	movq	yytext(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	subl	$1, %eax
	movl	%eax, -56(%rbp)
	movl	$0, -76(%rbp)
	jmp	.L71
.L72:
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	addl	$1, -76(%rbp)
.L71:
	movl	-76(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L72
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	56(%rax), %eax
	cmpl	$2, %eax
	jne	.L73
	movl	$0, yy_n_chars(%rip)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	yy_n_chars(%rip), %edx
	movl	%edx, 28(%rax)
	jmp	.L74
.L73:
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	24(%rax), %eax
	subl	-56(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.L75
.L81:
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	yy_c_buf_p(%rip), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L76
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	addl	%eax, %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jg	.L77
	movq	-24(%rbp), %rax
	movl	24(%rax), %edx
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$3, %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	jmp	.L78
.L77:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	leal	(%rax,%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
.L78:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	yyrealloc
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L79
.L76:
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
.L79:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L80
	leaq	.LC3(%rip), %rdi
	call	yy_fatal_error
.L80:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, yy_c_buf_p(%rip)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	24(%rax), %eax
	subl	-56(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -68(%rbp)
.L75:
	cmpl	$0, -68(%rbp)
	jle	.L81
	cmpl	$8192, -68(%rbp)
	jle	.L82
	movl	$8192, -68(%rbp)
.L82:
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	je	.L83
	movl	$42, -64(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L84
.L86:
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rcx
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	movl	-64(%rbp), %edx
	movb	%dl, (%rax)
	addl	$1, -60(%rbp)
.L84:
	movl	-60(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.L85
	movq	yyin(%rip), %rax
	movq	%rax, %rdi
	call	_IO_getc@PLT
	movl	%eax, -64(%rbp)
	cmpl	$-1, -64(%rbp)
	je	.L85
	cmpl	$10, -64(%rbp)
	jne	.L86
.L85:
	cmpl	$10, -64(%rbp)
	jne	.L87
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -60(%rbp)
	cltq
	addq	%rsi, %rax
	addq	%rcx, %rax
	movl	-64(%rbp), %edx
	movb	%dl, (%rax)
.L87:
	cmpl	$-1, -64(%rbp)
	jne	.L88
	movq	yyin(%rip), %rax
	movq	%rax, %rdi
	call	ferror@PLT
	testl	%eax, %eax
	je	.L88
	leaq	.LC4(%rip), %rdi
	call	yy_fatal_error
.L88:
	movl	-60(%rbp), %eax
	movl	%eax, yy_n_chars(%rip)
	jmp	.L89
.L83:
	call	__errno_location@PLT
	movl	$0, (%rax)
	jmp	.L90
.L92:
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L91
	leaq	.LC4(%rip), %rdi
	call	yy_fatal_error
.L91:
	call	__errno_location@PLT
	movl	$0, (%rax)
	movq	yyin(%rip), %rax
	movq	%rax, %rdi
	call	clearerr@PLT
.L90:
	movq	yyin(%rip), %rdx
	movl	-68(%rbp), %eax
	cltq
	movq	yy_buffer_stack(%rip), %rcx
	movq	yy_buffer_stack_top(%rip), %rsi
	salq	$3, %rsi
	addq	%rsi, %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx), %rsi
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	(%rsi,%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	call	fread@PLT
	movl	%eax, yy_n_chars(%rip)
	movl	yy_n_chars(%rip), %eax
	testl	%eax, %eax
	jne	.L89
	movq	yyin(%rip), %rax
	movq	%rax, %rdi
	call	ferror@PLT
	testl	%eax, %eax
	jne	.L92
.L89:
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	yy_n_chars(%rip), %edx
	movl	%edx, 28(%rax)
.L74:
	movl	yy_n_chars(%rip), %eax
	testl	%eax, %eax
	jne	.L93
	cmpl	$0, -56(%rbp)
	jne	.L94
	movl	$1, -72(%rbp)
	movq	yyin(%rip), %rax
	movq	%rax, %rdi
	call	yyrestart
	jmp	.L96
.L94:
	movl	$2, -72(%rbp)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$2, 56(%rax)
	jmp	.L96
.L93:
	movl	$0, -72(%rbp)
.L96:
	movl	yy_n_chars(%rip), %edx
	movl	-56(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	24(%rax), %eax
	cmpl	%eax, %ecx
	jle	.L97
	movl	yy_n_chars(%rip), %edx
	movl	-56(%rbp), %eax
	addl	%eax, %edx
	movl	yy_n_chars(%rip), %eax
	sarl	%eax
	addl	%edx, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	yy_buffer_stack(%rip), %rcx
	movq	yy_buffer_stack_top(%rip), %rsi
	salq	$3, %rsi
	addq	%rsi, %rcx
	movq	(%rcx), %rbx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	yyrealloc
	movq	%rax, 8(%rbx)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L98
	leaq	.LC5(%rip), %rdi
	call	yy_fatal_error
.L98:
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %edx
	subl	$2, %edx
	movl	%edx, 24(%rax)
.L97:
	movl	yy_n_chars(%rip), %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, yy_n_chars(%rip)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	yy_n_chars(%rip), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	yy_n_chars(%rip), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, yytext(%rip)
	movl	-72(%rbp), %eax
.L70:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	yy_get_next_buffer, .-yy_get_next_buffer
	.type	yy_get_previous_state, @function
yy_get_previous_state:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	yy_start(%rip), %eax
	movl	%eax, -12(%rbp)
	movq	yytext(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L100
.L106:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L101
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movslq	%eax, %rdx
	leaq	yy_ec(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	jmp	.L102
.L101:
	movl	$1, %eax
.L102:
	movb	%al, -13(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	yy_accept(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	testw	%ax, %ax
	je	.L104
	movl	-12(%rbp), %eax
	movl	%eax, yy_last_accepting_state(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, yy_last_accepting_cpos(%rip)
	jmp	.L104
.L105:
	movl	-12(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	yy_def(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	cwtl
	movl	%eax, -12(%rbp)
	cmpl	$78, -12(%rbp)
	jle	.L104
	movzbl	-13(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yy_meta(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movb	%al, -13(%rbp)
.L104:
	movl	-12(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	yy_base(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movswl	%ax, %edx
	movzbl	-13(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	yy_chk(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	cwtl
	cmpl	%eax, -12(%rbp)
	jne	.L105
	movl	-12(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	yy_base(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movswl	%ax, %edx
	movzbl	-13(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	yy_nxt(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	cwtl
	movl	%eax, -12(%rbp)
	addq	$1, -8(%rbp)
.L100:
	movq	yy_c_buf_p(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L106
	movl	-12(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	yy_get_previous_state, .-yy_get_previous_state
	.type	yy_try_NUL_trans, @function
yy_try_NUL_trans:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	yy_c_buf_p(%rip), %rax
	movq	%rax, -8(%rbp)
	movb	$1, -13(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	yy_accept(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	testw	%ax, %ax
	je	.L110
	movl	-20(%rbp), %eax
	movl	%eax, yy_last_accepting_state(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, yy_last_accepting_cpos(%rip)
	jmp	.L110
.L111:
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	yy_def(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	cwtl
	movl	%eax, -20(%rbp)
	cmpl	$78, -20(%rbp)
	jle	.L110
	movzbl	-13(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yy_meta(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movb	%al, -13(%rbp)
.L110:
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	yy_base(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movswl	%ax, %edx
	movzbl	-13(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	yy_chk(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	cwtl
	cmpl	%eax, -20(%rbp)
	jne	.L111
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	yy_base(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movswl	%ax, %edx
	movzbl	-13(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	yy_nxt(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	cwtl
	movl	%eax, -20(%rbp)
	cmpl	$78, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L112
	movl	-20(%rbp), %eax
	jmp	.L114
.L112:
	movl	$0, %eax
.L114:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	yy_try_NUL_trans, .-yy_try_NUL_trans
	.section	.rodata
	.align 8
.LC6:
	.string	"flex scanner push-back overflow"
	.text
	.type	yyunput, @function
yyunput:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	yy_c_buf_p(%rip), %rax
	movq	%rax, -24(%rbp)
	movzbl	yy_hold_char(%rip), %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	addq	$2, %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L116
	movl	yy_n_chars(%rip), %eax
	addl	$2, %eax
	movl	%eax, -28(%rbp)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	24(%rax), %eax
	cltq
	addq	$2, %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L117
.L118:
	subq	$1, -8(%rbp)
	subq	$1, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
.L117:
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	ja	.L118
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	cltq
	addq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	cltq
	addq	%rax, -48(%rbp)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	24(%rax), %eax
	movl	%eax, yy_n_chars(%rip)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	yy_n_chars(%rip), %edx
	movl	%edx, 28(%rax)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	addq	$2, %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L116
	leaq	.LC6(%rip), %rdi
	call	yy_fatal_error
.L116:
	subq	$1, -24(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, yytext(%rip)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, yy_hold_char(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, yy_c_buf_p(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	yyunput, .-yyunput
	.type	input, @function
input:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	yy_c_buf_p(%rip), %rax
	movzbl	yy_hold_char(%rip), %edx
	movb	%dl, (%rax)
	movq	yy_c_buf_p(%rip), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L120
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	yy_n_chars(%rip), %eax
	cltq
	addq	%rax, %rdx
	movq	yy_c_buf_p(%rip), %rax
	cmpq	%rax, %rdx
	jbe	.L121
	movq	yy_c_buf_p(%rip), %rax
	movb	$0, (%rax)
	jmp	.L120
.L121:
	movq	yy_c_buf_p(%rip), %rax
	movq	%rax, %rdx
	movq	yytext(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -8(%rbp)
	movq	yy_c_buf_p(%rip), %rax
	addq	$1, %rax
	movq	%rax, yy_c_buf_p(%rip)
	call	yy_get_next_buffer
	cmpl	$1, %eax
	je	.L122
	cmpl	$2, %eax
	je	.L123
	testl	%eax, %eax
	je	.L124
	jmp	.L120
.L123:
	movq	yyin(%rip), %rax
	movq	%rax, %rdi
	call	yyrestart
.L122:
	call	yywrap
	testl	%eax, %eax
	je	.L125
	movl	$0, %eax
	jmp	.L126
.L125:
	movl	yy_did_buffer_switch_on_eof(%rip), %eax
	testl	%eax, %eax
	jne	.L127
	movq	yyin(%rip), %rax
	movq	%rax, %rdi
	call	yyrestart
.L127:
	call	input
	jmp	.L126
.L124:
	movq	yytext(%rip), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, yy_c_buf_p(%rip)
	nop
.L120:
	movq	yy_c_buf_p(%rip), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	yy_c_buf_p(%rip), %rax
	movb	$0, (%rax)
	movq	yy_c_buf_p(%rip), %rax
	addq	$1, %rax
	movq	%rax, yy_c_buf_p(%rip)
	movq	yy_c_buf_p(%rip), %rax
	movzbl	(%rax), %eax
	movb	%al, yy_hold_char(%rip)
	movl	-4(%rbp), %eax
.L126:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	input, .-input
	.globl	yyrestart
	.type	yyrestart, @function
yyrestart:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	.L129
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L130
.L129:
	call	yyensure_buffer_stack
	movq	yyin(%rip), %rax
	movq	yy_buffer_stack(%rip), %rdx
	movq	yy_buffer_stack_top(%rip), %rcx
	salq	$3, %rcx
	leaq	(%rdx,%rcx), %rbx
	movl	$16384, %esi
	movq	%rax, %rdi
	call	yy_create_buffer
	movq	%rax, (%rbx)
.L130:
	movq	yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	.L131
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	jmp	.L132
.L131:
	movl	$0, %eax
.L132:
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	yy_init_buffer
	call	yy_load_buffer_state
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	yyrestart, .-yyrestart
	.globl	yy_switch_to_buffer
	.type	yy_switch_to_buffer, @function
yy_switch_to_buffer:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	yyensure_buffer_stack
	movq	yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	.L134
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	jmp	.L135
.L134:
	movl	$0, %eax
.L135:
	cmpq	-8(%rbp), %rax
	je	.L139
	movq	yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	.L138
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L138
	movq	yy_c_buf_p(%rip), %rax
	movzbl	yy_hold_char(%rip), %edx
	movb	%dl, (%rax)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	yy_c_buf_p(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	yy_n_chars(%rip), %edx
	movl	%edx, 28(%rax)
.L138:
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	call	yy_load_buffer_state
	movl	$1, yy_did_buffer_switch_on_eof(%rip)
	jmp	.L133
.L139:
	nop
.L133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	yy_switch_to_buffer, .-yy_switch_to_buffer
	.type	yy_load_buffer_state, @function
yy_load_buffer_state:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	28(%rax), %eax
	movl	%eax, yy_n_chars(%rip)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, yy_c_buf_p(%rip)
	movq	yy_c_buf_p(%rip), %rax
	movq	%rax, yytext(%rip)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, yyin(%rip)
	movq	yy_c_buf_p(%rip), %rax
	movzbl	(%rax), %eax
	movb	%al, yy_hold_char(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	yy_load_buffer_state, .-yy_load_buffer_state
	.section	.rodata
	.align 8
.LC7:
	.string	"out of dynamic memory in yy_create_buffer()"
	.text
	.globl	yy_create_buffer
	.type	yy_create_buffer, @function
yy_create_buffer:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$64, %edi
	call	yyalloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L142
	leaq	.LC7(%rip), %rdi
	call	yy_fatal_error
.L142:
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	addl	$2, %eax
	cltq
	movq	%rax, %rdi
	call	yyalloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L143
	leaq	.LC7(%rip), %rdi
	call	yy_fatal_error
.L143:
	movq	-8(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	yy_init_buffer
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	yy_create_buffer, .-yy_create_buffer
	.globl	yy_delete_buffer
	.type	yy_delete_buffer, @function
yy_delete_buffer:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L152
	movq	yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	.L148
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	jmp	.L149
.L148:
	movl	$0, %eax
.L149:
	cmpq	-8(%rbp), %rax
	jne	.L150
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
.L150:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L151
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	yyfree
.L151:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	yyfree
	jmp	.L145
.L152:
	nop
.L145:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	yy_delete_buffer, .-yy_delete_buffer
	.type	yy_init_buffer, @function
yy_init_buffer:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	yy_flush_buffer
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	$1, 52(%rax)
	movq	yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	.L154
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	jmp	.L155
.L154:
	movl	$0, %eax
.L155:
	cmpq	-24(%rbp), %rax
	je	.L156
	movq	-24(%rbp), %rax
	movl	$1, 44(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 48(%rax)
.L156:
	cmpq	$0, -32(%rbp)
	je	.L157
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	fileno@PLT
	movl	%eax, %edi
	call	isatty@PLT
	testl	%eax, %eax
	jle	.L157
	movl	$1, %edx
	jmp	.L158
.L157:
	movl	$0, %edx
.L158:
	movq	-24(%rbp), %rax
	movl	%edx, 36(%rax)
	call	__errno_location@PLT
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	yy_init_buffer, .-yy_init_buffer
	.globl	yy_flush_buffer
	.type	yy_flush_buffer, @function
yy_flush_buffer:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L164
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 40(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 56(%rax)
	movq	yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	.L162
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	jmp	.L163
.L162:
	movl	$0, %eax
.L163:
	cmpq	-8(%rbp), %rax
	jne	.L159
	call	yy_load_buffer_state
	jmp	.L159
.L164:
	nop
.L159:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	yy_flush_buffer, .-yy_flush_buffer
	.globl	yypush_buffer_state
	.type	yypush_buffer_state, @function
yypush_buffer_state:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L170
	call	yyensure_buffer_stack
	movq	yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	.L168
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L168
	movq	yy_c_buf_p(%rip), %rax
	movzbl	yy_hold_char(%rip), %edx
	movb	%dl, (%rax)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	yy_c_buf_p(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	yy_n_chars(%rip), %edx
	movl	%edx, 28(%rax)
.L168:
	movq	yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	.L169
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L169
	movq	yy_buffer_stack_top(%rip), %rax
	addq	$1, %rax
	movq	%rax, yy_buffer_stack_top(%rip)
.L169:
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	call	yy_load_buffer_state
	movl	$1, yy_did_buffer_switch_on_eof(%rip)
	jmp	.L165
.L170:
	nop
.L165:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	yypush_buffer_state, .-yypush_buffer_state
	.globl	yypop_buffer_state
	.type	yypop_buffer_state, @function
yypop_buffer_state:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	.L178
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L178
	movq	yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	.L175
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	jmp	.L176
.L175:
	movl	$0, %eax
.L176:
	movq	%rax, %rdi
	call	yy_delete_buffer
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	movq	yy_buffer_stack_top(%rip), %rax
	testq	%rax, %rax
	je	.L177
	movq	yy_buffer_stack_top(%rip), %rax
	subq	$1, %rax
	movq	%rax, yy_buffer_stack_top(%rip)
.L177:
	movq	yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	.L171
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L171
	call	yy_load_buffer_state
	movl	$1, yy_did_buffer_switch_on_eof(%rip)
	jmp	.L171
.L178:
	nop
.L171:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	yypop_buffer_state, .-yypop_buffer_state
	.section	.rodata
	.align 8
.LC8:
	.string	"out of dynamic memory in yyensure_buffer_stack()"
	.text
	.type	yyensure_buffer_stack, @function
yyensure_buffer_stack:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	jne	.L180
	movq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	yyalloc
	movq	%rax, yy_buffer_stack(%rip)
	movq	yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	jne	.L181
	leaq	.LC8(%rip), %rdi
	call	yy_fatal_error
.L181:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	yy_buffer_stack(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movq	%rax, yy_buffer_stack_max(%rip)
	movq	$0, yy_buffer_stack_top(%rip)
	jmp	.L179
.L180:
	movq	yy_buffer_stack_max(%rip), %rax
	leaq	-1(%rax), %rdx
	movq	yy_buffer_stack_top(%rip), %rax
	cmpq	%rax, %rdx
	ja	.L179
	movq	$8, -16(%rbp)
	movq	yy_buffer_stack_max(%rip), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	yy_buffer_stack(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	yyrealloc
	movq	%rax, yy_buffer_stack(%rip)
	movq	yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	jne	.L183
	leaq	.LC8(%rip), %rdi
	call	yy_fatal_error
.L183:
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_max(%rip), %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movq	%rax, yy_buffer_stack_max(%rip)
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	yyensure_buffer_stack, .-yyensure_buffer_stack
	.section	.rodata
	.align 8
.LC9:
	.string	"out of dynamic memory in yy_scan_buffer()"
	.text
	.globl	yy_scan_buffer
	.type	yy_scan_buffer, @function
yy_scan_buffer:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$1, -32(%rbp)
	jbe	.L185
	movq	-32(%rbp), %rax
	leaq	-2(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L185
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L186
.L185:
	movl	$0, %eax
	jmp	.L187
.L186:
	movl	$64, %edi
	call	yyalloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L188
	leaq	.LC9(%rip), %rdi
	call	yy_fatal_error
.L188:
	movq	-32(%rbp), %rax
	subl	$2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	24(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 40(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	yy_switch_to_buffer
	movq	-8(%rbp), %rax
.L187:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	yy_scan_buffer, .-yy_scan_buffer
	.globl	yy_scan_string
	.type	yy_scan_string, @function
yy_scan_string:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	yy_scan_bytes
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	yy_scan_string, .-yy_scan_string
	.section	.rodata
	.align 8
.LC10:
	.string	"out of dynamic memory in yy_scan_bytes()"
.LC11:
	.string	"bad buffer in yy_scan_bytes()"
	.text
	.globl	yy_scan_bytes
	.type	yy_scan_bytes, @function
yy_scan_bytes:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	-44(%rbp), %eax
	addl	$2, %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	yyalloc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L192
	leaq	.LC10(%rip), %rdi
	call	yy_fatal_error
.L192:
	movl	$0, -28(%rbp)
	jmp	.L193
.L194:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -28(%rbp)
.L193:
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L194
	movl	-44(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-44(%rbp), %edx
	movslq	%edx, %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	yy_scan_buffer
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L195
	leaq	.LC11(%rip), %rdi
	call	yy_fatal_error
.L195:
	movq	-8(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	yy_scan_bytes, .-yy_scan_bytes
	.section	.rodata
.LC12:
	.string	"%s\n"
	.text
	.type	yy_fatal_error, @function
yy_fatal_error:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	stderr(%rip), %rax
	movq	-8(%rbp), %rdx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$2, %edi
	call	exit@PLT
	.cfi_endproc
.LFE24:
	.size	yy_fatal_error, .-yy_fatal_error
	.globl	yyget_lineno
	.type	yyget_lineno, @function
yyget_lineno:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	yylineno(%rip), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	yyget_lineno, .-yyget_lineno
	.globl	yyget_in
	.type	yyget_in, @function
yyget_in:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	yyin(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	yyget_in, .-yyget_in
	.globl	yyget_out
	.type	yyget_out, @function
yyget_out:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	yyout(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	yyget_out, .-yyget_out
	.globl	yyget_leng
	.type	yyget_leng, @function
yyget_leng:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	yyleng(%rip), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	yyget_leng, .-yyget_leng
	.globl	yyget_text
	.type	yyget_text, @function
yyget_text:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	yytext(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	yyget_text, .-yyget_text
	.globl	yyset_lineno
	.type	yyset_lineno, @function
yyset_lineno:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, yylineno(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	yyset_lineno, .-yyset_lineno
	.globl	yyset_in
	.type	yyset_in, @function
yyset_in:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, yyin(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	yyset_in, .-yyset_in
	.globl	yyset_out
	.type	yyset_out, @function
yyset_out:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, yyout(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	yyset_out, .-yyset_out
	.globl	yyget_debug
	.type	yyget_debug, @function
yyget_debug:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	yy_flex_debug(%rip), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	yyget_debug, .-yyget_debug
	.globl	yyset_debug
	.type	yyset_debug, @function
yyset_debug:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, yy_flex_debug(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	yyset_debug, .-yyset_debug
	.type	yy_init_globals, @function
yy_init_globals:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$0, yy_buffer_stack(%rip)
	movq	$0, yy_buffer_stack_top(%rip)
	movq	$0, yy_buffer_stack_max(%rip)
	movq	$0, yy_c_buf_p(%rip)
	movl	$0, yy_init(%rip)
	movl	$0, yy_start(%rip)
	movq	$0, yyin(%rip)
	movq	$0, yyout(%rip)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	yy_init_globals, .-yy_init_globals
	.globl	yylex_destroy
	.type	yylex_destroy, @function
yylex_destroy:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	jmp	.L217
.L221:
	movq	yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	.L218
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	jmp	.L219
.L218:
	movl	$0, %eax
.L219:
	movq	%rax, %rdi
	call	yy_delete_buffer
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	call	yypop_buffer_state
.L217:
	movq	yy_buffer_stack(%rip), %rax
	testq	%rax, %rax
	je	.L220
	movq	yy_buffer_stack(%rip), %rax
	movq	yy_buffer_stack_top(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L221
.L220:
	movq	yy_buffer_stack(%rip), %rax
	movq	%rax, %rdi
	call	yyfree
	movq	$0, yy_buffer_stack(%rip)
	call	yy_init_globals
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	yylex_destroy, .-yylex_destroy
	.globl	yyalloc
	.type	yyalloc, @function
yyalloc:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	yyalloc, .-yyalloc
	.globl	yyrealloc
	.type	yyrealloc, @function
yyrealloc:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	yyrealloc, .-yyrealloc
	.globl	yyfree
	.type	yyfree, @function
yyfree:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	yyfree, .-yyfree
	.globl	yywrap
	.type	yywrap, @function
yywrap:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	yywrap, .-yywrap
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
