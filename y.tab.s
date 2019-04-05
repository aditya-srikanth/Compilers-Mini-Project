	.file	"y.tab.c"
	.text
	.globl	masterPath
	.section	.rodata
.LC0:
	.string	"./master"
	.section	.data.rel.local,"aw",@progbits
	.align 8
	.type	masterPath, @object
	.size	masterPath, 8
masterPath:
	.quad	.LC0
	.globl	dataPath
	.section	.rodata
.LC1:
	.string	"./data"
	.section	.data.rel.local
	.align 8
	.type	dataPath, @object
	.size	dataPath, 8
dataPath:
	.quad	.LC1
	.text
	.globl	strlwr
	.type	strlwr, @function
strlwr:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L2
.L3:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, %ecx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -20(%rbp)
.L2:
	movl	-20(%rbp), %eax
	movslq	%eax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	jb	.L3
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	strlwr, .-strlwr
	.globl	strupr
	.type	strupr, @function
strupr:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L5
.L6:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	toupper@PLT
	movl	%eax, %ecx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -20(%rbp)
.L5:
	movl	-20(%rbp), %eax
	movslq	%eax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	jb	.L6
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	strupr, .-strupr
	.section	.rodata
.LC2:
	.string	"Now printing"
.LC3:
	.string	"%d "
.LC4:
	.string	"%s "
.LC5:
	.string	"Invalid Type"
	.text
	.globl	print_list
	.type	print_list, @function
print_list:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	jmp	.L8
.L15:
	movq	-24(%rbp), %rax
	movl	100400(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L9
.L14:
	movq	-24(%rbp), %rdx
	movl	-8(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L11
	cmpl	$1, %eax
	je	.L12
	jmp	.L16
.L11:
	movq	-24(%rbp), %rdx
	movl	-8(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L13
.L12:
	movl	-8(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L13
.L16:
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
.L13:
	addl	$1, -8(%rbp)
.L9:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L14
	movl	$10, %edi
	call	putchar@PLT
	movq	-24(%rbp), %rax
	movq	100408(%rax), %rax
	movq	%rax, -24(%rbp)
.L8:
	cmpq	$0, -24(%rbp)
	jne	.L15
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	print_list, .-print_list
	.section	.rodata
.LC6:
	.string	"The list after updation"
	.text
	.globl	push_back
	.type	push_back, @function
push_back:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L18
	movl	$100416, %edi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rbp), %rcx
	movl	$100404, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 100408(%rax)
	jmp	.L19
.L18:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L20
.L21:
	movq	-16(%rbp), %rax
	movq	100408(%rax), %rax
	movq	%rax, -16(%rbp)
.L20:
	movq	-16(%rbp), %rax
	movq	100408(%rax), %rax
	testq	%rax, %rax
	jne	.L21
	movl	$100416, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	16(%rbp), %rcx
	movl	$100404, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movq	$0, 100408(%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 100408(%rax)
.L19:
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	print_list
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	push_back, .-push_back
	.globl	find
	.type	find, @function
find:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	jmp	.L23
.L29:
	movb	$1, -1(%rbp)
	movl	16(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L24
	movl	16(%rbp), %eax
	cmpl	$1, %eax
	jne	.L25
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	20(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L24
	movb	$0, -1(%rbp)
	jmp	.L24
.L25:
	movl	20(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	je	.L24
	movb	$0, -1(%rbp)
.L24:
	cmpb	$0, -1(%rbp)
	je	.L27
	movl	$1, %eax
	jmp	.L28
.L27:
	movq	-24(%rbp), %rax
	movq	100408(%rax), %rax
	movq	%rax, -24(%rbp)
.L23:
	cmpq	$0, -24(%rbp)
	jne	.L29
	movl	$0, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	find, .-find
	.comm	schema,16,16
	.globl	table_records
	.bss
	.align 8
	.type	table_records, @object
	.size	table_records, 8
table_records:
	.zero	8
	.globl	string_list_ptr
	.align 8
	.type	string_list_ptr, @object
	.size	string_list_ptr, 8
string_list_ptr:
	.zero	8
	.section	.rodata
	.align 32
	.type	yytranslate, @object
	.size	yytranslate, 286
yytranslate:
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.align 32
	.type	yypact, @object
	.size	yypact, 79
yypact:
	.byte	2
	.byte	-2
	.byte	10
	.byte	20
	.byte	23
	.byte	31
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	3
	.byte	28
	.byte	18
	.byte	25
	.byte	32
	.byte	-41
	.byte	-41
	.byte	21
	.byte	24
	.byte	11
	.byte	-22
	.byte	34
	.byte	11
	.byte	11
	.byte	-41
	.byte	3
	.byte	-41
	.byte	35
	.byte	-41
	.byte	-41
	.byte	29
	.byte	11
	.byte	36
	.byte	38
	.byte	-41
	.byte	-14
	.byte	-22
	.byte	33
	.byte	-41
	.byte	-2
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	19
	.byte	-7
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	22
	.byte	-1
	.byte	29
	.byte	-41
	.byte	39
	.byte	-7
	.byte	9
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	-14
	.byte	-41
	.byte	17
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	26
	.byte	-41
	.byte	18
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	43
	.byte	-14
	.byte	-7
	.align 32
	.type	yydefact, @object
	.size	yydefact, 79
yydefact:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	13
	.byte	0
	.byte	12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	0
	.byte	40
	.byte	0
	.byte	38
	.byte	39
	.byte	37
	.byte	0
	.byte	0
	.byte	0
	.byte	11
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	28
	.byte	6
	.byte	15
	.byte	18
	.byte	19
	.byte	0
	.byte	0
	.byte	37
	.byte	35
	.byte	0
	.byte	9
	.byte	0
	.byte	20
	.byte	16
	.byte	17
	.byte	0
	.byte	26
	.byte	0
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	0
	.byte	36
	.byte	0
	.byte	21
	.byte	14
	.byte	24
	.byte	23
	.byte	27
	.byte	22
	.byte	0
	.byte	0
	.byte	8
	.align 16
	.type	yypgoto, @object
	.size	yypgoto, 24
yypgoto:
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	13
	.byte	37
	.byte	-41
	.byte	-40
	.byte	-41
	.byte	-39
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	-41
	.byte	-16
	.byte	4
	.byte	27
	.byte	-13
	.align 16
	.type	yydefgoto, @object
	.size	yydefgoto, 24
yydefgoto:
	.byte	-1
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	11
	.byte	17
	.byte	18
	.byte	44
	.byte	58
	.byte	45
	.byte	46
	.byte	47
	.byte	73
	.byte	48
	.byte	60
	.byte	75
	.byte	49
	.byte	67
	.byte	21
	.byte	37
	.byte	30
	.byte	27
	.align 32
	.type	yytable, @object
	.size	yytable, 64
yytable:
	.byte	53
	.byte	54
	.byte	41
	.byte	55
	.byte	42
	.byte	1
	.byte	28
	.byte	29
	.byte	2
	.byte	32
	.byte	33
	.byte	3
	.byte	56
	.byte	57
	.byte	10
	.byte	4
	.byte	43
	.byte	12
	.byte	38
	.byte	71
	.byte	61
	.byte	62
	.byte	63
	.byte	64
	.byte	65
	.byte	66
	.byte	70
	.byte	13
	.byte	56
	.byte	57
	.byte	14
	.byte	15
	.byte	19
	.byte	16
	.byte	20
	.byte	22
	.byte	23
	.byte	78
	.byte	24
	.byte	25
	.byte	35
	.byte	26
	.byte	31
	.byte	40
	.byte	36
	.byte	72
	.byte	-25
	.byte	39
	.byte	77
	.byte	59
	.byte	51
	.byte	69
	.byte	52
	.byte	76
	.byte	68
	.byte	74
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	34
	.byte	50
	.align 32
	.type	yycheck, @object
	.size	yycheck, 64
yycheck:
	.byte	40
	.byte	41
	.byte	16
	.byte	42
	.byte	18
	.byte	3
	.byte	28
	.byte	29
	.byte	6
	.byte	22
	.byte	23
	.byte	9
	.byte	19
	.byte	20
	.byte	16
	.byte	13
	.byte	30
	.byte	7
	.byte	31
	.byte	58
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	17
	.byte	7
	.byte	19
	.byte	20
	.byte	7
	.byte	0
	.byte	4
	.byte	30
	.byte	16
	.byte	10
	.byte	4
	.byte	77
	.byte	17
	.byte	15
	.byte	5
	.byte	30
	.byte	8
	.byte	5
	.byte	15
	.byte	28
	.byte	27
	.byte	11
	.byte	5
	.byte	27
	.byte	17
	.byte	12
	.byte	39
	.byte	69
	.byte	50
	.byte	29
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	25
	.byte	36
	.align 32
	.type	yystos, @object
	.size	yystos, 79
yystos:
	.byte	0
	.byte	3
	.byte	6
	.byte	9
	.byte	13
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	16
	.byte	37
	.byte	7
	.byte	7
	.byte	7
	.byte	0
	.byte	30
	.byte	38
	.byte	39
	.byte	4
	.byte	16
	.byte	51
	.byte	10
	.byte	4
	.byte	17
	.byte	15
	.byte	30
	.byte	54
	.byte	28
	.byte	29
	.byte	53
	.byte	8
	.byte	54
	.byte	54
	.byte	38
	.byte	5
	.byte	15
	.byte	52
	.byte	54
	.byte	11
	.byte	5
	.byte	16
	.byte	18
	.byte	30
	.byte	40
	.byte	42
	.byte	43
	.byte	44
	.byte	46
	.byte	49
	.byte	53
	.byte	17
	.byte	37
	.byte	40
	.byte	40
	.byte	42
	.byte	19
	.byte	20
	.byte	41
	.byte	27
	.byte	47
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	50
	.byte	52
	.byte	12
	.byte	17
	.byte	42
	.byte	28
	.byte	45
	.byte	29
	.byte	48
	.byte	51
	.byte	5
	.byte	40
	.align 32
	.type	yyr1, @object
	.size	yyr1, 41
yyr1:
	.byte	0
	.byte	31
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	38
	.byte	39
	.byte	40
	.byte	40
	.byte	41
	.byte	41
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	43
	.byte	44
	.byte	45
	.byte	46
	.byte	47
	.byte	48
	.byte	49
	.byte	50
	.byte	50
	.byte	50
	.byte	50
	.byte	50
	.byte	50
	.byte	51
	.byte	52
	.byte	52
	.byte	53
	.byte	53
	.byte	54
	.align 32
	.type	yyr2, @object
	.size	yyr2, 41
yyr2:
	.byte	0
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	6
	.byte	5
	.byte	10
	.byte	6
	.byte	3
	.byte	3
	.byte	1
	.byte	1
	.byte	3
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	3
	.byte	3
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
	.byte	4
	.byte	3
	.byte	0
	.byte	1
	.byte	1
	.byte	1
.LC7:
	.string	"Deleting"
	.text
	.type	yydestruct, @function
yydestruct:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L32
	leaq	.LC7(%rip), %rax
	movq	%rax, -8(%rbp)
.L32:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	yydestruct, .-yydestruct
	.comm	yychar,4,4
	.comm	yylval,1016,32
	.comm	yynerrs,4,4
	.section	.rodata
.LC8:
	.string	"Get query"
.LC9:
	.string	"Insert query"
.LC10:
	.string	"Update query"
.LC11:
	.string	"Delete query"
.LC12:
	.string	"the dir handle is %p\n"
	.align 8
.LC13:
	.string	"the type is %d, STRING %d INT %d\n "
.LC14:
	.string	"%s/%s.txt"
.LC15:
	.string	"path to deletion"
.LC16:
	.string	"%d.txt"
.LC17:
	.string	"%s/%s"
.LC18:
	.string	"entered NUMERICAL_CONDITION"
.LC19:
	.string	"schema field name %s \n"
.LC20:
	.string	"values in iter %d\n"
.LC21:
	.string	"=="
.LC22:
	.string	"eq"
.LC23:
	.string	"!="
.LC24:
	.string	"neq"
.LC25:
	.string	">"
.LC26:
	.string	"gt"
.LC27:
	.string	"<"
.LC28:
	.string	"lt"
.LC29:
	.string	">="
.LC30:
	.string	"geq"
.LC31:
	.string	"<="
.LC32:
	.string	"leq"
.LC33:
	.string	"="
.LC34:
	.string	"FIELD NOT FOUND, CHECK QUERY"
	.align 8
.LC35:
	.string	"Need more fields in the definition? contact the developer"
	.align 8
.LC36:
	.string	"This datatype has not been defined"
	.align 8
.LC37:
	.string	"Illegal type stopping execution"
.LC38:
	.string	"path to schema is %s\n"
.LC39:
	.string	"r+"
.LC40:
	.string	"Table Schema found!"
.LC41:
	.string	"The table is found"
.LC42:
	.string	":"
.LC43:
	.string	"string\n"
.LC44:
	.string	"int\n"
.LC45:
	.string	"Number of  Attributes: %d\n"
.LC46:
	.string	"%s\t"
.LC47:
	.string	"r"
.LC48:
	.string	"\t"
.LC49:
	.string	"THE PATH TO THE TABLE IS"
.LC50:
	.string	"syntax error"
.LC51:
	.string	"Error: discarding"
.LC52:
	.string	"Error: popping"
.LC53:
	.string	"memory exhausted"
.LC54:
	.string	"Cleanup: discarding lookahead"
.LC55:
	.string	"Cleanup: popping"
	.text
	.globl	yyparse
	.type	yyparse, @function
yyparse:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$309400, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -309376(%rbp)
	movl	$0, -309372(%rbp)
	leaq	-309088(%rbp), %rax
	movq	%rax, -309312(%rbp)
	movq	-309312(%rbp), %rax
	movq	%rax, -309304(%rbp)
	leaq	-207248(%rbp), %rax
	movq	%rax, -309296(%rbp)
	movq	-309296(%rbp), %rax
	movq	%rax, -309288(%rbp)
	movq	$200, -309280(%rbp)
	movl	$0, -309392(%rbp)
	movl	$0, -309388(%rbp)
	movl	$0, yynerrs(%rip)
	movl	$-2, yychar(%rip)
	jmp	.L34
.L35:
	addq	$2, -309304(%rbp)
.L34:
	movl	-309392(%rbp), %eax
	movl	%eax, %edx
	movq	-309304(%rbp), %rax
	movw	%dx, (%rax)
	movq	-309280(%rbp), %rax
	addq	%rax, %rax
	leaq	-2(%rax), %rdx
	movq	-309312(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -309304(%rbp)
	jb	.L36
	movq	-309304(%rbp), %rdx
	movq	-309312(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	%rax
	addq	$1, %rax
	movq	%rax, -309232(%rbp)
	cmpq	$9999, -309280(%rbp)
	ja	.L218
	salq	-309280(%rbp)
	cmpq	$10000, -309280(%rbp)
	jbe	.L39
	movq	$10000, -309280(%rbp)
.L39:
	movq	-309312(%rbp), %rax
	movq	%rax, -309224(%rbp)
	movq	-309280(%rbp), %rax
	imulq	$1018, %rax, %rax
	addq	$1015, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -309216(%rbp)
	cmpq	$0, -309216(%rbp)
	je	.L219
	movq	-309232(%rbp), %rax
	leaq	(%rax,%rax), %rcx
	movq	-309216(%rbp), %rdx
	movq	-309312(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	%rax, %rsi
	call	memcpy@PLT
	movq	-309216(%rbp), %rax
	movq	%rax, -309312(%rbp)
	movq	-309280(%rbp), %rax
	addq	%rax, %rax
	addq	$1015, %rax
	movq	%rax, -309208(%rbp)
	movq	-309208(%rbp), %rax
	shrq	$3, %rax
	movabsq	$2323999253380730913, %rdx
	mulq	%rdx
	shrq	$4, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, -309216(%rbp)
	movq	-309232(%rbp), %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	movq	-309216(%rbp), %rdx
	movq	-309296(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-309216(%rbp), %rax
	movq	%rax, -309296(%rbp)
	movq	-309280(%rbp), %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	$1015, %rax
	movq	%rax, -309200(%rbp)
	movq	-309200(%rbp), %rax
	shrq	$3, %rax
	movabsq	$2323999253380730913, %rdx
	mulq	%rdx
	shrq	$4, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, -309216(%rbp)
	leaq	-309088(%rbp), %rax
	cmpq	%rax, -309224(%rbp)
	je	.L41
	movq	-309224(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L41:
	movq	-309232(%rbp), %rax
	addq	%rax, %rax
	leaq	-2(%rax), %rdx
	movq	-309312(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -309304(%rbp)
	movq	-309232(%rbp), %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	leaq	-1016(%rax), %rdx
	movq	-309296(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -309288(%rbp)
	movq	-309280(%rbp), %rax
	addq	%rax, %rax
	leaq	-2(%rax), %rdx
	movq	-309312(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -309304(%rbp)
	jnb	.L220
.L36:
	cmpl	$15, -309392(%rbp)
	je	.L221
	nop
.L45:
	movl	-309392(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yypact(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -309384(%rbp)
	cmpl	$-41, -309384(%rbp)
	je	.L222
	movl	yychar(%rip), %eax
	cmpl	$-2, %eax
	jne	.L48
	movl	$0, %eax
	call	yylex@PLT
	movl	%eax, yychar(%rip)
.L48:
	movl	yychar(%rip), %eax
	testl	%eax, %eax
	jg	.L49
	movl	$0, -309376(%rbp)
	movl	-309376(%rbp), %eax
	movl	%eax, yychar(%rip)
	jmp	.L50
.L49:
	movl	yychar(%rip), %eax
	cmpl	$285, %eax
	ja	.L51
	movl	yychar(%rip), %eax
	movslq	%eax, %rdx
	leaq	yytranslate(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	jmp	.L52
.L51:
	movl	$2, %eax
.L52:
	movl	%eax, -309376(%rbp)
.L50:
	movl	-309376(%rbp), %eax
	addl	%eax, -309384(%rbp)
	cmpl	$0, -309384(%rbp)
	js	.L223
	cmpl	$63, -309384(%rbp)
	jg	.L223
	movl	-309384(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yycheck(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, -309376(%rbp)
	jne	.L223
	movl	-309384(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yytable(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -309384(%rbp)
	cmpl	$0, -309384(%rbp)
	jg	.L53
	negl	-309384(%rbp)
	jmp	.L54
.L53:
	cmpl	$0, -309388(%rbp)
	je	.L55
	subl	$1, -309388(%rbp)
.L55:
	movl	$-2, yychar(%rip)
	movl	-309384(%rbp), %eax
	movl	%eax, -309392(%rbp)
	addq	$1016, -309288(%rbp)
	movq	-309288(%rbp), %rax
	movq	%rax, %rdi
	leaq	yylval(%rip), %rax
	movl	$127, %edx
	movq	%rax, %rsi
	movq	%rdx, %rcx
	rep movsq
	jmp	.L35
.L222:
	nop
	jmp	.L47
.L223:
	nop
.L47:
	movl	-309392(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yydefact(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -309384(%rbp)
	cmpl	$0, -309384(%rbp)
	je	.L224
	nop
.L54:
	movl	-309384(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yyr2(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -309372(%rbp)
	movl	$1, %eax
	subl	-309372(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-309288(%rbp), %rax
	addq	%rax, %rdx
	leaq	-308688(%rbp), %rax
	movq	%rdx, %rsi
	movl	$127, %edx
	movq	%rax, %rdi
	movq	%rdx, %rcx
	rep movsq
	cmpl	$40, -309384(%rbp)
	ja	.L225
	movl	-309384(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L60(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L60(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L60:
	.long	.L225-.L60
	.long	.L225-.L60
	.long	.L59-.L60
	.long	.L61-.L60
	.long	.L62-.L60
	.long	.L63-.L60
	.long	.L225-.L60
	.long	.L225-.L60
	.long	.L225-.L60
	.long	.L67-.L60
	.long	.L68-.L60
	.long	.L69-.L60
	.long	.L70-.L60
	.long	.L71-.L60
	.long	.L72-.L60
	.long	.L73-.L60
	.long	.L74-.L60
	.long	.L75-.L60
	.long	.L76-.L60
	.long	.L77-.L60
	.long	.L78-.L60
	.long	.L79-.L60
	.long	.L80-.L60
	.long	.L81-.L60
	.long	.L82-.L60
	.long	.L83-.L60
	.long	.L84-.L60
	.long	.L85-.L60
	.long	.L86-.L60
	.long	.L87-.L60
	.long	.L88-.L60
	.long	.L89-.L60
	.long	.L90-.L60
	.long	.L91-.L60
	.long	.L92-.L60
	.long	.L93-.L60
	.long	.L94-.L60
	.long	.L95-.L60
	.long	.L96-.L60
	.long	.L97-.L60
	.long	.L98-.L60
	.text
.L59:
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	jmp	.L99
.L61:
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	jmp	.L99
.L62:
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	jmp	.L99
.L63:
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	jmp	.L99
.L67:
	movq	-309288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -309272(%rbp)
	movq	-309272(%rbp), %rax
	movq	%rax, %rdi
	call	print_list
	movq	-309288(%rbp), %rax
	subq	$2032, %rax
	movq	%rax, %rdi
	call	opendir@PLT
	movq	%rax, -309104(%rbp)
	movl	$2, -309332(%rbp)
	jmp	.L100
.L109:
	movq	-309104(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L101
.L108:
	movq	-309272(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-309272(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ecx
	movq	-309272(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-309272(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-309272(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L103
	cmpl	$1, %eax
	jne	.L102
	movq	-309096(%rbp), %rax
	leaq	19(%rax), %rdx
	movq	-309272(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L226
	movq	-309096(%rbp), %rax
	leaq	19(%rax), %rdx
	movq	-309288(%rbp), %rax
	subq	$2032, %rax
	movq	%rax, %rsi
	leaq	-1024(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	leaq	-1024(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-1024(%rbp), %rax
	movq	%rax, %rdi
	call	remove@PLT
	jmp	.L226
.L103:
	movl	$3, -309332(%rbp)
	movq	-309272(%rbp), %rax
	movl	4(%rax), %edx
	leaq	-2032(%rbp), %rax
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movq	-309096(%rbp), %rax
	leaq	19(%rax), %rdx
	leaq	-2032(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L227
	movq	-309096(%rbp), %rax
	leaq	19(%rax), %rdx
	movq	-309288(%rbp), %rax
	subq	$2032, %rax
	movq	%rax, %rsi
	leaq	-1024(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	leaq	-1024(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-1024(%rbp), %rax
	movq	%rax, %rdi
	call	remove@PLT
	nop
	jmp	.L227
.L226:
	nop
	jmp	.L102
.L227:
	nop
.L102:
	movq	-309272(%rbp), %rax
	movq	100408(%rax), %rax
	movq	%rax, -309272(%rbp)
.L101:
	cmpq	$0, -309272(%rbp)
	jne	.L108
.L100:
	movq	-309104(%rbp), %rax
	movq	%rax, %rdi
	call	readdir@PLT
	movq	%rax, -309096(%rbp)
	cmpq	$0, -309096(%rbp)
	jne	.L109
	jmp	.L99
.L68:
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	jmp	.L99
.L69:
	movl	$1004, %edi
	call	malloc@PLT
	movq	%rax, -309112(%rbp)
	movq	-309288(%rbp), %rax
	subq	$2032, %rax
	movq	%rax, %rdx
	movq	-309112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-309288(%rbp), %rax
	subq	$2032, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-309112(%rbp), %rax
	movl	%edx, 1000(%rax)
	movq	-309288(%rbp), %rax
	movq	(%rax), %rax
	movl	1016(%rax), %edx
	movq	-309288(%rbp), %rax
	movq	(%rax), %rax
	addl	$1, %edx
	movl	%edx, 1016(%rax)
	movq	-308688(%rbp), %rax
	movq	-309112(%rbp), %rdx
	movq	%rdx, 1008(%rax)
	jmp	.L99
.L70:
	movl	$1004, %edi
	call	malloc@PLT
	movq	%rax, -309120(%rbp)
	movq	-309288(%rbp), %rdx
	movq	-309120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-309288(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-309120(%rbp), %rax
	movl	%edx, 1000(%rax)
	movq	-309120(%rbp), %rax
	movl	$1, 1016(%rax)
	movq	-309120(%rbp), %rax
	movq	%rax, -308688(%rbp)
	jmp	.L99
.L71:
	movq	-309288(%rbp), %rdx
	leaq	-308688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L99
.L72:
	movq	$0, -308688(%rbp)
	movq	-309288(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rax
	movq	%rax, -309264(%rbp)
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L110
	jmp	.L111
.L114:
	movq	-309288(%rbp), %rax
	movq	(%rax), %rbx
	movq	-309264(%rbp), %rax
	subq	$100416, %rsp
	movq	%rsp, %rdx
	movq	%rdx, %rcx
	movl	$100416, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	%rbx, %rdi
	call	find
	addq	$100416, %rsp
	testb	%al, %al
	je	.L231
	leaq	-308688(%rbp), %rbx
	subq	$8, %rsp
	movq	-309264(%rbp), %rax
	subq	$100408, %rsp
	movq	%rsp, %rdx
	movq	%rdx, %rcx
	movl	$100404, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	%rbx, %rdi
	call	push_back
	addq	$100416, %rsp
	movq	-309264(%rbp), %rax
	movq	100408(%rax), %rax
	movq	%rax, -309264(%rbp)
	jmp	.L111
.L231:
	nop
.L111:
	cmpq	$0, -309264(%rbp)
	jne	.L114
	jmp	.L99
.L110:
	movq	-309288(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	movq	-309288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -309264(%rbp)
	jmp	.L116
.L118:
	movq	-308688(%rbp), %rbx
	movq	-309264(%rbp), %rax
	subq	$100416, %rsp
	movq	%rsp, %rdx
	movq	%rdx, %rcx
	movl	$100416, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	%rbx, %rdi
	call	find
	addq	$100416, %rsp
	xorl	$1, %eax
	testb	%al, %al
	je	.L117
	leaq	-308688(%rbp), %rbx
	subq	$8, %rsp
	movq	-309264(%rbp), %rax
	subq	$100408, %rsp
	movq	%rsp, %rdx
	movq	%rdx, %rcx
	movl	$100404, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	%rbx, %rdi
	call	push_back
	addq	$100416, %rsp
.L117:
	movq	-309264(%rbp), %rax
	movq	100408(%rax), %rax
	movq	%rax, -309264(%rbp)
.L116:
	cmpq	$0, -309264(%rbp)
	jne	.L118
	jmp	.L99
.L73:
	movq	-309288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	jmp	.L99
.L74:
	movl	$1, -308688(%rbp)
	jmp	.L99
.L75:
	movl	$0, -308688(%rbp)
	jmp	.L99
.L76:
	movq	-309288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	jmp	.L99
.L77:
	movq	-309288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	jmp	.L99
.L78:
	movq	$0, -308688(%rbp)
	movq	table_records(%rip), %rax
	movq	%rax, -309128(%rbp)
	jmp	.L119
.L121:
	movq	-309288(%rbp), %rax
	movq	(%rax), %rbx
	movq	-309128(%rbp), %rax
	subq	$100416, %rsp
	movq	%rsp, %rdx
	movq	%rdx, %rcx
	movl	$100416, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	%rbx, %rdi
	call	find
	addq	$100416, %rsp
	testb	%al, %al
	je	.L120
	jmp	.L119
.L120:
	leaq	-308688(%rbp), %rbx
	subq	$8, %rsp
	movq	-309128(%rbp), %rax
	subq	$100408, %rsp
	movq	%rsp, %rdx
	movq	%rdx, %rcx
	movl	$100404, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	%rbx, %rdi
	call	push_back
	addq	$100416, %rsp
.L119:
	cmpq	$0, -309128(%rbp)
	jne	.L121
	movq	-309128(%rbp), %rax
	movq	100408(%rax), %rax
	movq	%rax, -309128(%rbp)
	jmp	.L99
.L79:
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	jmp	.L99
.L80:
	movq	$0, -308688(%rbp)
	leaq	.LC18(%rip), %rdi
	call	puts@PLT
	movq	table_records(%rip), %rax
	movq	%rax, -309256(%rbp)
	movq	table_records(%rip), %rax
	movq	%rax, %rdi
	call	print_list
	movl	$0, -309368(%rbp)
	movl	$0, -309364(%rbp)
	jmp	.L122
.L125:
	movq	-309288(%rbp), %rax
	subq	$2032, %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	schema(%rip), %rdx
	movl	-309364(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movq	-309288(%rbp), %rdx
	subq	$2032, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L123
	movl	-309364(%rbp), %eax
	movl	%eax, -309368(%rbp)
	jmp	.L124
.L123:
	addl	$1, -309364(%rbp)
.L122:
	movl	8+schema(%rip), %eax
	cmpl	%eax, -309364(%rbp)
	jl	.L125
.L124:
	jmp	.L126
.L133:
	movq	-309256(%rbp), %rdx
	movl	-309368(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC20(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$100416, %edi
	call	malloc@PLT
	movq	%rax, -309136(%rbp)
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L127
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	movq	-309288(%rbp), %rax
	movl	4(%rax), %edx
	movq	-309256(%rbp), %rcx
	movl	-309368(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L127
	leaq	-308688(%rbp), %rbx
	subq	$8, %rsp
	movq	-309136(%rbp), %rax
	subq	$100408, %rsp
	movq	%rsp, %rdx
	movq	%rdx, %rcx
	movl	$100404, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	%rbx, %rdi
	call	push_back
	addq	$100416, %rsp
.L127:
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L128
	leaq	.LC24(%rip), %rdi
	call	puts@PLT
	movq	-309288(%rbp), %rax
	movl	4(%rax), %edx
	movq	-309256(%rbp), %rcx
	movl	-309368(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L128
	leaq	-308688(%rbp), %rbx
	subq	$8, %rsp
	movq	-309136(%rbp), %rax
	subq	$100408, %rsp
	movq	%rsp, %rdx
	movq	%rdx, %rcx
	movl	$100404, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	%rbx, %rdi
	call	push_back
	addq	$100416, %rsp
.L128:
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L129
	leaq	.LC26(%rip), %rdi
	call	puts@PLT
	movq	-309288(%rbp), %rax
	movl	4(%rax), %edx
	movq	-309256(%rbp), %rcx
	movl	-309368(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L129
	leaq	-308688(%rbp), %rbx
	subq	$8, %rsp
	movq	-309136(%rbp), %rax
	subq	$100408, %rsp
	movq	%rsp, %rdx
	movq	%rdx, %rcx
	movl	$100404, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	%rbx, %rdi
	call	push_back
	addq	$100416, %rsp
.L129:
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L130
	leaq	.LC28(%rip), %rdi
	call	puts@PLT
	movq	-309288(%rbp), %rax
	movl	4(%rax), %edx
	movq	-309256(%rbp), %rcx
	movl	-309368(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L130
	leaq	-308688(%rbp), %rbx
	subq	$8, %rsp
	movq	-309136(%rbp), %rax
	subq	$100408, %rsp
	movq	%rsp, %rdx
	movq	%rdx, %rcx
	movl	$100404, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	%rbx, %rdi
	call	push_back
	addq	$100416, %rsp
.L130:
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L131
	leaq	.LC30(%rip), %rdi
	call	puts@PLT
	movq	-309288(%rbp), %rax
	movl	4(%rax), %edx
	movq	-309256(%rbp), %rcx
	movl	-309368(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jg	.L131
	leaq	-308688(%rbp), %rbx
	subq	$8, %rsp
	movq	-309136(%rbp), %rax
	subq	$100408, %rsp
	movq	%rsp, %rdx
	movq	%rdx, %rcx
	movl	$100404, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	%rbx, %rdi
	call	push_back
	addq	$100416, %rsp
.L131:
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L132
	leaq	.LC32(%rip), %rdi
	call	puts@PLT
	movq	-309288(%rbp), %rax
	movl	4(%rax), %edx
	movq	-309256(%rbp), %rcx
	movl	-309368(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L132
	leaq	-308688(%rbp), %rbx
	subq	$8, %rsp
	movq	-309136(%rbp), %rax
	subq	$100408, %rsp
	movq	%rsp, %rdx
	movq	%rdx, %rcx
	movl	$100404, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	%rbx, %rdi
	call	push_back
	addq	$100416, %rsp
.L132:
	movq	-309256(%rbp), %rax
	movq	100408(%rax), %rax
	movq	%rax, -309256(%rbp)
.L126:
	cmpq	$0, -309256(%rbp)
	jne	.L133
	movq	-308688(%rbp), %rax
	movq	%rax, %rdi
	call	print_list
	jmp	.L99
.L81:
	movq	$0, -308688(%rbp)
	movq	table_records(%rip), %rax
	movq	%rax, -309248(%rbp)
	movl	$0, -309360(%rbp)
	movl	$0, -309356(%rbp)
	jmp	.L134
.L137:
	movq	schema(%rip), %rdx
	movl	-309356(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movq	-309288(%rbp), %rdx
	subq	$2032, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	testq	%rax, %rax
	jne	.L135
	movl	-309356(%rbp), %eax
	movl	%eax, -309360(%rbp)
	jmp	.L136
.L135:
	addl	$1, -309356(%rbp)
.L134:
	movl	8+schema(%rip), %eax
	cmpl	%eax, -309356(%rbp)
	jl	.L137
.L136:
	jmp	.L138
.L140:
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	addq	$8, %rax
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L138
	movl	-309360(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rdx
	movq	-309248(%rbp), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-309288(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L139
	movl	$100416, %edi
	call	malloc@PLT
	movq	%rax, -309144(%rbp)
	leaq	-308688(%rbp), %rbx
	subq	$8, %rsp
	movq	-309144(%rbp), %rax
	subq	$100408, %rsp
	movq	%rsp, %rdx
	movq	%rdx, %rcx
	movl	$100404, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	%rbx, %rdi
	call	push_back
	addq	$100416, %rsp
.L139:
	movq	-309248(%rbp), %rax
	movq	100408(%rax), %rax
	movq	%rax, -309248(%rbp)
.L138:
	cmpq	$0, -309248(%rbp)
	jne	.L140
	jmp	.L99
.L82:
	movq	-309288(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-308688(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L99
.L83:
	movb	$0, -309394(%rbp)
	movl	$0, -309352(%rbp)
	jmp	.L141
.L144:
	movq	schema(%rip), %rdx
	movl	-309352(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-309288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L142
	movb	$1, -309394(%rbp)
	jmp	.L143
.L142:
	addl	$1, -309352(%rbp)
.L141:
	movl	8+schema(%rip), %eax
	cmpl	%eax, -309352(%rbp)
	jl	.L144
.L143:
	movzbl	-309394(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L145
	leaq	.LC34(%rip), %rdi
	call	puts@PLT
	jmp	.L42
.L145:
	movq	-309288(%rbp), %rdx
	leaq	-308688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L99
.L84:
	movl	$0, -308688(%rbp)
	leaq	-308688(%rbp), %rax
	addq	$1008, %rax
	movw	$61, (%rax)
	jmp	.L99
.L85:
	movl	$1, -308688(%rbp)
	movq	-309288(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -308684(%rbp)
	jmp	.L99
.L86:
	movb	$0, -309393(%rbp)
	movl	$0, -309348(%rbp)
	jmp	.L146
.L149:
	movq	schema(%rip), %rdx
	movl	-309348(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-309288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L147
	movb	$1, -309393(%rbp)
	jmp	.L148
.L147:
	addl	$1, -309348(%rbp)
.L146:
	movl	8+schema(%rip), %eax
	cmpl	%eax, -309348(%rbp)
	jl	.L149
.L148:
	movzbl	-309393(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L150
	leaq	.LC34(%rip), %rdi
	call	puts@PLT
	jmp	.L42
.L150:
	movq	-309288(%rbp), %rdx
	leaq	-308688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L99
.L87:
	movl	$0, -308688(%rbp)
	leaq	-308688(%rbp), %rax
	addq	$1008, %rax
	movw	$60, (%rax)
	jmp	.L99
.L88:
	movl	$0, -308688(%rbp)
	movw	$15676, -307680(%rbp)
	movb	$0, -307678(%rbp)
	jmp	.L99
.L89:
	movl	$0, -308688(%rbp)
	leaq	-308688(%rbp), %rax
	addq	$1008, %rax
	movw	$62, (%rax)
	jmp	.L99
.L90:
	movl	$0, -308688(%rbp)
	leaq	-308688(%rbp), %rax
	addq	$1008, %rax
	movw	$62, (%rax)
	jmp	.L99
.L91:
	movl	$0, -308688(%rbp)
	movw	$15677, -307680(%rbp)
	movb	$0, -307678(%rbp)
	jmp	.L99
.L92:
	movl	$0, -308688(%rbp)
	movw	$15649, -307680(%rbp)
	movb	$0, -307678(%rbp)
	jmp	.L99
.L93:
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	movq	(%rax), %rax
	movl	100400(%rax), %eax
	cmpl	$100, %eax
	jne	.L151
	leaq	.LC35(%rip), %rdi
	call	puts@PLT
	jmp	.L42
.L151:
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	movq	-309288(%rbp), %rax
	leaq	-2032(%rax), %rsi
	movq	-308688(%rbp), %rcx
	movq	-308688(%rbp), %rax
	movl	100400(%rax), %edx
	movl	(%rsi), %eax
	movslq	%edx, %rdx
	imulq	$1004, %rdx, %rdx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movq	-309288(%rbp), %rax
	subq	$2032, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L153
	cmpl	$1, %eax
	je	.L154
	jmp	.L213
.L153:
	movq	-309288(%rbp), %rax
	leaq	-2032(%rax), %rsi
	movq	-308688(%rbp), %rcx
	movq	-308688(%rbp), %rax
	movl	100400(%rax), %edx
	movl	4(%rsi), %eax
	movslq	%edx, %rdx
	imulq	$1004, %rdx, %rdx
	addq	%rcx, %rdx
	addq	$4, %rdx
	movl	%eax, (%rdx)
	jmp	.L155
.L154:
	movq	-309288(%rbp), %rax
	subq	$2032, %rax
	leaq	4(%rax), %rdx
	movq	-308688(%rbp), %rcx
	movq	-308688(%rbp), %rax
	movl	100400(%rax), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L155
.L213:
	leaq	.LC36(%rip), %rdi
	call	puts@PLT
	jmp	.L42
.L155:
	movq	-308688(%rbp), %rax
	movl	100400(%rax), %edx
	movq	-308688(%rbp), %rax
	addl	$1, %edx
	movl	%edx, 100400(%rax)
	jmp	.L99
.L94:
	movq	-309288(%rbp), %rax
	movq	(%rax), %rax
	movl	100400(%rax), %eax
	cmpl	$100, %eax
	jne	.L156
	leaq	.LC35(%rip), %rdi
	call	puts@PLT
	jmp	.L42
.L156:
	movq	-309288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	movq	-309288(%rbp), %rax
	leaq	-1016(%rax), %rsi
	movq	-308688(%rbp), %rcx
	movq	-308688(%rbp), %rax
	movl	100400(%rax), %edx
	movl	(%rsi), %eax
	movslq	%edx, %rdx
	imulq	$1004, %rdx, %rdx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L158
	cmpl	$1, %eax
	je	.L159
	jmp	.L214
.L158:
	movq	-309288(%rbp), %rax
	leaq	-1016(%rax), %rsi
	movq	-308688(%rbp), %rcx
	movq	-308688(%rbp), %rax
	movl	100400(%rax), %edx
	movl	4(%rsi), %eax
	movslq	%edx, %rdx
	imulq	$1004, %rdx, %rdx
	addq	%rcx, %rdx
	addq	$4, %rdx
	movl	%eax, (%rdx)
	jmp	.L160
.L159:
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	leaq	4(%rax), %rdx
	movq	-308688(%rbp), %rcx
	movq	-308688(%rbp), %rax
	movl	100400(%rax), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L160
.L214:
	leaq	.LC36(%rip), %rdi
	call	puts@PLT
	jmp	.L42
.L160:
	movq	-308688(%rbp), %rax
	movl	100400(%rax), %edx
	movq	-308688(%rbp), %rax
	addl	$1, %edx
	movl	%edx, 100400(%rax)
	jmp	.L99
.L95:
	movl	$100404, %esi
	movl	$1, %edi
	call	calloc@PLT
	movq	%rax, -308688(%rbp)
	movq	-308688(%rbp), %rax
	movl	$0, 100400(%rax)
	jmp	.L99
.L96:
	movq	-309288(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -308688(%rbp)
	movl	-308688(%rbp), %eax
	testl	%eax, %eax
	je	.L162
	cmpl	$1, %eax
	je	.L163
	jmp	.L215
.L162:
	movq	-309288(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -308684(%rbp)
	jmp	.L164
.L163:
	movq	-309288(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-308688(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L164
.L215:
	leaq	.LC37(%rip), %rdi
	call	puts@PLT
	jmp	.L42
.L164:
	jmp	.L99
.L97:
	movq	-309288(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -308688(%rbp)
	movl	-308688(%rbp), %eax
	testl	%eax, %eax
	je	.L166
	cmpl	$1, %eax
	je	.L167
	jmp	.L216
.L166:
	movq	-309288(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -308684(%rbp)
	jmp	.L168
.L167:
	movq	-309288(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-308688(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L168
.L216:
	leaq	.LC37(%rip), %rdi
	call	puts@PLT
	jmp	.L42
.L168:
	jmp	.L99
.L98:
	movq	-309288(%rbp), %rdx
	leaq	-308688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	-4048(%rbp), %rax
	movabsq	$8243122731876167470, %rbx
	movq	%rbx, (%rax)
	movb	$0, 8(%rax)
	leaq	-4048(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	leaq	-4048(%rbp), %rax
	addq	%rdx, %rax
	movw	$47, (%rax)
	leaq	-308688(%rbp), %rdx
	leaq	-4048(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	leaq	-4048(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC38(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-4048(%rbp), %rax
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -309192(%rbp)
	cmpq	$0, -309192(%rbp)
	jne	.L169
	movl	$0, %eax
	call	handle_query_file_error
.L169:
	leaq	.LC40(%rip), %rdi
	call	puts@PLT
	leaq	-3040(%rbp), %rax
	movl	$1633955630, (%rax)
	movw	$24948, 4(%rax)
	movb	$0, 6(%rax)
	leaq	-3040(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	leaq	-3040(%rbp), %rax
	addq	%rdx, %rax
	movw	$47, (%rax)
	leaq	-308688(%rbp), %rdx
	leaq	-3040(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	leaq	-3040(%rbp), %rax
	movq	%rax, %rdi
	call	opendir@PLT
	movq	%rax, -309184(%rbp)
	cmpq	$0, -309184(%rbp)
	jne	.L170
	movl	$0, %edi
	call	handleError
.L170:
	leaq	.LC41(%rip), %rdi
	call	puts@PLT
	movq	$0, -309176(%rbp)
	movq	$0, -309328(%rbp)
	movl	$0, -309344(%rbp)
	jmp	.L171
.L172:
	addl	$1, -309344(%rbp)
.L171:
	movq	-309192(%rbp), %rdx
	leaq	-309320(%rbp), %rcx
	leaq	-309328(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getline@PLT
	movq	%rax, -309168(%rbp)
	cmpq	$-1, -309168(%rbp)
	jne	.L172
	movq	-309192(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-309344(%rbp), %eax
	movl	%eax, 8+schema(%rip)
	movl	-309344(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, schema(%rip)
	leaq	-4048(%rbp), %rax
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -309192(%rbp)
	movl	$0, -309340(%rbp)
	jmp	.L173
.L175:
	movq	-309328(%rbp), %rax
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -309152(%rbp)
	movq	schema(%rip), %rdx
	movl	-309340(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-309152(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	leaq	.LC42(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -309152(%rbp)
	movq	-309152(%rbp), %rax
	leaq	.LC43(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L174
	movq	schema(%rip), %rcx
	movl	-309340(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -309340(%rbp)
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	movl	$1, (%rax)
	jmp	.L173
.L174:
	movq	-309152(%rbp), %rax
	leaq	.LC44(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L173
	movq	schema(%rip), %rcx
	movl	-309340(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -309340(%rbp)
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	movl	$0, (%rax)
.L173:
	movq	-309192(%rbp), %rdx
	leaq	-309320(%rbp), %rcx
	leaq	-309328(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getline@PLT
	movq	%rax, -309168(%rbp)
	cmpq	$-1, -309168(%rbp)
	jne	.L175
	movq	-309192(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-309344(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC45(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -309336(%rbp)
	jmp	.L176
.L177:
	movq	schema(%rip), %rdx
	movl	-309336(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movq	%rax, %rsi
	leaq	.LC46(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -309336(%rbp)
.L176:
	movl	-309336(%rbp), %eax
	cmpl	-309344(%rbp), %eax
	jl	.L177
	movl	$10, %edi
	call	putchar@PLT
	jmp	.L178
.L187:
	movq	-309176(%rbp), %rax
	movzbl	18(%rax), %eax
	cmpb	$8, %al
	je	.L179
	jmp	.L178
.L179:
	movq	-309176(%rbp), %rax
	leaq	19(%rax), %rcx
	leaq	-3040(%rbp), %rdx
	leaq	-2032(%rbp), %rax
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-2032(%rbp), %rax
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -309160(%rbp)
	movq	-309160(%rbp), %rdx
	leaq	-309320(%rbp), %rcx
	leaq	-309328(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getline@PLT
	movq	%rax, -309168(%rbp)
	cmpq	$-1, -309168(%rbp)
	jne	.L180
	movl	$0, %eax
	call	handle_query_file_error
.L180:
	movl	$0, -309340(%rbp)
	movq	-309328(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	-309328(%rbp), %rdx
	leaq	-1024(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-309328(%rbp), %rax
	leaq	.LC48(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -309240(%rbp)
	jmp	.L181
.L182:
	addl	$1, -309340(%rbp)
	leaq	.LC48(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -309240(%rbp)
.L181:
	cmpq	$0, -309240(%rbp)
	jne	.L182
	movl	-309340(%rbp), %eax
	movl	%eax, -207264(%rbp)
	movl	$0, -309340(%rbp)
	leaq	-1024(%rbp), %rax
	leaq	.LC48(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -309240(%rbp)
	jmp	.L183
.L186:
	movq	schema(%rip), %rdx
	movl	-309340(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-309340(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$1004, %rdx, %rdx
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rdx
	subq	$307648, %rdx
	movl	%eax, (%rdx)
	movl	-309340(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$307648, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L184
	movq	-309240(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	movl	-309340(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$307644, %rax
	movl	%edx, (%rax)
	jmp	.L185
.L184:
	leaq	-307664(%rbp), %rdx
	movl	-309340(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-309240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
.L185:
	addl	$1, -309340(%rbp)
	leaq	.LC48(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -309240(%rbp)
.L183:
	cmpq	$0, -309240(%rbp)
	jne	.L186
	subq	$8, %rsp
	subq	$100408, %rsp
	movq	%rsp, %rax
	movq	%rax, %rcx
	leaq	-307664(%rbp), %rax
	movl	$100404, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	leaq	table_records(%rip), %rdi
	call	push_back
	addq	$100416, %rsp
.L178:
	movq	-309184(%rbp), %rax
	movq	%rax, %rdi
	call	readdir@PLT
	movq	%rax, -309176(%rbp)
	cmpq	$0, -309176(%rbp)
	jne	.L187
	movq	table_records(%rip), %rax
	movq	%rax, %rdi
	call	print_list
	leaq	-3040(%rbp), %rdx
	leaq	-308688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	.LC49(%rip), %rdi
	call	puts@PLT
	leaq	-308688(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L99
.L225:
	nop
.L99:
	movl	-309372(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	negq	%rax
	addq	%rax, -309288(%rbp)
	movl	-309372(%rbp), %eax
	cltq
	addq	%rax, %rax
	negq	%rax
	addq	%rax, -309304(%rbp)
	movl	$0, -309372(%rbp)
	addq	$1016, -309288(%rbp)
	movq	-309288(%rbp), %rax
	movq	%rax, %rdi
	leaq	-308688(%rbp), %rax
	movl	$127, %edx
	movq	%rax, %rsi
	movq	%rdx, %rcx
	rep movsq
	movl	-309384(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yyr1(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -309384(%rbp)
	movl	-309384(%rbp), %eax
	subl	$31, %eax
	movslq	%eax, %rdx
	leaq	yypgoto(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %edx
	movq	-309304(%rbp), %rax
	movzwl	(%rax), %eax
	cwtl
	addl	%edx, %eax
	movl	%eax, -309392(%rbp)
	cmpl	$0, -309392(%rbp)
	js	.L188
	cmpl	$63, -309392(%rbp)
	jg	.L188
	movl	-309392(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yycheck(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbw	%al, %dx
	movq	-309304(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	%ax, %dx
	jne	.L188
	movl	-309392(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yytable(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -309392(%rbp)
	jmp	.L35
.L188:
	movl	-309384(%rbp), %eax
	subl	$31, %eax
	movslq	%eax, %rdx
	leaq	yydefgoto(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -309392(%rbp)
	jmp	.L35
.L224:
	nop
.L57:
	movl	yychar(%rip), %eax
	cmpl	$-2, %eax
	je	.L190
	movl	yychar(%rip), %eax
	cmpl	$285, %eax
	ja	.L191
	movl	yychar(%rip), %eax
	movslq	%eax, %rdx
	leaq	yytranslate(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	jmp	.L193
.L191:
	movl	$2, %eax
	jmp	.L193
.L190:
	movl	$-2, %eax
.L193:
	movl	%eax, -309376(%rbp)
	cmpl	$0, -309388(%rbp)
	jne	.L194
	movl	yynerrs(%rip), %eax
	addl	$1, %eax
	movl	%eax, yynerrs(%rip)
	leaq	.LC50(%rip), %rdi
	call	yyerror
.L194:
	cmpl	$3, -309388(%rbp)
	jne	.L228
	movl	yychar(%rip), %eax
	testl	%eax, %eax
	jg	.L196
	movl	yychar(%rip), %eax
	testl	%eax, %eax
	jne	.L228
	jmp	.L42
.L196:
	movl	-309376(%rbp), %eax
	leaq	yylval(%rip), %rdx
	movl	%eax, %esi
	leaq	.LC51(%rip), %rdi
	call	yydestruct
	movl	$-2, yychar(%rip)
.L228:
	nop
.L197:
	movl	$3, -309388(%rbp)
.L201:
	movl	-309392(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yypact(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -309384(%rbp)
	cmpl	$-41, -309384(%rbp)
	je	.L198
	addl	$1, -309384(%rbp)
	cmpl	$0, -309384(%rbp)
	js	.L198
	cmpl	$63, -309384(%rbp)
	jg	.L198
	movl	-309384(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yycheck(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	cmpb	$1, %al
	jne	.L198
	movl	-309384(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yytable(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -309384(%rbp)
	cmpl	$0, -309384(%rbp)
	jg	.L229
.L198:
	movq	-309304(%rbp), %rax
	cmpq	-309312(%rbp), %rax
	je	.L230
	movl	-309392(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yystos(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movq	-309288(%rbp), %rdx
	movl	%eax, %esi
	leaq	.LC52(%rip), %rdi
	call	yydestruct
	subq	$1016, -309288(%rbp)
	subq	$2, -309304(%rbp)
	movq	-309304(%rbp), %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, -309392(%rbp)
	jmp	.L201
.L229:
	nop
	addq	$1016, -309288(%rbp)
	movq	-309288(%rbp), %rax
	movq	%rax, %rdi
	leaq	yylval(%rip), %rax
	movl	$127, %edx
	movq	%rax, %rsi
	movq	%rdx, %rcx
	rep movsq
	movl	-309384(%rbp), %eax
	movl	%eax, -309392(%rbp)
	jmp	.L35
.L221:
	nop
.L44:
	movl	$0, -309380(%rbp)
	jmp	.L202
.L220:
	nop
	jmp	.L42
.L230:
	nop
.L42:
	movl	$1, -309380(%rbp)
	jmp	.L202
.L218:
	nop
	jmp	.L38
.L219:
	nop
.L38:
	leaq	.LC53(%rip), %rdi
	call	yyerror
	movl	$2, -309380(%rbp)
.L202:
	movl	yychar(%rip), %eax
	cmpl	$-2, %eax
	je	.L203
	movl	yychar(%rip), %eax
	cmpl	$285, %eax
	ja	.L204
	movl	yychar(%rip), %eax
	movslq	%eax, %rdx
	leaq	yytranslate(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	jmp	.L205
.L204:
	movl	$2, %eax
.L205:
	movl	%eax, -309376(%rbp)
	movl	-309376(%rbp), %eax
	leaq	yylval(%rip), %rdx
	movl	%eax, %esi
	leaq	.LC54(%rip), %rdi
	call	yydestruct
.L203:
	movl	-309372(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	negq	%rax
	addq	%rax, -309288(%rbp)
	movl	-309372(%rbp), %eax
	cltq
	addq	%rax, %rax
	negq	%rax
	addq	%rax, -309304(%rbp)
	jmp	.L206
.L207:
	movq	-309304(%rbp), %rax
	movzwl	(%rax), %eax
	cwtl
	movslq	%eax, %rdx
	leaq	yystos(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movq	-309288(%rbp), %rdx
	movl	%eax, %esi
	leaq	.LC55(%rip), %rdi
	call	yydestruct
	subq	$1016, -309288(%rbp)
	subq	$2, -309304(%rbp)
.L206:
	movq	-309304(%rbp), %rax
	cmpq	-309312(%rbp), %rax
	jne	.L207
	leaq	-309088(%rbp), %rax
	cmpq	%rax, -309312(%rbp)
	je	.L208
	movq	-309312(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L208:
	movl	-309380(%rbp), %eax
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L210
	call	__stack_chk_fail@PLT
.L210:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	yyparse, .-yyparse
	.section	.rodata
	.align 8
.LC56:
	.string	"The mode provided for opening the file is incorrect"
	.align 8
.LC57:
	.string	"Out of memory as the memory has hit the memory limit set internally"
	.align 8
.LC58:
	.string	"Access to the current file is not allowed.Check the permissions set for the file"
	.align 8
.LC59:
	.string	"The path name is outside your accessible address space"
.LC60:
	.string	"This file does not exist"
	.text
	.globl	handle_query_file_error
	.type	handle_query_file_error, @function
handle_query_file_error:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$22, %eax
	ja	.L233
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L235(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L235(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L235:
	.long	.L233-.L235
	.long	.L233-.L235
	.long	.L234-.L235
	.long	.L233-.L235
	.long	.L233-.L235
	.long	.L233-.L235
	.long	.L233-.L235
	.long	.L233-.L235
	.long	.L233-.L235
	.long	.L233-.L235
	.long	.L233-.L235
	.long	.L233-.L235
	.long	.L236-.L235
	.long	.L237-.L235
	.long	.L238-.L235
	.long	.L233-.L235
	.long	.L233-.L235
	.long	.L233-.L235
	.long	.L233-.L235
	.long	.L233-.L235
	.long	.L233-.L235
	.long	.L233-.L235
	.long	.L239-.L235
	.text
.L239:
	leaq	.LC56(%rip), %rdi
	call	puts@PLT
	jmp	.L233
.L236:
	leaq	.LC57(%rip), %rdi
	call	puts@PLT
	jmp	.L233
.L237:
	leaq	.LC58(%rip), %rdi
	call	puts@PLT
	jmp	.L233
.L238:
	leaq	.LC59(%rip), %rdi
	call	puts@PLT
	jmp	.L233
.L234:
	leaq	.LC60(%rip), %rdi
	call	puts@PLT
	nop
.L233:
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE12:
	.size	handle_query_file_error, .-handle_query_file_error
	.section	.rodata
.LC61:
	.string	" %s\n"
	.text
	.globl	yyerror
	.type	yyerror, @function
yyerror:
.LFB13:
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
	leaq	.LC61(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	yyerror, .-yyerror
	.section	.rodata
.LC62:
	.string	"Permission denied.\n"
	.align 8
.LC63:
	.string	"fd is not a valid file descriptor opened for reading.\n"
	.align 8
.LC64:
	.string	"The per-process limit on the number of open file descriptors has been reached.\n"
	.align 8
.LC65:
	.string	"The system-wide limit on the total number of open files has been reached.\n"
	.align 8
.LC66:
	.string	"Directory does not exist, or name is an empty string."
	.align 8
.LC67:
	.string	"Do you want to create a new master Directory(y/n)"
.LC68:
	.string	"%c"
.LC69:
	.string	"Terminating execution"
	.align 8
.LC70:
	.string	" Make use of the schema and the data helper utilities to fill the schema details and the input files"
	.align 8
.LC71:
	.string	"Insufficient memory to complete the operation.\n"
.LC72:
	.string	"name is not a directory.\n"
	.text
	.globl	handleError
	.type	handleError, @function
handleError:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$24, %eax
	ja	.L256
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L245(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L245(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L245:
	.long	.L256-.L245
	.long	.L256-.L245
	.long	.L244-.L245
	.long	.L256-.L245
	.long	.L256-.L245
	.long	.L256-.L245
	.long	.L256-.L245
	.long	.L256-.L245
	.long	.L256-.L245
	.long	.L246-.L245
	.long	.L256-.L245
	.long	.L256-.L245
	.long	.L247-.L245
	.long	.L248-.L245
	.long	.L256-.L245
	.long	.L256-.L245
	.long	.L256-.L245
	.long	.L256-.L245
	.long	.L256-.L245
	.long	.L256-.L245
	.long	.L249-.L245
	.long	.L256-.L245
	.long	.L256-.L245
	.long	.L250-.L245
	.long	.L251-.L245
	.text
.L248:
	leaq	.LC62(%rip), %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L246:
	leaq	.LC63(%rip), %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L251:
	leaq	.LC64(%rip), %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L250:
	leaq	.LC65(%rip), %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L244:
	leaq	.LC66(%rip), %rdi
	call	puts@PLT
	cmpl	$1, -20(%rbp)
	jne	.L252
	leaq	.LC67(%rip), %rdi
	call	puts@PLT
	leaq	-9(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC68(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-9(%rbp), %eax
	cmpb	$110, %al
	je	.L253
	movzbl	-9(%rbp), %eax
	cmpb	$78, %al
	jne	.L254
.L253:
	leaq	.LC69(%rip), %rdi
	call	puts@PLT
	movl	$0, %edi
	call	exit@PLT
.L254:
	movl	$438, %esi
	leaq	.LC0(%rip), %rdi
	call	mkdir@PLT
	movl	$438, %esi
	leaq	.LC1(%rip), %rdi
	call	mkdir@PLT
	leaq	.LC70(%rip), %rdi
	call	puts@PLT
	movl	$0, %edi
	call	exit@PLT
.L252:
	movl	$0, %edi
	call	exit@PLT
.L247:
	leaq	.LC71(%rip), %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L249:
	leaq	.LC72(%rip), %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L256:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L255
	call	__stack_chk_fail@PLT
.L255:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	handleError, .-handleError
	.section	.rodata
	.align 8
.LC73:
	.string	"The master diretory is initialized."
	.text
	.globl	initFunction
	.type	initFunction, @function
initFunction:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rdi
	call	opendir@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L258
	leaq	.LC73(%rip), %rdi
	call	puts@PLT
	jmp	.L259
.L258:
	movl	$2, %edi
	call	handleError
.L259:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	initFunction, .-initFunction
	.globl	main
	.type	main, @function
main:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	initFunction
	nop
.L262:
	call	yyparse
	testl	%eax, %eax
	je	.L262
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
