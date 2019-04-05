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
.LC14:
	.string	"DELETE KE ANDAR"
.LC15:
	.string	"the dir handle 2 is %p\n"
	.align 8
.LC16:
	.string	"the type is %d, STRING %d INT %d\n "
.LC17:
	.string	"%s/%s.txt"
.LC18:
	.string	"path to deletion"
.LC19:
	.string	"%d.txt"
.LC20:
	.string	"string format is %s\n"
.LC21:
	.string	"%s is the dir_name\n"
.LC22:
	.string	"%s/%s"
.LC23:
	.string	"entered condition list"
.LC24:
	.string	"Inside AND"
.LC25:
	.string	"output after condition\n"
.LC26:
	.string	"GAND"
.LC27:
	.string	"GORI"
.LC28:
	.string	"entered NUMERICAL_CONDITION"
.LC29:
	.string	"schema field name %s \n"
	.align 8
.LC30:
	.string	"table record pointer: %p, first record %d\n"
.LC31:
	.string	"comparing %d\n"
.LC32:
	.string	"values in iter %d\n"
.LC33:
	.string	"=="
.LC34:
	.string	"eq"
.LC35:
	.string	"$3 value integer is %d\n"
.LC36:
	.string	"EQ condition matched"
.LC37:
	.string	"!="
.LC38:
	.string	"neq"
.LC39:
	.string	">"
.LC40:
	.string	"gt"
.LC41:
	.string	"<"
.LC42:
	.string	"lt"
.LC43:
	.string	">="
.LC44:
	.string	"geq"
.LC45:
	.string	"<="
.LC46:
	.string	"leq"
	.align 8
.LC47:
	.string	"DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD"
.LC48:
	.string	"INSIDE STRING COND"
.LC49:
	.string	"%d is POS OF FIELD\n"
.LC50:
	.string	"ITER IS %p\n"
.LC51:
	.string	"OP IS %s\n"
.LC52:
	.string	"COMPARinG with %s %d\n"
.LC53:
	.string	"="
.LC54:
	.string	"Length of the iter string %d\n"
	.align 8
.LC55:
	.string	"NOW COMPARING %s %d with temp %d\n"
.LC56:
	.string	"DAS STRING CONDITIONES OP IS "
.LC57:
	.string	"I AINT GOT NO MONEY"
.LC58:
	.string	"THE STRING FIELD IS "
.LC59:
	.string	"FIELD NOT FOUND, CHECK QUERY"
	.align 8
.LC60:
	.string	"DDDDDDDDDDDDSSSSSSSSSSSSSSEEEEEEEEEEEEE"
.LC61:
	.string	"RECEIVED OP %s"
	.align 8
.LC62:
	.string	"Need more fields in the definition? contact the developer"
	.align 8
.LC63:
	.string	"This datatype has not been defined"
	.align 8
.LC64:
	.string	"Illegal type stopping execution"
.LC65:
	.string	"path to schema is %s\n"
.LC66:
	.string	"r+"
.LC67:
	.string	"Table Schema found!"
.LC68:
	.string	"The table is found"
.LC69:
	.string	":"
.LC70:
	.string	"string"
.LC71:
	.string	"int"
.LC72:
	.string	"Number of  Attributes: %d\n"
.LC73:
	.string	"dummy"
.LC74:
	.string	"r"
.LC75:
	.string	"\t"
.LC76:
	.string	"THE PATH TO THE TABLE IS"
.LC77:
	.string	"syntax error"
.LC78:
	.string	"Error: discarding"
.LC79:
	.string	"Error: popping"
.LC80:
	.string	"memory exhausted"
.LC81:
	.string	"Cleanup: discarding lookahead"
.LC82:
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
	jmp	.L38
.L39:
	addq	$2, -309304(%rbp)
.L38:
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
	jb	.L40
	movq	-309304(%rbp), %rdx
	movq	-309312(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	%rax
	addq	$1, %rax
	movq	%rax, -309224(%rbp)
	cmpq	$9999, -309280(%rbp)
	ja	.L222
	salq	-309280(%rbp)
	cmpq	$10000, -309280(%rbp)
	jbe	.L43
	movq	$10000, -309280(%rbp)
.L43:
	movq	-309312(%rbp), %rax
	movq	%rax, -309216(%rbp)
	movq	-309280(%rbp), %rax
	imulq	$1018, %rax, %rax
	addq	$1015, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -309208(%rbp)
	cmpq	$0, -309208(%rbp)
	je	.L223
	movq	-309224(%rbp), %rax
	leaq	(%rax,%rax), %rcx
	movq	-309208(%rbp), %rdx
	movq	-309312(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	%rax, %rsi
	call	memcpy@PLT
	movq	-309208(%rbp), %rax
	movq	%rax, -309312(%rbp)
	movq	-309280(%rbp), %rax
	addq	%rax, %rax
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
	addq	%rax, -309208(%rbp)
	movq	-309224(%rbp), %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	movq	-309208(%rbp), %rdx
	movq	-309296(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-309208(%rbp), %rax
	movq	%rax, -309296(%rbp)
	movq	-309280(%rbp), %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	$1015, %rax
	movq	%rax, -309192(%rbp)
	movq	-309192(%rbp), %rax
	shrq	$3, %rax
	movabsq	$2323999253380730913, %rdx
	mulq	%rdx
	shrq	$4, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, -309208(%rbp)
	leaq	-309088(%rbp), %rax
	cmpq	%rax, -309216(%rbp)
	je	.L45
	movq	-309216(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L45:
	movq	-309224(%rbp), %rax
	addq	%rax, %rax
	leaq	-2(%rax), %rdx
	movq	-309312(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -309304(%rbp)
	movq	-309224(%rbp), %rdx
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
	jnb	.L224
.L40:
	cmpl	$15, -309392(%rbp)
	je	.L225
	nop
.L49:
	movl	-309392(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yypact(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -309384(%rbp)
	cmpl	$-41, -309384(%rbp)
	je	.L226
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
	movl	$0, -309376(%rbp)
	movl	-309376(%rbp), %eax
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
	movl	%eax, -309376(%rbp)
.L54:
	movl	-309376(%rbp), %eax
	addl	%eax, -309384(%rbp)
	cmpl	$0, -309384(%rbp)
	js	.L227
	cmpl	$63, -309384(%rbp)
	jg	.L227
	movl	-309384(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yycheck(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, -309376(%rbp)
	jne	.L227
	movl	-309384(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yytable(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -309384(%rbp)
	cmpl	$0, -309384(%rbp)
	jg	.L57
	negl	-309384(%rbp)
	jmp	.L58
.L57:
	cmpl	$0, -309388(%rbp)
	je	.L59
	subl	$1, -309388(%rbp)
.L59:
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
	jmp	.L39
.L226:
	nop
	jmp	.L51
.L227:
	nop
.L51:
	movl	-309392(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yydefact(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -309384(%rbp)
	cmpl	$0, -309384(%rbp)
	je	.L228
	nop
.L58:
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
	ja	.L229
	movl	-309384(%rbp), %eax
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
	.long	.L229-.L64
	.long	.L229-.L64
	.long	.L63-.L64
	.long	.L65-.L64
	.long	.L66-.L64
	.long	.L67-.L64
	.long	.L229-.L64
	.long	.L229-.L64
	.long	.L229-.L64
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
.L71:
	movq	-309288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -309272(%rbp)
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	movq	-309272(%rbp), %rax
	movq	%rax, %rdi
	call	print_list
	movq	-309288(%rbp), %rax
	subq	$2032, %rax
	movq	%rax, %rdi
	call	opendir@PLT
	movq	%rax, -309104(%rbp)
	movl	$2, -309332(%rbp)
	jmp	.L104
.L113:
	movq	-309288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -309272(%rbp)
	jmp	.L105
.L112:
	movq	-309272(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-309272(%rbp), %rax
	movl	(%rax), %eax
	movl	$0, %ecx
	movl	$1, %edx
	movl	%eax, %esi
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-309272(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L107
	cmpl	$1, %eax
	jne	.L106
	movq	-309096(%rbp), %rax
	leaq	19(%rax), %rdx
	movq	-309272(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L230
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
	leaq	.LC18(%rip), %rdi
	call	puts@PLT
	leaq	-1024(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-1024(%rbp), %rax
	movq	%rax, %rdi
	call	remove@PLT
	jmp	.L230
.L107:
	movl	$3, -309332(%rbp)
	movq	-309272(%rbp), %rax
	movl	4(%rax), %edx
	leaq	-2032(%rbp), %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-2032(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-309096(%rbp), %rax
	addq	$19, %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-309096(%rbp), %rax
	leaq	19(%rax), %rdx
	leaq	-2032(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L231
	movq	-309096(%rbp), %rax
	leaq	19(%rax), %rdx
	movq	-309288(%rbp), %rax
	subq	$2032, %rax
	movq	%rax, %rsi
	leaq	-1024(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	.LC18(%rip), %rdi
	call	puts@PLT
	leaq	-1024(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-1024(%rbp), %rax
	movq	%rax, %rdi
	call	remove@PLT
	nop
	jmp	.L231
.L230:
	nop
	jmp	.L106
.L231:
	nop
.L106:
	movq	-309272(%rbp), %rax
	movq	100408(%rax), %rax
	movq	%rax, -309272(%rbp)
.L105:
	cmpq	$0, -309272(%rbp)
	jne	.L112
.L104:
	movq	-309104(%rbp), %rax
	movq	%rax, %rdi
	call	readdir@PLT
	movq	%rax, -309096(%rbp)
	cmpq	$0, -309096(%rbp)
	jne	.L113
	jmp	.L103
.L72:
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	jmp	.L103
.L73:
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
	jmp	.L103
.L74:
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
	jmp	.L103
.L75:
	movq	-309288(%rbp), %rdx
	leaq	-308688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L103
.L76:
	leaq	.LC23(%rip), %rdi
	call	puts@PLT
	movq	$0, -308688(%rbp)
	movq	-309288(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rax
	movq	%rax, -309264(%rbp)
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L114
	leaq	.LC24(%rip), %rdi
	call	puts@PLT
	jmp	.L115
.L117:
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
	je	.L116
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
.L116:
	movq	-309264(%rbp), %rax
	movq	100408(%rax), %rax
	movq	%rax, -309264(%rbp)
.L115:
	cmpq	$0, -309264(%rbp)
	jne	.L117
	jmp	.L118
.L114:
	movq	-309288(%rbp), %rax
	subq	$2032, %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	movq	-309288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -309264(%rbp)
	jmp	.L119
.L121:
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
	je	.L120
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
.L120:
	movq	-309264(%rbp), %rax
	movq	100408(%rax), %rax
	movq	%rax, -309264(%rbp)
.L119:
	cmpq	$0, -309264(%rbp)
	jne	.L121
.L118:
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	movq	-308688(%rbp), %rax
	movq	%rax, %rdi
	call	print_list
	jmp	.L103
.L77:
	movq	-309288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	jmp	.L103
.L78:
	leaq	.LC26(%rip), %rdi
	call	puts@PLT
	movl	$1, -308688(%rbp)
	jmp	.L103
.L79:
	leaq	.LC27(%rip), %rdi
	call	puts@PLT
	movl	$0, -308688(%rbp)
	jmp	.L103
.L80:
	movq	-309288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	jmp	.L103
.L81:
	movq	-309288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	jmp	.L103
.L82:
	movq	$0, -308688(%rbp)
	movq	table_records(%rip), %rax
	movq	%rax, -309256(%rbp)
	jmp	.L122
.L124:
	movq	-309288(%rbp), %rax
	movq	(%rax), %rbx
	movq	-309256(%rbp), %rax
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
	je	.L123
	leaq	-308688(%rbp), %rbx
	subq	$8, %rsp
	movq	-309256(%rbp), %rax
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
.L123:
	movq	-309256(%rbp), %rax
	movq	100408(%rax), %rax
	movq	%rax, -309256(%rbp)
.L122:
	cmpq	$0, -309256(%rbp)
	jne	.L124
	jmp	.L103
.L83:
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	movq	(%rax), %rax
	movq	%rax, -308688(%rbp)
	jmp	.L103
.L84:
	movq	$0, -308688(%rbp)
	leaq	.LC28(%rip), %rdi
	call	puts@PLT
	movq	table_records(%rip), %rax
	movq	%rax, -309248(%rbp)
	movq	table_records(%rip), %rax
	movq	%rax, %rdi
	call	print_list
	movl	$0, -309368(%rbp)
	movl	$0, -309364(%rbp)
	jmp	.L125
.L128:
	movq	-309288(%rbp), %rax
	subq	$2032, %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rdi
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
	jne	.L126
	movl	-309364(%rbp), %eax
	movl	%eax, -309368(%rbp)
	jmp	.L127
.L126:
	addl	$1, -309364(%rbp)
.L125:
	movl	8+schema(%rip), %eax
	cmpl	%eax, -309364(%rbp)
	jl	.L128
.L127:
	movq	-309248(%rbp), %rdx
	movl	-309368(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-309248(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC30(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-309288(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %esi
	leaq	.LC31(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L129
.L136:
	movq	-309248(%rbp), %rdx
	movl	-309368(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC32(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$100416, %edi
	call	malloc@PLT
	movq	%rax, -309128(%rbp)
	movq	-309128(%rbp), %rdx
	movq	-309248(%rbp), %rax
	movq	%rdx, %rcx
	movl	$100404, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L130
	leaq	.LC34(%rip), %rdi
	call	puts@PLT
	movq	-309288(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %esi
	leaq	.LC35(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-309288(%rbp), %rax
	movl	4(%rax), %edx
	movq	-309248(%rbp), %rcx
	movl	-309368(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L130
	leaq	.LC36(%rip), %rdi
	call	puts@PLT
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
	movq	-308688(%rbp), %rax
	movq	%rax, %rdi
	call	print_list
.L130:
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	leaq	.LC37(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L131
	leaq	.LC38(%rip), %rdi
	call	puts@PLT
	movq	-309288(%rbp), %rax
	movl	4(%rax), %edx
	movq	-309248(%rbp), %rcx
	movl	-309368(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L131
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
.L131:
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L132
	leaq	.LC40(%rip), %rdi
	call	puts@PLT
	movq	-309288(%rbp), %rax
	movl	4(%rax), %edx
	movq	-309248(%rbp), %rcx
	movl	-309368(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L132
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
.L132:
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	leaq	.LC41(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L133
	leaq	.LC42(%rip), %rdi
	call	puts@PLT
	movq	-309288(%rbp), %rax
	movl	4(%rax), %edx
	movq	-309248(%rbp), %rcx
	movl	-309368(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L133
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
.L133:
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	leaq	.LC43(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L134
	leaq	.LC44(%rip), %rdi
	call	puts@PLT
	movq	-309288(%rbp), %rax
	movl	4(%rax), %edx
	movq	-309248(%rbp), %rcx
	movl	-309368(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jg	.L134
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
.L134:
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L135
	leaq	.LC46(%rip), %rdi
	call	puts@PLT
	movq	-309288(%rbp), %rax
	movl	4(%rax), %edx
	movq	-309248(%rbp), %rcx
	movl	-309368(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L135
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
.L135:
	movq	-309248(%rbp), %rax
	movq	100408(%rax), %rax
	movq	%rax, -309248(%rbp)
.L129:
	cmpq	$0, -309248(%rbp)
	jne	.L136
	leaq	.LC47(%rip), %rdi
	call	puts@PLT
	movq	-308688(%rbp), %rax
	movq	%rax, %rdi
	call	print_list
	leaq	.LC47(%rip), %rdi
	call	puts@PLT
	jmp	.L103
.L85:
	movq	$0, -308688(%rbp)
	movq	table_records(%rip), %rax
	movq	%rax, -309240(%rbp)
	leaq	.LC48(%rip), %rdi
	call	puts@PLT
	movl	$0, -309360(%rbp)
	movl	$0, -309356(%rbp)
	jmp	.L137
.L140:
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
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L138
	movl	-309356(%rbp), %eax
	movl	%eax, -309360(%rbp)
	movl	-309360(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC49(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L139
.L138:
	addl	$1, -309356(%rbp)
.L137:
	movl	8+schema(%rip), %eax
	cmpl	%eax, -309356(%rbp)
	jl	.L140
.L139:
	movq	-309240(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC50(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	movq	%rax, %rsi
	leaq	.LC51(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-309288(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-309288(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rsi
	leaq	.LC52(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L141
.L144:
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	addq	$1008, %rax
	leaq	.LC53(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L142
	movq	-309288(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-1024(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movl	-309360(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rdx
	movq	-309240(%rbp), %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	leaq	.LC54(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-309360(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rdx
	movq	-309240(%rbp), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	leaq	-1024(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movl	%eax, %ebx
	movl	-309360(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rdx
	movq	-309240(%rbp), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-309288(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movl	%eax, %esi
	movl	-309360(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rdx
	movq	-309240(%rbp), %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movl	%ebx, %ecx
	movl	%esi, %edx
	movq	%rax, %rsi
	leaq	.LC55(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-309360(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rdx
	movq	-309240(%rbp), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-309288(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L142
	movl	$100416, %edi
	call	malloc@PLT
	movq	%rax, -309136(%rbp)
	movq	-309136(%rbp), %rdx
	movq	-309240(%rbp), %rax
	movq	%rdx, %rcx
	movl	$100404, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
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
.L142:
	movq	-309240(%rbp), %rax
	movq	100408(%rax), %rax
	movq	%rax, -309240(%rbp)
.L141:
	cmpq	$0, -309240(%rbp)
	jne	.L144
	leaq	.LC56(%rip), %rdi
	call	puts@PLT
	movq	-308688(%rbp), %rax
	movq	%rax, %rdi
	call	print_list
	leaq	.LC57(%rip), %rdi
	call	puts@PLT
	jmp	.L103
.L86:
	movq	-309288(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-308688(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L103
.L87:
	leaq	.LC58(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movb	$0, -309394(%rbp)
	movl	$0, -309352(%rbp)
	jmp	.L145
.L148:
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
	jne	.L146
	movb	$1, -309394(%rbp)
	jmp	.L147
.L146:
	addl	$1, -309352(%rbp)
.L145:
	movl	8+schema(%rip), %eax
	cmpl	%eax, -309352(%rbp)
	jl	.L148
.L147:
	movzbl	-309394(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L149
	leaq	.LC59(%rip), %rdi
	call	puts@PLT
	jmp	.L46
.L149:
	movq	-309288(%rbp), %rdx
	leaq	-308688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	-308688(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC60(%rip), %rdi
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
	leaq	.LC61(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L103
.L89:
	movl	$1, -308688(%rbp)
	movq	-309288(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -308684(%rbp)
	jmp	.L103
.L90:
	movb	$0, -309393(%rbp)
	movl	$0, -309348(%rbp)
	jmp	.L150
.L153:
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
	jne	.L151
	movb	$1, -309393(%rbp)
	jmp	.L152
.L151:
	addl	$1, -309348(%rbp)
.L150:
	movl	8+schema(%rip), %eax
	cmpl	%eax, -309348(%rbp)
	jl	.L153
.L152:
	movzbl	-309393(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L154
	leaq	.LC59(%rip), %rdi
	call	puts@PLT
	jmp	.L46
.L154:
	movq	-309288(%rbp), %rdx
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
	movq	-309288(%rbp), %rax
	subq	$1016, %rax
	movq	(%rax), %rax
	movl	100400(%rax), %eax
	cmpl	$100, %eax
	jne	.L155
	leaq	.LC62(%rip), %rdi
	call	puts@PLT
	jmp	.L46
.L155:
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
	je	.L157
	cmpl	$1, %eax
	je	.L158
	jmp	.L217
.L157:
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
	jmp	.L159
.L158:
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
	jmp	.L159
.L217:
	leaq	.LC63(%rip), %rdi
	call	puts@PLT
	jmp	.L46
.L159:
	movq	-308688(%rbp), %rax
	movl	100400(%rax), %edx
	movq	-308688(%rbp), %rax
	addl	$1, %edx
	movl	%edx, 100400(%rax)
	jmp	.L103
.L98:
	movq	-309288(%rbp), %rax
	movq	(%rax), %rax
	movl	100400(%rax), %eax
	cmpl	$100, %eax
	jne	.L160
	leaq	.LC62(%rip), %rdi
	call	puts@PLT
	jmp	.L46
.L160:
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
	je	.L162
	cmpl	$1, %eax
	je	.L163
	jmp	.L218
.L162:
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
	jmp	.L164
.L163:
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
	jmp	.L164
.L218:
	leaq	.LC63(%rip), %rdi
	call	puts@PLT
	jmp	.L46
.L164:
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
	movq	-309288(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -308688(%rbp)
	movl	-308688(%rbp), %eax
	testl	%eax, %eax
	je	.L166
	cmpl	$1, %eax
	je	.L167
	jmp	.L219
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
.L219:
	leaq	.LC64(%rip), %rdi
	call	puts@PLT
	jmp	.L46
.L168:
	jmp	.L103
.L101:
	movq	-309288(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -308688(%rbp)
	movl	-308688(%rbp), %eax
	testl	%eax, %eax
	je	.L170
	cmpl	$1, %eax
	je	.L171
	jmp	.L220
.L170:
	movq	-309288(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -308684(%rbp)
	jmp	.L172
.L171:
	movq	-309288(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-308688(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L172
.L220:
	leaq	.LC64(%rip), %rdi
	call	puts@PLT
	jmp	.L46
.L172:
	jmp	.L103
.L102:
	movq	$0, table_records(%rip)
	movl	$16, %edx
	movl	$0, %esi
	leaq	schema(%rip), %rdi
	call	memset@PLT
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
	leaq	.LC65(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-4048(%rbp), %rax
	leaq	.LC66(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -309184(%rbp)
	cmpq	$0, -309184(%rbp)
	jne	.L173
	movl	$0, %eax
	call	handle_query_file_error
.L173:
	leaq	.LC67(%rip), %rdi
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
	movq	%rax, -309176(%rbp)
	cmpq	$0, -309176(%rbp)
	jne	.L174
	movl	$0, %edi
	call	handleError
.L174:
	leaq	.LC68(%rip), %rdi
	call	puts@PLT
	movq	$0, -309168(%rbp)
	movq	$0, -309328(%rbp)
	movl	$0, -309344(%rbp)
	jmp	.L175
.L176:
	addl	$1, -309344(%rbp)
.L175:
	movq	-309184(%rbp), %rdx
	leaq	-309320(%rbp), %rcx
	leaq	-309328(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getline@PLT
	movq	%rax, -309160(%rbp)
	cmpq	$-1, -309160(%rbp)
	jne	.L176
	movq	-309184(%rbp), %rax
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
	leaq	.LC66(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -309184(%rbp)
	movl	$0, -309340(%rbp)
	jmp	.L177
.L179:
	movq	-309328(%rbp), %rax
	movq	%rax, %rdi
	call	strip
	movq	-309328(%rbp), %rax
	leaq	.LC69(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -309144(%rbp)
	movq	schema(%rip), %rdx
	movl	-309340(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-309144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	leaq	.LC69(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -309144(%rbp)
	movq	-309144(%rbp), %rax
	leaq	.LC70(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L178
	movq	schema(%rip), %rcx
	movl	-309340(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -309340(%rbp)
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	movl	$1, (%rax)
	jmp	.L177
.L178:
	movq	-309144(%rbp), %rax
	leaq	.LC71(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L177
	movq	schema(%rip), %rcx
	movl	-309340(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -309340(%rbp)
	cltq
	imulq	$1004, %rax, %rax
	addq	%rcx, %rax
	movl	$0, (%rax)
.L177:
	movq	-309184(%rbp), %rdx
	leaq	-309320(%rbp), %rcx
	leaq	-309328(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getline@PLT
	movq	%rax, -309160(%rbp)
	cmpq	$-1, -309160(%rbp)
	jne	.L179
	movq	-309184(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-309344(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC72(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -309336(%rbp)
	jmp	.L180
.L181:
	movq	schema(%rip), %rdx
	movl	-309336(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movq	%rax, %rdi
	call	puts@PLT
	addl	$1, -309336(%rbp)
.L180:
	movl	-309336(%rbp), %eax
	cmpl	-309344(%rbp), %eax
	jl	.L181
	leaq	.LC73(%rip), %rdi
	call	puts@PLT
	jmp	.L182
.L191:
	movq	-309168(%rbp), %rax
	movzbl	18(%rax), %eax
	cmpb	$8, %al
	je	.L183
	jmp	.L182
.L183:
	movq	-309168(%rbp), %rax
	leaq	19(%rax), %rcx
	leaq	-3040(%rbp), %rdx
	leaq	-2032(%rbp), %rax
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-2032(%rbp), %rax
	leaq	.LC74(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -309152(%rbp)
	movq	-309152(%rbp), %rdx
	leaq	-309320(%rbp), %rcx
	leaq	-309328(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getline@PLT
	movq	%rax, -309160(%rbp)
	movq	-309328(%rbp), %rax
	movq	%rax, %rdi
	call	strip
	cmpq	$-1, -309160(%rbp)
	jne	.L184
	movl	$0, %eax
	call	handle_query_file_error
.L184:
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
	leaq	.LC75(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -309232(%rbp)
	jmp	.L185
.L186:
	addl	$1, -309340(%rbp)
	leaq	.LC75(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -309232(%rbp)
.L185:
	cmpq	$0, -309232(%rbp)
	jne	.L186
	movl	-309340(%rbp), %eax
	movl	%eax, -207264(%rbp)
	movl	$0, -309340(%rbp)
	leaq	-1024(%rbp), %rax
	leaq	.LC75(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -309232(%rbp)
	jmp	.L187
.L190:
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
	jne	.L188
	movq	-309232(%rbp), %rax
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
	jmp	.L189
.L188:
	leaq	-307664(%rbp), %rdx
	movl	-309340(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-309232(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
.L189:
	addl	$1, -309340(%rbp)
	leaq	.LC75(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -309232(%rbp)
.L187:
	cmpq	$0, -309232(%rbp)
	jne	.L190
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
.L182:
	movq	-309176(%rbp), %rax
	movq	%rax, %rdi
	call	readdir@PLT
	movq	%rax, -309168(%rbp)
	cmpq	$0, -309168(%rbp)
	jne	.L191
	movq	table_records(%rip), %rax
	movq	%rax, %rdi
	call	print_list
	leaq	-3040(%rbp), %rdx
	leaq	-308688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	.LC76(%rip), %rdi
	call	puts@PLT
	leaq	-308688(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L103
.L229:
	nop
.L103:
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
	js	.L192
	cmpl	$63, -309392(%rbp)
	jg	.L192
	movl	-309392(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yycheck(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbw	%al, %dx
	movq	-309304(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	%ax, %dx
	jne	.L192
	movl	-309392(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yytable(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -309392(%rbp)
	jmp	.L39
.L192:
	movl	-309384(%rbp), %eax
	subl	$31, %eax
	movslq	%eax, %rdx
	leaq	yydefgoto(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -309392(%rbp)
	jmp	.L39
.L228:
	nop
.L61:
	movl	yychar(%rip), %eax
	cmpl	$-2, %eax
	je	.L194
	movl	yychar(%rip), %eax
	cmpl	$285, %eax
	ja	.L195
	movl	yychar(%rip), %eax
	movslq	%eax, %rdx
	leaq	yytranslate(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	jmp	.L197
.L195:
	movl	$2, %eax
	jmp	.L197
.L194:
	movl	$-2, %eax
.L197:
	movl	%eax, -309376(%rbp)
	cmpl	$0, -309388(%rbp)
	jne	.L198
	movl	yynerrs(%rip), %eax
	addl	$1, %eax
	movl	%eax, yynerrs(%rip)
	leaq	.LC77(%rip), %rdi
	call	yyerror
.L198:
	cmpl	$3, -309388(%rbp)
	jne	.L232
	movl	yychar(%rip), %eax
	testl	%eax, %eax
	jg	.L200
	movl	yychar(%rip), %eax
	testl	%eax, %eax
	jne	.L232
	jmp	.L46
.L200:
	movl	-309376(%rbp), %eax
	leaq	yylval(%rip), %rdx
	movl	%eax, %esi
	leaq	.LC78(%rip), %rdi
	call	yydestruct
	movl	$-2, yychar(%rip)
.L232:
	nop
.L201:
	movl	$3, -309388(%rbp)
.L205:
	movl	-309392(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yypact(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -309384(%rbp)
	cmpl	$-41, -309384(%rbp)
	je	.L202
	addl	$1, -309384(%rbp)
	cmpl	$0, -309384(%rbp)
	js	.L202
	cmpl	$63, -309384(%rbp)
	jg	.L202
	movl	-309384(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yycheck(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	cmpb	$1, %al
	jne	.L202
	movl	-309384(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yytable(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -309384(%rbp)
	cmpl	$0, -309384(%rbp)
	jg	.L233
.L202:
	movq	-309304(%rbp), %rax
	cmpq	-309312(%rbp), %rax
	je	.L234
	movl	-309392(%rbp), %eax
	movslq	%eax, %rdx
	leaq	yystos(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movq	-309288(%rbp), %rdx
	movl	%eax, %esi
	leaq	.LC79(%rip), %rdi
	call	yydestruct
	subq	$1016, -309288(%rbp)
	subq	$2, -309304(%rbp)
	movq	-309304(%rbp), %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, -309392(%rbp)
	jmp	.L205
.L233:
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
	jmp	.L39
.L225:
	nop
.L48:
	movl	$0, -309380(%rbp)
	jmp	.L206
.L224:
	nop
	jmp	.L46
.L234:
	nop
.L46:
	movl	$1, -309380(%rbp)
	jmp	.L206
.L222:
	nop
	jmp	.L42
.L223:
	nop
.L42:
	leaq	.LC80(%rip), %rdi
	call	yyerror
	movl	$2, -309380(%rbp)
.L206:
	movl	yychar(%rip), %eax
	cmpl	$-2, %eax
	je	.L207
	movl	yychar(%rip), %eax
	cmpl	$285, %eax
	ja	.L208
	movl	yychar(%rip), %eax
	movslq	%eax, %rdx
	leaq	yytranslate(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	jmp	.L209
.L208:
	movl	$2, %eax
.L209:
	movl	%eax, -309376(%rbp)
	movl	-309376(%rbp), %eax
	leaq	yylval(%rip), %rdx
	movl	%eax, %esi
	leaq	.LC81(%rip), %rdi
	call	yydestruct
.L207:
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
	jmp	.L210
.L211:
	movq	-309304(%rbp), %rax
	movzwl	(%rax), %eax
	cwtl
	movslq	%eax, %rdx
	leaq	yystos(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movq	-309288(%rbp), %rdx
	movl	%eax, %esi
	leaq	.LC82(%rip), %rdi
	call	yydestruct
	subq	$1016, -309288(%rbp)
	subq	$2, -309304(%rbp)
.L210:
	movq	-309304(%rbp), %rax
	cmpq	-309312(%rbp), %rax
	jne	.L211
	leaq	-309088(%rbp), %rax
	cmpq	%rax, -309312(%rbp)
	je	.L212
	movq	-309312(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L212:
	movl	-309380(%rbp), %eax
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L214
	call	__stack_chk_fail@PLT
.L214:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	yyparse, .-yyparse
	.section	.rodata
	.align 8
.LC83:
	.string	"The mode provided for opening the file is incorrect"
	.align 8
.LC84:
	.string	"Out of memory as the memory has hit the memory limit set internally"
	.align 8
.LC85:
	.string	"Access to the current file is not allowed.Check the permissions set for the file"
	.align 8
.LC86:
	.string	"The path name is outside your accessible address space"
.LC87:
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
	ja	.L236
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L238(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L238(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L238:
	.long	.L236-.L238
	.long	.L236-.L238
	.long	.L237-.L238
	.long	.L236-.L238
	.long	.L236-.L238
	.long	.L236-.L238
	.long	.L236-.L238
	.long	.L236-.L238
	.long	.L236-.L238
	.long	.L236-.L238
	.long	.L236-.L238
	.long	.L236-.L238
	.long	.L239-.L238
	.long	.L240-.L238
	.long	.L241-.L238
	.long	.L236-.L238
	.long	.L236-.L238
	.long	.L236-.L238
	.long	.L236-.L238
	.long	.L236-.L238
	.long	.L236-.L238
	.long	.L236-.L238
	.long	.L242-.L238
	.text
.L242:
	leaq	.LC83(%rip), %rdi
	call	puts@PLT
	jmp	.L236
.L239:
	leaq	.LC84(%rip), %rdi
	call	puts@PLT
	jmp	.L236
.L240:
	leaq	.LC85(%rip), %rdi
	call	puts@PLT
	jmp	.L236
.L241:
	leaq	.LC86(%rip), %rdi
	call	puts@PLT
	jmp	.L236
.L237:
	leaq	.LC87(%rip), %rdi
	call	puts@PLT
	nop
.L236:
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE13:
	.size	handle_query_file_error, .-handle_query_file_error
	.section	.rodata
.LC88:
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
	leaq	.LC88(%rip), %rsi
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
.LC89:
	.string	"Permission denied.\n"
	.align 8
.LC90:
	.string	"fd is not a valid file descriptor opened for reading.\n"
	.align 8
.LC91:
	.string	"The per-process limit on the number of open file descriptors has been reached.\n"
	.align 8
.LC92:
	.string	"The system-wide limit on the total number of open files has been reached.\n"
	.align 8
.LC93:
	.string	"Directory does not exist, or name is an empty string."
	.align 8
.LC94:
	.string	"Do you want to create a new master Directory(y/n)"
.LC95:
	.string	"%c"
.LC96:
	.string	"Terminating execution"
	.align 8
.LC97:
	.string	" Make use of the schema and the data helper utilities to fill the schema details and the input files"
	.align 8
.LC98:
	.string	"Insufficient memory to complete the operation.\n"
.LC99:
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
	ja	.L259
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L248(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L248(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L248:
	.long	.L259-.L248
	.long	.L259-.L248
	.long	.L247-.L248
	.long	.L259-.L248
	.long	.L259-.L248
	.long	.L259-.L248
	.long	.L259-.L248
	.long	.L259-.L248
	.long	.L259-.L248
	.long	.L249-.L248
	.long	.L259-.L248
	.long	.L259-.L248
	.long	.L250-.L248
	.long	.L251-.L248
	.long	.L259-.L248
	.long	.L259-.L248
	.long	.L259-.L248
	.long	.L259-.L248
	.long	.L259-.L248
	.long	.L259-.L248
	.long	.L252-.L248
	.long	.L259-.L248
	.long	.L259-.L248
	.long	.L253-.L248
	.long	.L254-.L248
	.text
.L251:
	leaq	.LC89(%rip), %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L249:
	leaq	.LC90(%rip), %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L254:
	leaq	.LC91(%rip), %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L253:
	leaq	.LC92(%rip), %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L247:
	leaq	.LC93(%rip), %rdi
	call	puts@PLT
	cmpl	$1, -20(%rbp)
	jne	.L255
	leaq	.LC94(%rip), %rdi
	call	puts@PLT
	leaq	-9(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC95(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-9(%rbp), %eax
	cmpb	$110, %al
	je	.L256
	movzbl	-9(%rbp), %eax
	cmpb	$78, %al
	jne	.L257
.L256:
	leaq	.LC96(%rip), %rdi
	call	puts@PLT
	movl	$0, %edi
	call	exit@PLT
.L257:
	movl	$511, %esi
	leaq	.LC0(%rip), %rdi
	call	mkdir@PLT
	movl	$511, %esi
	leaq	.LC1(%rip), %rdi
	call	mkdir@PLT
	leaq	.LC97(%rip), %rdi
	call	puts@PLT
	movl	$0, %edi
	call	exit@PLT
.L255:
	movl	$0, %edi
	call	exit@PLT
.L250:
	leaq	.LC98(%rip), %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L252:
	leaq	.LC99(%rip), %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L259:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L258
	call	__stack_chk_fail@PLT
.L258:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	handleError, .-handleError
	.section	.rodata
	.align 8
.LC100:
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
	je	.L261
	leaq	.LC100(%rip), %rdi
	call	puts@PLT
	jmp	.L262
.L261:
	movl	$2, %edi
	call	handleError
.L262:
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
.L265:
	call	yyparse
	testl	%eax, %eax
	je	.L265
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
