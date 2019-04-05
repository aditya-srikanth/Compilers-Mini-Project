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
	.align 8
.LC6:
	.string	"record ka field array first data is %d\n"
	.align 8
.LC7:
	.string	"head ka field array first data is %d\n"
.LC8:
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
	movl	20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
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
	leaq	.LC8(%rip), %rdi
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
	.globl	strip
	.type	strip, @function
strip:
.LFB10:
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
	jmp	.L31
.L33:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L32
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L32:
	addl	$1, -20(%rbp)
.L31:
	movl	-20(%rbp), %eax
	movslq	%eax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	jb	.L33
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	strip, .-strip
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
.LC9:
	.string	"Deleting"
	.text
	.type	yydestruct, @function
yydestruct:
.LFB11:
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
	jne	.L36
	leaq	.LC9(%rip), %rax
	movq	%rax, -8(%rbp)
.L36:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	yydestruct, .-yydestruct
	.comm	yychar,4,4
	.comm	yylval,1016,32
	.comm	yynerrs,4,4
	.section	.rodata
.LC10:
	.string	"Get query"
.LC11:
	.string	"Insert query"
.LC12:
	.string	"Update query"
.LC13:
	.string	"Delete query"
	.align 8
.LC14:
	.string	"Input does not match schema: incorrect number of arguments"
	.align 8
.LC15:
	.string	"type of candidate is %d and schema: %d\n"
	.align 8
.LC16:
	.string	"Input does not match schema: incorrect type of arguments"
.LC17:
	.string	"%s/%d.txt"
.LC18:
	.string	"%s/%s.txt"
.LC19:
	.string	"Record already exists!"
.LC20:
	.string	"\t"
.LC21:
	.string	"%d%s"
.LC22:
	.string	"%s%s"
.LC23:
	.string	"%d"
.LC24:
	.string	"to print record"
.LC25:
	.string	"w"
.LC26:
	.string	"ENTERING %s\n"
.LC27:
	.string	"RECORD ENTERED SUCCESFULLY"
.LC28:
	.string	"DELETE KE ANDAR"
.LC29:
	.string	"the dir handle 2 is %p\n"
	.align 8
.LC30:
	.string	"the type is %d, STRING %d INT %d\n "
.LC31:
	.string	"path to deletion"
.LC32:
	.string	"%d.txt"
.LC33:
	.string	"string format is %s\n"
.LC34:
	.string	"%s is the dir_name\n"
.LC35:
	.string	"%s/%s"
.LC36:
	.string	"entered condition list"
.LC37:
	.string	"Inside AND"
.LC38:
	.string	"output after condition\n"
.LC39:
	.string	"GAND"
.LC40:
	.string	"GORI"
.LC41:
	.string	"entered NUMERICAL_CONDITION"
.LC42:
	.string	"schema field name %s \n"
	.align 8
.LC43:
	.string	"table record pointer: %p, first record %d\n"
.LC44:
	.string	"comparing %d\n"
.LC45:
	.string	"values in iter %d\n"
.LC46:
	.string	"=="
.LC47:
	.string	"eq"
.LC48:
	.string	"$3 value integer is %d\n"
.LC49:
	.string	"EQ condition matched"
.LC50:
	.string	"!="
.LC51:
	.string	"neq"
.LC52:
	.string	">"
.LC53:
	.string	"gt"
.LC54:
	.string	"<"
.LC55:
	.string	"lt"
.LC56:
	.string	">="
.LC57:
	.string	"geq"
.LC58:
	.string	"<="
.LC59:
	.string	"leq"
	.align 8
.LC60:
	.string	"DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD"
.LC61:
	.string	"INSIDE STRING COND"
.LC62:
	.string	"%d is POS OF FIELD\n"
.LC63:
	.string	"ITER IS %p\n"
.LC64:
	.string	"OP IS %s\n"
.LC65:
	.string	"COMPARinG with %s %d\n"
.LC66:
	.string	"="
.LC67:
	.string	"Length of the iter string %d\n"
	.align 8
.LC68:
	.string	"NOW COMPARING %s %d with temp %d\n"
.LC69:
	.string	"DAS STRING CONDITIONES OP IS "
.LC70:
	.string	"I AINT GOT NO MONEY"
.LC71:
	.string	"THE STRING FIELD IS "
.LC72:
	.string	"FIELD NOT FOUND, CHECK QUERY"
	.align 8
.LC73:
	.string	"DDDDDDDDDDDDSSSSSSSSSSSSSSEEEEEEEEEEEEE"
.LC74:
	.string	"RECEIVED OP %s"
	.align 8
.LC75:
	.string	"Need more fields in the definition? contact the developer"
	.align 8
.LC76:
	.string	"This datatype has not been defined"
	.align 8
.LC77:
	.string	"Illegal type stopping execution"
.LC78:
	.string	"path to schema is %s\n"
.LC79:
	.string	"r+"
.LC80:
	.string	"Table Schema found!"
.LC81:
	.string	"The table is found"
.LC82:
	.string	":"
.LC83:
	.string	"string"
.LC84:
	.string	"int"
.LC85:
	.string	"Number of  Attributes: %d\n"
.LC86:
	.string	"dummy"
.LC87:
	.string	"r"
.LC88:
	.string	"THE PATH TO THE TABLE IS"
.LC89:
	.string	"syntax error"
.LC90:
	.string	"Error: discarding"
.LC91:
	.string	"Error: popping"
.LC92:
	.string	"memory exhausted"
.LC93:
	.string	"Cleanup: discarding lookahead"
.LC94:
	.string	"Cleanup: popping"
	.text
	.globl	yyparse
	.type	yyparse, @function
yyparse:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$309416, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -309400(%rbp)
	movl	$0, -309396(%rbp)
	leaq	-309088(%rbp), %rax
	movq	%rax, -309328(%rbp)
	movq	-309328(%rbp), %rax
	movq	%rax, -309320(%rbp)
	leaq	-207248(%rbp), %rax
	movq	%rax, -309312(%rbp)
	movq	-309312(%rbp), %rax
	movq	%rax, -309304(%rbp)
	movq	$200, -309296(%rbp)
	movl	$0, -309416(%rbp)
	movl	$0, -309412(%rbp)
	movl	$0, yynerrs(%rip)
	movl	$-2, yychar(%rip)
	jmp	.L38
.L39:
	addq	$2, -309320(%rbp)
.L38:
	movl	-309416(%rbp), %eax
	movl	%eax, %edx
	movq	-309320(%rbp), %rax
	movw	%dx, (%rax)
	movq	-309296(%rbp), %rax
	addq	%rax, %rax
	leaq	-2(%rax), %rdx
	movq	-309328(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -309320(%rbp)
	jb	.L40
	movq	-309320(%rbp), %rdx
	movq	-309328(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	%rax
	addq	$1, %rax
	movq	%rax, -309240(%rbp)
	cmpq	$9999, -309296(%rbp)
	ja	.L242
	salq	-309296(%rbp)
	cmpq	$10000, -309296(%rbp)
	jbe	.L43
	movq	$10000, -309296(%rbp)
.L43:
	movq	-309328(%rbp), %rax
	movq	%rax, -309232(%rbp)
	movq	-309296(%rbp), %rax
	imulq	$1018, %rax, %rax
	addq	$1015, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -309224(%rbp)
	cmpq	$0, -309224(%rbp)
	je	.L243
	movq	-309240(%rbp), %rax
	leaq	(%rax,%rax), %rcx
	movq	-309224(%rbp), %rdx
	movq	-309328(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	%rax, %rsi
	call	memcpy@PLT
	movq	-309224(%rbp), %rax
	movq	%rax, -309328(%rbp)
	movq	-309296(%rbp), %rax
	addq	%rax, %rax
	addq	$1015, %rax
	movq	%rax, -309216(%rbp)
	movq	-309216(%rbp), %rax
	shrq	$3, %rax
	movabsq	$2323999253380730913, %rdx
	mulq	%rdx
	shrq	$4, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, -309224(%rbp)
	movq	-309240(%rbp), %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	movq	-309224(%rbp), %rdx
	movq	-309312(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-309224(%rbp), %rax
	movq	%rax, -309312(%rbp)
	movq	-309296(%rbp), %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	subq	%rdx, %rax
	salq	$3, %rax
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
	addq	%rax, -309224(%rbp)
	leaq	-309088(%rbp), %rax
	cmpq	%rax, -309232(%rbp)
	je	.L45
	movq	-309232(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L45:
	movq	-309240(%rbp), %rax
	addq	%rax, %rax
	leaq	-2(%rax), %rdx
	movq	-309328(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -309320(%rbp)
	movq	-309240(%rbp), %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	leaq	-1016(%rax), %rdx
	movq	-309312(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -309304(%rbp)
	movq	-309296(%rbp), %rax
	addq	%rax, %rax
	leaq	-2(%rax), %rdx
	movq	-309328(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -309320(%rbp)
	jnb	.L244
.L40:
	cmpl	$15, -309416(%rbp)
	je	.L245
	nop
.L49:
	movl	-309416(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yypact(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -309408(%rbp)
	cmpl	$-41, -309408(%rbp)
	je	.L246
	movl	yychar(%rip), %eax
	cmpl	$-2, %eax
	jne	.L52
	movl	$0, %eax
	call	yylex@PLT
	movl	%eax, yychar(%rip)
.L52:
	movl	yychar(%rip), %eax
	testl	%eax, %eax
	jg	.L53
	movl	$0, -309400(%rbp)
	movl	-309400(%rbp), %eax
	movl	%eax, yychar(%rip)
	jmp	.L54
.L53:
	movl	yychar(%rip), %eax
	cmpl	$285, %eax
	ja	.L55
	movl	yychar(%rip), %eax
	movslq	%eax, %rdx
	leaq	yytranslate(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	jmp	.L56
.L55:
	movl	$2, %eax
.L56:
	movl	%eax, -309400(%rbp)
.L54:
	movl	-309400(%rbp), %eax
	addl	%eax, -309408(%rbp)
	cmpl	$0, -309408(%rbp)
	js	.L247
	cmpl	$63, -309408(%rbp)
	jg	.L247
	movl	-309408(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yycheck(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, -309400(%rbp)
	jne	.L247
	movl	-309408(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yytable(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -309408(%rbp)
	cmpl	$0, -309408(%rbp)
	jg	.L57
	negl	-309408(%rbp)
	jmp	.L58
.L57:
	cmpl	$0, -309412(%rbp)
	je	.L59
	subl	$1, -309412(%rbp)
.L59:
	movl	$-2, yychar(%rip)
	movl	-309408(%rbp), %eax
	movl	%eax, -309416(%rbp)
	addq	$1016, -309304(%rbp)
	movq	-309304(%rbp), %rax
	movq	%rax, %rdi
	leaq	yylval(%rip), %rax
	movl	$127, %edx
	movq	%rax, %rsi
	movq	%rdx, %rcx
	rep movsq
	jmp	.L39
.L246:
	nop
	jmp	.L51
.L247:
	nop
.L51:
	movl	-309416(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yydefact(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -309408(%rbp)
	cmpl	$0, -309408(%rbp)
	je	.L248
	nop
.L58:
	movl	-309408(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yyr2(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -309396(%rbp)
	movl	$1, %eax
	subl	-309396(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-309304(%rbp), %rax
	addq	%rax, %rdx
	leaq	-308688(%rbp), %rax
	movq	%rdx, %rsi
	movl	$127, %edx
	movq	%rax, %rdi
	movq	%rdx, %rcx
	rep movsq
	cmpl	$40, -309408(%rbp)
	ja	.L249
	movl	-309408(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L64(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L64(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L64:
	.long	.L249-.L64
	.long	.L249-.L64
	.long	.L63-.L64
	.long	.L65-.L64
	.long	.L66-.L64
	.long	.L67-.L64
	.long	.L249-.L64
	.long	.L69-.L64
	.long	.L249-.L64
	.long	.L71-.L64
	.long	.L72-.L64
	.long	.L73-.L64
	.long	.L74-.L64
	.long	.L75-.L64
	.long	.L76-.L64
	.long	.L77-.L64
	.long	.L78-.L64
	.long	.L79-.L64
	.long	.L80-.L64
	.long	.L81-.L64
	.long	.L82-.L64
	.long	.L83-.L64
	.long	.L84-.L64
	.long	.L85-.L64
	.long	.L86-.L64
	.long	.L87-.L64
	.long	.L88-.L64
	.long	.L89-.L64
	.long	.L90-.L64
	.long	.L91-.L64
	.long	.L92-.L64
	.long	.L93-.L64
	.long	.L94-.L64
	.long	.L95-.L64
	.long	.L96-.L64
	.long	.L97-.L64
	.long	.L98-.L64
	.long	.L99-.L64
	.long	.L100-.L64
	.long	.L101-.L64
	.long	.L102-.L64
	.text
.L63:
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	jmp	.L103
.L65:
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	jmp	.L103
.L66:
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
	jmp	.L103
.L67:
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	jmp	.L103
.L69:
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rax
	movl	100400(%rax), %edx
	movl	8+schema(%rip), %eax
	cmpl	%eax, %edx
	je	.L104
	leaq	.LC14(%rip), %rdi
	call	yyerror
	jmp	.L46
.L104:
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rax
	movl	100400(%rax), %eax
	subl	$1, %eax
	movl	%eax, -309392(%rbp)
	jmp	.L105
.L107:
	movq	schema(%rip), %rdx
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rax
	movl	100400(%rax), %eax
	subl	-309392(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	subq	$1004, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rcx
	movl	-309392(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rdx
	movl	-309392(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	schema(%rip), %rcx
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rax
	movl	100400(%rax), %eax
	subl	-309392(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	subq	$1004, %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L106
	leaq	.LC16(%rip), %rdi
	call	yyerror
	jmp	.L46
.L106:
	subl	$1, -309392(%rbp)
.L105:
	cmpl	$0, -309392(%rbp)
	jns	.L107
	movq	$0, -309104(%rbp)
	movq	-309304(%rbp), %rax
	movq	%rax, %rdi
	call	opendir@PLT
	movq	%rax, -309104(%rbp)
	cmpq	$0, -309104(%rbp)
	jne	.L108
	movl	$0, %edi
	call	handleError
	jmp	.L103
.L108:
	movq	$0, -309096(%rbp)
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rdx
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rax
	movl	100400(%rax), %eax
	subl	$1, %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L111
	cmpl	$1, %eax
	je	.L112
	jmp	.L110
.L111:
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rdx
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rax
	movl	100400(%rax), %eax
	subl	$1, %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movl	(%rax), %ecx
	movq	-309304(%rbp), %rdx
	leaq	-3040(%rbp), %rax
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L110
.L112:
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rdx
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rax
	movl	100400(%rax), %eax
	subl	$1, %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rcx
	movq	-309304(%rbp), %rdx
	leaq	-3040(%rbp), %rax
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	nop
.L110:
	leaq	-3040(%rbp), %rdx
	leaq	-2032(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	-2032(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	access@PLT
	cmpl	$-1, %eax
	je	.L113
	leaq	.LC19(%rip), %rdi
	call	yyerror
	jmp	.L46
.L113:
	leaq	-1024(%rbp), %rax
	movl	$1000, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rax
	movl	100400(%rax), %eax
	subl	$1, %eax
	movl	%eax, -309388(%rbp)
	jmp	.L114
.L118:
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rdx
	movl	-309388(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L116
	cmpl	$1, %eax
	je	.L117
	jmp	.L115
.L116:
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rdx
	movl	-309388(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movl	(%rax), %edx
	leaq	-3040(%rbp), %rax
	leaq	.LC20(%rip), %rcx
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L115
.L117:
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rdx
	movl	-309388(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	leaq	-3040(%rbp), %rax
	leaq	.LC20(%rip), %rcx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	nop
.L115:
	leaq	-3040(%rbp), %rdx
	leaq	-1024(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	subl	$1, -309388(%rbp)
.L114:
	cmpl	$0, -309388(%rbp)
	jg	.L118
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L120
	cmpl	$1, %eax
	je	.L121
	jmp	.L119
.L120:
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rax
	movl	4(%rax), %edx
	leaq	-3040(%rbp), %rax
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L119
.L121:
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rax
	leaq	4(%rax), %rdx
	leaq	-3040(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	nop
.L119:
	leaq	-3040(%rbp), %rdx
	leaq	-1024(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	leaq	.LC24(%rip), %rdi
	call	puts@PLT
	leaq	-1024(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-2032(%rbp), %rax
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -309096(%rbp)
	cmpq	$0, -309096(%rbp)
	jne	.L122
	movl	$0, %eax
	call	handle_query_file_error
	jmp	.L123
.L122:
	leaq	-1024(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-309096(%rbp), %rdx
	leaq	-1024(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs@PLT
	leaq	.LC27(%rip), %rdi
	call	puts@PLT
.L123:
	movq	-309096(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	jmp	.L103
.L71:
	movq	-309304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -309288(%rbp)
	leaq	.LC28(%rip), %rdi
	call	puts@PLT
	movq	-309288(%rbp), %rax
	movq	%rax, %rdi
	call	print_list
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	%rax, %rdi
	call	opendir@PLT
	movq	%rax, -309120(%rbp)
	movl	$2, -309348(%rbp)
	jmp	.L124
.L133:
	movq	-309304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -309288(%rbp)
	jmp	.L125
.L132:
	movq	-309288(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-309288(%rbp), %rax
	movl	(%rax), %eax
	movl	$0, %ecx
	movl	$1, %edx
	movl	%eax, %esi
	leaq	.LC30(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-309288(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L127
	cmpl	$1, %eax
	jne	.L126
	movq	-309112(%rbp), %rax
	leaq	19(%rax), %rdx
	movq	-309288(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L250
	movq	-309112(%rbp), %rax
	leaq	19(%rax), %rdx
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	%rax, %rsi
	leaq	-1024(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	.LC31(%rip), %rdi
	call	puts@PLT
	leaq	-1024(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-1024(%rbp), %rax
	movq	%rax, %rdi
	call	remove@PLT
	jmp	.L250
.L127:
	movl	$3, -309348(%rbp)
	movq	-309288(%rbp), %rax
	movl	4(%rax), %edx
	leaq	-2032(%rbp), %rax
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-2032(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-309112(%rbp), %rax
	addq	$19, %rax
	movq	%rax, %rsi
	leaq	.LC34(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-309112(%rbp), %rax
	leaq	19(%rax), %rdx
	leaq	-2032(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L251
	movq	-309112(%rbp), %rax
	leaq	19(%rax), %rdx
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	%rax, %rsi
	leaq	-1024(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	.LC31(%rip), %rdi
	call	puts@PLT
	leaq	-1024(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-1024(%rbp), %rax
	movq	%rax, %rdi
	call	remove@PLT
	nop
	jmp	.L251
.L250:
	nop
	jmp	.L126
.L251:
	nop
.L126:
	movq	-309288(%rbp), %rax
	movq	100408(%rax), %rax
	movq	%rax, -309288(%rbp)
.L125:
	cmpq	$0, -309288(%rbp)
	jne	.L132
.L124:
	movq	-309120(%rbp), %rax
	movq	%rax, %rdi
	call	readdir@PLT
	movq	%rax, -309112(%rbp)
	cmpq	$0, -309112(%rbp)
	jne	.L133
	jmp	.L103
.L72:
	movq	-309304(%rbp), %rax
	subq	$1016, %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	jmp	.L103
.L73:
	movl	$1004, %edi
	call	malloc@PLT
	movq	%rax, -309128(%rbp)
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	%rax, %rdx
	movq	-309128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-309128(%rbp), %rax
	movl	%edx, 1000(%rax)
	movq	-309304(%rbp), %rax
	movq	(%rax), %rax
	movl	1016(%rax), %edx
	movq	-309304(%rbp), %rax
	movq	(%rax), %rax
	addl	$1, %edx
	movl	%edx, 1016(%rax)
	movq	-308688(%rbp), %rax
	movq	-309128(%rbp), %rdx
	movq	%rdx, 1008(%rax)
	jmp	.L103
.L74:
	movl	$1004, %edi
	call	malloc@PLT
	movq	%rax, -309136(%rbp)
	movq	-309304(%rbp), %rdx
	movq	-309136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-309304(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-309136(%rbp), %rax
	movl	%edx, 1000(%rax)
	movq	-309136(%rbp), %rax
	movl	$1, 1016(%rax)
	movq	-309136(%rbp), %rax
	movq	%rax, -308688(%rbp)
	jmp	.L103
.L75:
	movq	-309304(%rbp), %rdx
	leaq	-308688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L103
.L76:
	leaq	.LC36(%rip), %rdi
	call	puts@PLT
	movq	$0, -308688(%rbp)
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rax
	movq	%rax, -309280(%rbp)
	movq	-309304(%rbp), %rax
	subq	$1016, %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L134
	leaq	.LC37(%rip), %rdi
	call	puts@PLT
	jmp	.L135
.L137:
	movq	-309304(%rbp), %rax
	movq	(%rax), %rbx
	movq	-309280(%rbp), %rax
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
	je	.L136
	leaq	-308688(%rbp), %rbx
	subq	$8, %rsp
	movq	-309280(%rbp), %rax
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
.L136:
	movq	-309280(%rbp), %rax
	movq	100408(%rax), %rax
	movq	%rax, -309280(%rbp)
.L135:
	cmpq	$0, -309280(%rbp)
	jne	.L137
	jmp	.L138
.L134:
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	movq	-309304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -309280(%rbp)
	jmp	.L139
.L141:
	movq	-308688(%rbp), %rbx
	movq	-309280(%rbp), %rax
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
	je	.L140
	leaq	-308688(%rbp), %rbx
	subq	$8, %rsp
	movq	-309280(%rbp), %rax
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
.L140:
	movq	-309280(%rbp), %rax
	movq	100408(%rax), %rax
	movq	%rax, -309280(%rbp)
.L139:
	cmpq	$0, -309280(%rbp)
	jne	.L141
.L138:
	leaq	.LC38(%rip), %rdi
	call	puts@PLT
	movq	-308688(%rbp), %rax
	movq	%rax, %rdi
	call	print_list
	jmp	.L103
.L77:
	movq	-309304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	jmp	.L103
.L78:
	leaq	.LC39(%rip), %rdi
	call	puts@PLT
	movl	$1, -308688(%rbp)
	jmp	.L103
.L79:
	leaq	.LC40(%rip), %rdi
	call	puts@PLT
	movl	$0, -308688(%rbp)
	jmp	.L103
.L80:
	movq	-309304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	jmp	.L103
.L81:
	movq	-309304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	jmp	.L103
.L82:
	movq	$0, -308688(%rbp)
	movq	table_records(%rip), %rax
	movq	%rax, -309272(%rbp)
	jmp	.L142
.L144:
	movq	-309304(%rbp), %rax
	movq	(%rax), %rbx
	movq	-309272(%rbp), %rax
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
	je	.L143
	leaq	-308688(%rbp), %rbx
	subq	$8, %rsp
	movq	-309272(%rbp), %rax
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
.L143:
	movq	-309272(%rbp), %rax
	movq	100408(%rax), %rax
	movq	%rax, -309272(%rbp)
.L142:
	cmpq	$0, -309272(%rbp)
	jne	.L144
	jmp	.L103
.L83:
	movq	-309304(%rbp), %rax
	subq	$1016, %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	jmp	.L103
.L84:
	movq	$0, -308688(%rbp)
	leaq	.LC41(%rip), %rdi
	call	puts@PLT
	movq	table_records(%rip), %rax
	movq	%rax, -309264(%rbp)
	movq	table_records(%rip), %rax
	movq	%rax, %rdi
	call	print_list
	movl	$0, -309384(%rbp)
	movl	$0, -309380(%rbp)
	jmp	.L145
.L148:
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movq	%rax, %rsi
	leaq	.LC42(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	schema(%rip), %rdx
	movl	-309380(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movq	-309304(%rbp), %rdx
	subq	$2032, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L146
	movl	-309380(%rbp), %eax
	movl	%eax, -309384(%rbp)
	jmp	.L147
.L146:
	addl	$1, -309380(%rbp)
.L145:
	movl	8+schema(%rip), %eax
	cmpl	%eax, -309380(%rbp)
	jl	.L148
.L147:
	movq	-309264(%rbp), %rdx
	movl	-309384(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-309264(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC43(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-309304(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %esi
	leaq	.LC44(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L149
.L156:
	movq	-309264(%rbp), %rdx
	movl	-309384(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC45(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$100416, %edi
	call	malloc@PLT
	movq	%rax, -309144(%rbp)
	movq	-309144(%rbp), %rdx
	movq	-309264(%rbp), %rax
	movq	%rdx, %rcx
	movl	$100404, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-309304(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	leaq	.LC46(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L150
	leaq	.LC47(%rip), %rdi
	call	puts@PLT
	movq	-309304(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %esi
	leaq	.LC48(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-309304(%rbp), %rax
	movl	4(%rax), %edx
	movq	-309264(%rbp), %rcx
	movl	-309384(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L150
	leaq	.LC49(%rip), %rdi
	call	puts@PLT
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
	movq	-308688(%rbp), %rax
	movq	%rax, %rdi
	call	print_list
.L150:
	movq	-309304(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	leaq	.LC50(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L151
	leaq	.LC51(%rip), %rdi
	call	puts@PLT
	movq	-309304(%rbp), %rax
	movl	4(%rax), %edx
	movq	-309264(%rbp), %rcx
	movl	-309384(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L151
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
.L151:
	movq	-309304(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	leaq	.LC52(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L152
	leaq	.LC53(%rip), %rdi
	call	puts@PLT
	movq	-309304(%rbp), %rax
	movl	4(%rax), %edx
	movq	-309264(%rbp), %rcx
	movl	-309384(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L152
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
.L152:
	movq	-309304(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	leaq	.LC54(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L153
	leaq	.LC55(%rip), %rdi
	call	puts@PLT
	movq	-309304(%rbp), %rax
	movl	4(%rax), %edx
	movq	-309264(%rbp), %rcx
	movl	-309384(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L153
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
.L153:
	movq	-309304(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	leaq	.LC56(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L154
	leaq	.LC57(%rip), %rdi
	call	puts@PLT
	movq	-309304(%rbp), %rax
	movl	4(%rax), %edx
	movq	-309264(%rbp), %rcx
	movl	-309384(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jg	.L154
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
.L154:
	movq	-309304(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	leaq	.LC58(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L155
	leaq	.LC59(%rip), %rdi
	call	puts@PLT
	movq	-309304(%rbp), %rax
	movl	4(%rax), %edx
	movq	-309264(%rbp), %rcx
	movl	-309384(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L155
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
.L155:
	movq	-309264(%rbp), %rax
	movq	100408(%rax), %rax
	movq	%rax, -309264(%rbp)
.L149:
	cmpq	$0, -309264(%rbp)
	jne	.L156
	leaq	.LC60(%rip), %rdi
	call	puts@PLT
	movq	-308688(%rbp), %rax
	movq	%rax, %rdi
	call	print_list
	leaq	.LC60(%rip), %rdi
	call	puts@PLT
	jmp	.L103
.L85:
	movq	$0, -308688(%rbp)
	movq	table_records(%rip), %rax
	movq	%rax, -309256(%rbp)
	leaq	.LC61(%rip), %rdi
	call	puts@PLT
	movl	$0, -309376(%rbp)
	movl	$0, -309372(%rbp)
	jmp	.L157
.L160:
	movq	schema(%rip), %rdx
	movl	-309372(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movq	-309304(%rbp), %rdx
	subq	$2032, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L158
	movl	-309372(%rbp), %eax
	movl	%eax, -309376(%rbp)
	movl	-309376(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC62(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L159
.L158:
	addl	$1, -309372(%rbp)
.L157:
	movl	8+schema(%rip), %eax
	cmpl	%eax, -309372(%rbp)
	jl	.L160
.L159:
	movq	-309256(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC63(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-309304(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	movq	%rax, %rsi
	leaq	.LC64(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-309304(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-309304(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rsi
	leaq	.LC65(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L161
.L164:
	movq	-309304(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	leaq	.LC66(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L162
	movq	-309304(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-1024(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movl	-309376(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rdx
	movq	-309256(%rbp), %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	leaq	.LC67(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-309376(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rdx
	movq	-309256(%rbp), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	leaq	-1024(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movl	%eax, %ebx
	movl	-309376(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rdx
	movq	-309256(%rbp), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-309304(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movl	%eax, %esi
	movl	-309376(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rdx
	movq	-309256(%rbp), %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movl	%ebx, %ecx
	movl	%esi, %edx
	movq	%rax, %rsi
	leaq	.LC68(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-309376(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rdx
	movq	-309256(%rbp), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-309304(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L162
	movl	$100416, %edi
	call	malloc@PLT
	movq	%rax, -309152(%rbp)
	movq	-309152(%rbp), %rdx
	movq	-309256(%rbp), %rax
	movq	%rdx, %rcx
	movl	$100404, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	leaq	-308688(%rbp), %rbx
	subq	$8, %rsp
	movq	-309152(%rbp), %rax
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
.L162:
	movq	-309256(%rbp), %rax
	movq	100408(%rax), %rax
	movq	%rax, -309256(%rbp)
.L161:
	cmpq	$0, -309256(%rbp)
	jne	.L164
	leaq	.LC69(%rip), %rdi
	call	puts@PLT
	movq	-308688(%rbp), %rax
	movq	%rax, %rdi
	call	print_list
	leaq	.LC70(%rip), %rdi
	call	puts@PLT
	jmp	.L103
.L86:
	movq	-309304(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-308688(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L103
.L87:
	leaq	.LC71(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movb	$0, -309418(%rbp)
	movl	$0, -309368(%rbp)
	jmp	.L165
.L168:
	movq	schema(%rip), %rdx
	movl	-309368(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-309304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L166
	movb	$1, -309418(%rbp)
	jmp	.L167
.L166:
	addl	$1, -309368(%rbp)
.L165:
	movl	8+schema(%rip), %eax
	cmpl	%eax, -309368(%rbp)
	jl	.L168
.L167:
	movzbl	-309418(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L169
	leaq	.LC72(%rip), %rdi
	call	puts@PLT
	jmp	.L46
.L169:
	movq	-309304(%rbp), %rdx
	leaq	-308688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	-308688(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC73(%rip), %rdi
	call	puts@PLT
	jmp	.L103
.L88:
	movl	$0, -308688(%rbp)
	leaq	-308688(%rbp), %rax
	addq	$1008, %rax
	movw	$61, (%rax)
	leaq	-308688(%rbp), %rax
	addq	$1008, %rax
	movq	%rax, %rsi
	leaq	.LC74(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L103
.L89:
	movl	$1, -308688(%rbp)
	movq	-309304(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -308684(%rbp)
	jmp	.L103
.L90:
	movb	$0, -309417(%rbp)
	movl	$0, -309364(%rbp)
	jmp	.L170
.L173:
	movq	schema(%rip), %rdx
	movl	-309364(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-309304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L171
	movb	$1, -309417(%rbp)
	jmp	.L172
.L171:
	addl	$1, -309364(%rbp)
.L170:
	movl	8+schema(%rip), %eax
	cmpl	%eax, -309364(%rbp)
	jl	.L173
.L172:
	movzbl	-309417(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L174
	leaq	.LC72(%rip), %rdi
	call	puts@PLT
	jmp	.L46
.L174:
	movq	-309304(%rbp), %rdx
	leaq	-308688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L103
.L91:
	movl	$0, -308688(%rbp)
	leaq	-308688(%rbp), %rax
	addq	$1008, %rax
	movw	$60, (%rax)
	jmp	.L103
.L92:
	movl	$0, -308688(%rbp)
	movw	$15676, -307680(%rbp)
	movb	$0, -307678(%rbp)
	jmp	.L103
.L93:
	movl	$0, -308688(%rbp)
	leaq	-308688(%rbp), %rax
	addq	$1008, %rax
	movw	$62, (%rax)
	jmp	.L103
.L94:
	movl	$0, -308688(%rbp)
	leaq	-308688(%rbp), %rax
	addq	$1008, %rax
	movw	$62, (%rax)
	jmp	.L103
.L95:
	movl	$0, -308688(%rbp)
	movw	$15677, -307680(%rbp)
	movb	$0, -307678(%rbp)
	jmp	.L103
.L96:
	movl	$0, -308688(%rbp)
	movw	$15649, -307680(%rbp)
	movb	$0, -307678(%rbp)
	jmp	.L103
.L97:
	movq	-309304(%rbp), %rax
	subq	$1016, %rax
	movq	(%rax), %rax
	movl	100400(%rax), %eax
	cmpl	$100, %eax
	jne	.L175
	leaq	.LC75(%rip), %rdi
	call	puts@PLT
	jmp	.L46
.L175:
	movq	-309304(%rbp), %rax
	subq	$1016, %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	movq	-309304(%rbp), %rax
	leaq	-2032(%rax), %rsi
	movq	-308688(%rbp), %rcx
	movq	-308688(%rbp), %rax
	movl	100400(%rax), %edx
	movl	(%rsi), %eax
	movslq	%edx, %rdx
	imulq	$1004, %rdx, %rdx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movq	-309304(%rbp), %rax
	subq	$2032, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L177
	cmpl	$1, %eax
	je	.L178
	jmp	.L237
.L177:
	movq	-309304(%rbp), %rax
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
	jmp	.L179
.L178:
	movq	-309304(%rbp), %rax
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
	jmp	.L179
.L237:
	leaq	.LC76(%rip), %rdi
	call	puts@PLT
	jmp	.L46
.L179:
	movq	-308688(%rbp), %rax
	movl	100400(%rax), %edx
	movq	-308688(%rbp), %rax
	addl	$1, %edx
	movl	%edx, 100400(%rax)
	jmp	.L103
.L98:
	movq	-309304(%rbp), %rax
	movq	(%rax), %rax
	movl	100400(%rax), %eax
	cmpl	$100, %eax
	jne	.L180
	leaq	.LC75(%rip), %rdi
	call	puts@PLT
	jmp	.L46
.L180:
	movq	-309304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	movq	-309304(%rbp), %rax
	leaq	-1016(%rax), %rsi
	movq	-308688(%rbp), %rcx
	movq	-308688(%rbp), %rax
	movl	100400(%rax), %edx
	movl	(%rsi), %eax
	movslq	%edx, %rdx
	imulq	$1004, %rdx, %rdx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movq	-309304(%rbp), %rax
	subq	$1016, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L182
	cmpl	$1, %eax
	je	.L183
	jmp	.L238
.L182:
	movq	-309304(%rbp), %rax
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
	jmp	.L184
.L183:
	movq	-309304(%rbp), %rax
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
	jmp	.L184
.L238:
	leaq	.LC76(%rip), %rdi
	call	puts@PLT
	jmp	.L46
.L184:
	movq	-308688(%rbp), %rax
	movl	100400(%rax), %edx
	movq	-308688(%rbp), %rax
	addl	$1, %edx
	movl	%edx, 100400(%rax)
	jmp	.L103
.L99:
	movl	$100404, %esi
	movl	$1, %edi
	call	calloc@PLT
	movq	%rax, -308688(%rbp)
	movq	-308688(%rbp), %rax
	movl	$0, 100400(%rax)
	jmp	.L103
.L100:
	movq	-309304(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -308688(%rbp)
	movl	-308688(%rbp), %eax
	testl	%eax, %eax
	je	.L186
	cmpl	$1, %eax
	je	.L187
	jmp	.L239
.L186:
	movq	-309304(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -308684(%rbp)
	jmp	.L188
.L187:
	movq	-309304(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-308688(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L188
.L239:
	leaq	.LC77(%rip), %rdi
	call	puts@PLT
	jmp	.L46
.L188:
	jmp	.L103
.L101:
	movq	-309304(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -308688(%rbp)
	movl	-308688(%rbp), %eax
	testl	%eax, %eax
	je	.L190
	cmpl	$1, %eax
	je	.L191
	jmp	.L240
.L190:
	movq	-309304(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -308684(%rbp)
	jmp	.L192
.L191:
	movq	-309304(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-308688(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L192
.L240:
	leaq	.LC77(%rip), %rdi
	call	puts@PLT
	jmp	.L46
.L192:
	jmp	.L103
.L102:
	movq	$0, table_records(%rip)
	movl	$16, %edx
	movl	$0, %esi
	leaq	schema(%rip), %rdi
	call	memset@PLT
	movq	-309304(%rbp), %rdx
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
	leaq	.LC78(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-4048(%rbp), %rax
	leaq	.LC79(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -309200(%rbp)
	cmpq	$0, -309200(%rbp)
	jne	.L193
	movl	$0, %eax
	call	handle_query_file_error
.L193:
	leaq	.LC80(%rip), %rdi
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
	movq	%rax, -309192(%rbp)
	cmpq	$0, -309192(%rbp)
	jne	.L194
	movl	$0, %edi
	call	handleError
.L194:
	leaq	.LC81(%rip), %rdi
	call	puts@PLT
	movq	$0, -309184(%rbp)
	movq	$0, -309344(%rbp)
	movl	$0, -309360(%rbp)
	jmp	.L195
.L196:
	addl	$1, -309360(%rbp)
.L195:
	movq	-309200(%rbp), %rdx
	leaq	-309336(%rbp), %rcx
	leaq	-309344(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getline@PLT
	movq	%rax, -309176(%rbp)
	cmpq	$-1, -309176(%rbp)
	jne	.L196
	movq	-309200(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-309360(%rbp), %eax
	movl	%eax, 8+schema(%rip)
	movl	-309360(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, schema(%rip)
	leaq	-4048(%rbp), %rax
	leaq	.LC79(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -309200(%rbp)
	movl	$0, -309356(%rbp)
	jmp	.L197
.L199:
	movq	-309344(%rbp), %rax
	movq	%rax, %rdi
	call	strip
	movq	-309344(%rbp), %rax
	leaq	.LC82(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -309160(%rbp)
	movq	schema(%rip), %rdx
	movl	-309356(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-309160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	leaq	.LC82(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -309160(%rbp)
	movq	-309160(%rbp), %rax
	leaq	.LC83(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L198
	movq	schema(%rip), %rcx
	movl	-309356(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -309356(%rbp)
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	movl	$1, (%rax)
	jmp	.L197
.L198:
	movq	-309160(%rbp), %rax
	leaq	.LC84(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L197
	movq	schema(%rip), %rcx
	movl	-309356(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -309356(%rbp)
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	movl	$0, (%rax)
.L197:
	movq	-309200(%rbp), %rdx
	leaq	-309336(%rbp), %rcx
	leaq	-309344(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getline@PLT
	movq	%rax, -309176(%rbp)
	cmpq	$-1, -309176(%rbp)
	jne	.L199
	movq	-309200(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-309360(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC85(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -309352(%rbp)
	jmp	.L200
.L201:
	movq	schema(%rip), %rdx
	movl	-309352(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movq	%rax, %rdi
	call	puts@PLT
	addl	$1, -309352(%rbp)
.L200:
	movl	-309352(%rbp), %eax
	cmpl	-309360(%rbp), %eax
	jl	.L201
	leaq	.LC86(%rip), %rdi
	call	puts@PLT
	jmp	.L202
.L211:
	movq	-309184(%rbp), %rax
	movzbl	18(%rax), %eax
	cmpb	$8, %al
	je	.L203
	jmp	.L202
.L203:
	movq	-309184(%rbp), %rax
	leaq	19(%rax), %rcx
	leaq	-3040(%rbp), %rdx
	leaq	-2032(%rbp), %rax
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-2032(%rbp), %rax
	leaq	.LC87(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -309168(%rbp)
	movq	-309168(%rbp), %rdx
	leaq	-309336(%rbp), %rcx
	leaq	-309344(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getline@PLT
	movq	%rax, -309176(%rbp)
	movq	-309344(%rbp), %rax
	movq	%rax, %rdi
	call	strip
	cmpq	$-1, -309176(%rbp)
	jne	.L204
	movl	$0, %eax
	call	handle_query_file_error
.L204:
	movl	$0, -309356(%rbp)
	movq	-309344(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	-309344(%rbp), %rdx
	leaq	-1024(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-309344(%rbp), %rax
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -309248(%rbp)
	jmp	.L205
.L206:
	addl	$1, -309356(%rbp)
	leaq	.LC20(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -309248(%rbp)
.L205:
	cmpq	$0, -309248(%rbp)
	jne	.L206
	movl	-309356(%rbp), %eax
	movl	%eax, -207264(%rbp)
	movl	$0, -309356(%rbp)
	leaq	-1024(%rbp), %rax
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -309248(%rbp)
	jmp	.L207
.L210:
	movq	schema(%rip), %rdx
	movl	-309356(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-309356(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$1004, %rdx, %rdx
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rdx
	subq	$307648, %rdx
	movl	%eax, (%rdx)
	movl	-309356(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$307648, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L208
	movq	-309248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	movl	-309356(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$307644, %rax
	movl	%edx, (%rax)
	jmp	.L209
.L208:
	leaq	-307664(%rbp), %rdx
	movl	-309356(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-309248(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
.L209:
	addl	$1, -309356(%rbp)
	leaq	.LC20(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -309248(%rbp)
.L207:
	cmpq	$0, -309248(%rbp)
	jne	.L210
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
.L202:
	movq	-309192(%rbp), %rax
	movq	%rax, %rdi
	call	readdir@PLT
	movq	%rax, -309184(%rbp)
	cmpq	$0, -309184(%rbp)
	jne	.L211
	movq	table_records(%rip), %rax
	movq	%rax, %rdi
	call	print_list
	leaq	-3040(%rbp), %rdx
	leaq	-308688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	.LC88(%rip), %rdi
	call	puts@PLT
	leaq	-308688(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L103
.L249:
	nop
.L103:
	movl	-309396(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	negq	%rax
	addq	%rax, -309304(%rbp)
	movl	-309396(%rbp), %eax
	cltq
	addq	%rax, %rax
	negq	%rax
	addq	%rax, -309320(%rbp)
	movl	$0, -309396(%rbp)
	addq	$1016, -309304(%rbp)
	movq	-309304(%rbp), %rax
	movq	%rax, %rdi
	leaq	-308688(%rbp), %rax
	movl	$127, %edx
	movq	%rax, %rsi
	movq	%rdx, %rcx
	rep movsq
	movl	-309408(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yyr1(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -309408(%rbp)
	movl	-309408(%rbp), %eax
	subl	$31, %eax
	movslq	%eax, %rdx
	leaq	yypgoto(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %edx
	movq	-309320(%rbp), %rax
	movzwl	(%rax), %eax
	cwtl
	addl	%edx, %eax
	movl	%eax, -309416(%rbp)
	cmpl	$0, -309416(%rbp)
	js	.L212
	cmpl	$63, -309416(%rbp)
	jg	.L212
	movl	-309416(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yycheck(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbw	%al, %dx
	movq	-309320(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	%ax, %dx
	jne	.L212
	movl	-309416(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yytable(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -309416(%rbp)
	jmp	.L39
.L212:
	movl	-309408(%rbp), %eax
	subl	$31, %eax
	movslq	%eax, %rdx
	leaq	yydefgoto(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -309416(%rbp)
	jmp	.L39
.L248:
	nop
.L61:
	movl	yychar(%rip), %eax
	cmpl	$-2, %eax
	je	.L214
	movl	yychar(%rip), %eax
	cmpl	$285, %eax
	ja	.L215
	movl	yychar(%rip), %eax
	movslq	%eax, %rdx
	leaq	yytranslate(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	jmp	.L217
.L215:
	movl	$2, %eax
	jmp	.L217
.L214:
	movl	$-2, %eax
.L217:
	movl	%eax, -309400(%rbp)
	cmpl	$0, -309412(%rbp)
	jne	.L218
	movl	yynerrs(%rip), %eax
	addl	$1, %eax
	movl	%eax, yynerrs(%rip)
	leaq	.LC89(%rip), %rdi
	call	yyerror
.L218:
	cmpl	$3, -309412(%rbp)
	jne	.L252
	movl	yychar(%rip), %eax
	testl	%eax, %eax
	jg	.L220
	movl	yychar(%rip), %eax
	testl	%eax, %eax
	jne	.L252
	jmp	.L46
.L220:
	movl	-309400(%rbp), %eax
	leaq	yylval(%rip), %rdx
	movl	%eax, %esi
	leaq	.LC90(%rip), %rdi
	call	yydestruct
	movl	$-2, yychar(%rip)
.L252:
	nop
.L221:
	movl	$3, -309412(%rbp)
.L225:
	movl	-309416(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yypact(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -309408(%rbp)
	cmpl	$-41, -309408(%rbp)
	je	.L222
	addl	$1, -309408(%rbp)
	cmpl	$0, -309408(%rbp)
	js	.L222
	cmpl	$63, -309408(%rbp)
	jg	.L222
	movl	-309408(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yycheck(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	cmpb	$1, %al
	jne	.L222
	movl	-309408(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yytable(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -309408(%rbp)
	cmpl	$0, -309408(%rbp)
	jg	.L253
.L222:
	movq	-309320(%rbp), %rax
	cmpq	-309328(%rbp), %rax
	je	.L254
	movl	-309416(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yystos(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movq	-309304(%rbp), %rdx
	movl	%eax, %esi
	leaq	.LC91(%rip), %rdi
	call	yydestruct
	subq	$1016, -309304(%rbp)
	subq	$2, -309320(%rbp)
	movq	-309320(%rbp), %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, -309416(%rbp)
	jmp	.L225
.L253:
	nop
	addq	$1016, -309304(%rbp)
	movq	-309304(%rbp), %rax
	movq	%rax, %rdi
	leaq	yylval(%rip), %rax
	movl	$127, %edx
	movq	%rax, %rsi
	movq	%rdx, %rcx
	rep movsq
	movl	-309408(%rbp), %eax
	movl	%eax, -309416(%rbp)
	jmp	.L39
.L245:
	nop
.L48:
	movl	$0, -309404(%rbp)
	jmp	.L226
.L244:
	nop
	jmp	.L46
.L254:
	nop
.L46:
	movl	$1, -309404(%rbp)
	jmp	.L226
.L242:
	nop
	jmp	.L42
.L243:
	nop
.L42:
	leaq	.LC92(%rip), %rdi
	call	yyerror
	movl	$2, -309404(%rbp)
.L226:
	movl	yychar(%rip), %eax
	cmpl	$-2, %eax
	je	.L227
	movl	yychar(%rip), %eax
	cmpl	$285, %eax
	ja	.L228
	movl	yychar(%rip), %eax
	movslq	%eax, %rdx
	leaq	yytranslate(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	jmp	.L229
.L228:
	movl	$2, %eax
.L229:
	movl	%eax, -309400(%rbp)
	movl	-309400(%rbp), %eax
	leaq	yylval(%rip), %rdx
	movl	%eax, %esi
	leaq	.LC93(%rip), %rdi
	call	yydestruct
.L227:
	movl	-309396(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	negq	%rax
	addq	%rax, -309304(%rbp)
	movl	-309396(%rbp), %eax
	cltq
	addq	%rax, %rax
	negq	%rax
	addq	%rax, -309320(%rbp)
	jmp	.L230
.L231:
	movq	-309320(%rbp), %rax
	movzwl	(%rax), %eax
	cwtl
	movslq	%eax, %rdx
	leaq	yystos(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movq	-309304(%rbp), %rdx
	movl	%eax, %esi
	leaq	.LC94(%rip), %rdi
	call	yydestruct
	subq	$1016, -309304(%rbp)
	subq	$2, -309320(%rbp)
.L230:
	movq	-309320(%rbp), %rax
	cmpq	-309328(%rbp), %rax
	jne	.L231
	leaq	-309088(%rbp), %rax
	cmpq	%rax, -309328(%rbp)
	je	.L232
	movq	-309328(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L232:
	movl	-309404(%rbp), %eax
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L234
	call	__stack_chk_fail@PLT
.L234:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	yyparse, .-yyparse
	.section	.rodata
	.align 8
.LC95:
	.string	"The mode provided for opening the file is incorrect"
	.align 8
.LC96:
	.string	"Out of memory as the memory has hit the memory limit set internally"
	.align 8
.LC97:
	.string	"Access to the current file is not allowed.Check the permissions set for the file"
	.align 8
.LC98:
	.string	"The path name is outside your accessible address space"
.LC99:
	.string	"This file does not exist"
	.text
	.globl	handle_query_file_error
	.type	handle_query_file_error, @function
handle_query_file_error:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$22, %eax
	ja	.L256
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L258(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L258(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L258:
	.long	.L256-.L258
	.long	.L256-.L258
	.long	.L257-.L258
	.long	.L256-.L258
	.long	.L256-.L258
	.long	.L256-.L258
	.long	.L256-.L258
	.long	.L256-.L258
	.long	.L256-.L258
	.long	.L256-.L258
	.long	.L256-.L258
	.long	.L256-.L258
	.long	.L259-.L258
	.long	.L260-.L258
	.long	.L261-.L258
	.long	.L256-.L258
	.long	.L256-.L258
	.long	.L256-.L258
	.long	.L256-.L258
	.long	.L256-.L258
	.long	.L256-.L258
	.long	.L256-.L258
	.long	.L262-.L258
	.text
.L262:
	leaq	.LC95(%rip), %rdi
	call	puts@PLT
	jmp	.L256
.L259:
	leaq	.LC96(%rip), %rdi
	call	puts@PLT
	jmp	.L256
.L260:
	leaq	.LC97(%rip), %rdi
	call	puts@PLT
	jmp	.L256
.L261:
	leaq	.LC98(%rip), %rdi
	call	puts@PLT
	jmp	.L256
.L257:
	leaq	.LC99(%rip), %rdi
	call	puts@PLT
	nop
.L256:
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE13:
	.size	handle_query_file_error, .-handle_query_file_error
	.section	.rodata
.LC100:
	.string	" %s\n"
	.text
	.globl	yyerror
	.type	yyerror, @function
yyerror:
.LFB14:
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
	leaq	.LC100(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	yyerror, .-yyerror
	.section	.rodata
.LC101:
	.string	"Permission denied.\n"
	.align 8
.LC102:
	.string	"fd is not a valid file descriptor opened for reading.\n"
	.align 8
.LC103:
	.string	"The per-process limit on the number of open file descriptors has been reached.\n"
	.align 8
.LC104:
	.string	"The system-wide limit on the total number of open files has been reached.\n"
	.align 8
.LC105:
	.string	"Directory does not exist, or name is an empty string."
	.align 8
.LC106:
	.string	"Do you want to create a new master Directory(y/n)"
.LC107:
	.string	"%c"
.LC108:
	.string	"Terminating execution"
	.align 8
.LC109:
	.string	" Make use of the schema and the data helper utilities to fill the schema details and the input files"
	.align 8
.LC110:
	.string	"Insufficient memory to complete the operation.\n"
.LC111:
	.string	"name is not a directory.\n"
	.text
	.globl	handleError
	.type	handleError, @function
handleError:
.LFB15:
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
	ja	.L279
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L268(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L268(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L268:
	.long	.L279-.L268
	.long	.L279-.L268
	.long	.L267-.L268
	.long	.L279-.L268
	.long	.L279-.L268
	.long	.L279-.L268
	.long	.L279-.L268
	.long	.L279-.L268
	.long	.L279-.L268
	.long	.L269-.L268
	.long	.L279-.L268
	.long	.L279-.L268
	.long	.L270-.L268
	.long	.L271-.L268
	.long	.L279-.L268
	.long	.L279-.L268
	.long	.L279-.L268
	.long	.L279-.L268
	.long	.L279-.L268
	.long	.L279-.L268
	.long	.L272-.L268
	.long	.L279-.L268
	.long	.L279-.L268
	.long	.L273-.L268
	.long	.L274-.L268
	.text
.L271:
	leaq	.LC101(%rip), %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L269:
	leaq	.LC102(%rip), %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L274:
	leaq	.LC103(%rip), %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L273:
	leaq	.LC104(%rip), %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L267:
	leaq	.LC105(%rip), %rdi
	call	puts@PLT
	cmpl	$1, -20(%rbp)
	jne	.L275
	leaq	.LC106(%rip), %rdi
	call	puts@PLT
	leaq	-9(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC107(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-9(%rbp), %eax
	cmpb	$110, %al
	je	.L276
	movzbl	-9(%rbp), %eax
	cmpb	$78, %al
	jne	.L277
.L276:
	leaq	.LC108(%rip), %rdi
	call	puts@PLT
	movl	$0, %edi
	call	exit@PLT
.L277:
	movl	$511, %esi
	leaq	.LC0(%rip), %rdi
	call	mkdir@PLT
	movl	$511, %esi
	leaq	.LC1(%rip), %rdi
	call	mkdir@PLT
	leaq	.LC109(%rip), %rdi
	call	puts@PLT
	movl	$0, %edi
	call	exit@PLT
.L275:
	movl	$0, %edi
	call	exit@PLT
.L270:
	leaq	.LC110(%rip), %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L272:
	leaq	.LC111(%rip), %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L279:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L278
	call	__stack_chk_fail@PLT
.L278:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	handleError, .-handleError
	.section	.rodata
	.align 8
.LC112:
	.string	"The master diretory is initialized."
	.text
	.globl	initFunction
	.type	initFunction, @function
initFunction:
.LFB16:
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
	je	.L281
	leaq	.LC112(%rip), %rdi
	call	puts@PLT
	jmp	.L282
.L281:
	movl	$2, %edi
	call	handleError
.L282:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	initFunction, .-initFunction
	.globl	main
	.type	main, @function
main:
.LFB17:
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
.L285:
	call	yyparse
	testl	%eax, %eax
	je	.L285
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
