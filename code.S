.section .text.arithmetic_fizzbuzz::fizzbuzz_arbitrary,"ax",@progbits
	.p2align	4
.type	arithmetic_fizzbuzz::fizzbuzz_arbitrary,@function
arithmetic_fizzbuzz::fizzbuzz_arbitrary:
	.cfi_startproc
	push rbp
	.cfi_def_cfa_offset 16
	push r15
	.cfi_def_cfa_offset 24
	push r14
	.cfi_def_cfa_offset 32
	push r13
	.cfi_def_cfa_offset 40
	push r12
	.cfi_def_cfa_offset 48
	push rbx
	.cfi_def_cfa_offset 56
	sub rsp, 4096
	.cfi_adjust_cfa_offset 4096
	mov qword ptr [rsp], 0
	sub rsp, 4096
	.cfi_adjust_cfa_offset 4096
	mov qword ptr [rsp], 0
	sub rsp, 4096
	.cfi_adjust_cfa_offset 4096
	mov qword ptr [rsp], 0
	sub rsp, 4096
	.cfi_adjust_cfa_offset 4096
	mov qword ptr [rsp], 0
	sub rsp, 328
	.cfi_def_cfa_offset 16768
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	movabs r14, 45004515654
	movaps xmm0, xmmword ptr [rip + .LCPI0_0]
	movaps xmmword ptr [rsp + 16], xmm0
	movups xmmword ptr [rsp + 29], xmm0
	movaps xmmword ptr [rsp], xmm0
	mov byte ptr [rsp + 20], 10
	lea rdi, [rsp + 344]
	mov edx, 16360
	mov esi, 48
	call qword ptr [rip + memset@GOTPCREL]
	mov bl, 19
	mov r8b, 48
	lea rax, [r14 + 3068]
	mov qword ptr [rsp + 184], rax
	mov eax, 18
	movd xmm0, eax
	movdqa xmmword ptr [rsp + 288], xmm0
	mov dil, 48
	mov dl, 48
	mov cl, 48
	mov al, 48
	mov r9b, 48
	.p2align	4
.LBB0_1:
	mov byte ptr [rsp + 19], 49
	movzx r10d, bl
	movups xmm0, xmmword ptr [rsp + r10]
	movaps xmmword ptr [rsp + 320], xmm0
	mov rsi, qword ptr [rsp + r10 + 16]
	mov qword ptr [rsp + 336], rsi
	mov sil, 21
	sub sil, r10b
	movzx r11d, sil
	mov byte ptr [rsp + 19], 50
	movups xmm0, xmmword ptr [rsp + r10]
	movups xmmword ptr [rsp + r11 + 320], xmm0
	mov rsi, qword ptr [rsp + r10 + 16]
	mov qword ptr [rsp + r11 + 336], rsi
	mov esi, r11d
	add esi, esi
	movabs r14, 45004515654
	mov qword ptr [rsp + rsi + 320], r14
	mov byte ptr [rsp + 19], 52
	movups xmm0, xmmword ptr [rsp + r10]
	movups xmmword ptr [rsp + rsi + 325], xmm0
	mov rbx, qword ptr [rsp + r10 + 16]
	mov qword ptr [rsp + rsi + 341], rbx
	lea rsi, [rsi + r11 + 5]
	mov rbx, qword ptr [rsp + 184]
	mov qword ptr [rsp + rsi + 320], rbx
	mov qword ptr [rsp + rsi + 325], r14
	mov byte ptr [rsp + 19], 55
	mov rbx, qword ptr [rsp + r10 + 16]
	mov qword ptr [rsp + rsi + 346], rbx
	movups xmm0, xmmword ptr [rsp + r10]
	movups xmmword ptr [rsp + rsi + 330], xmm0
	lea r15, [r11 + rsi + 10]
	mov byte ptr [rsp + 19], 56
	mov rbx, qword ptr [rsp + r10 + 16]
	mov qword ptr [rsp + r15 + 336], rbx
	movups xmm0, xmmword ptr [rsp + r10]
	movups xmmword ptr [rsp + r15 + 320], xmm0
	add r15, r11
	movd xmm11, r10d
	lea r10d, [r9 + 7]
	shr r10b, 6
	movzx r10d, r10b
	lea r11d, [r10 + r10]
	lea ebx, [r11 + 4*r11]
	neg ebx
	add bl, r9b
	lea esi, [rbx + 1]
	mov dword ptr [rsp + 88], esi
	mov byte ptr [rsp + 18], sil
	lea r9d, [r10 + rax]
	lea eax, [r9 + 6]
	shr al, 6
	movzx eax, al
	mov r11d, eax
	shl r11d, 8
	or r11d, r10d
	movd xmm12, r11d
	lea r10d, [rax + rax]
	lea r11d, [r10 + 4*r10]
	neg r11d
	add r11b, r9b
	mov byte ptr [rsp + 17], r11b
	add al, cl
	lea ecx, [rax + 6]
	shr cl, 6
	movzx ecx, cl
	lea r9d, [rcx + rcx]
	lea r13d, [r9 + 4*r9]
	neg r13d
	add r13b, al
	mov byte ptr [rsp + 16], r13b
	lea eax, [rcx - 1]
	or al, 15
	movzx eax, al
	movd xmm13, eax
	add dl, cl
	lea eax, [rdx + 6]
	shr al, 6
	movzx r9d, al
	lea eax, [r9 + r9]
	lea r10d, [rax + 4*rax]
	neg r10d
	add r10b, dl
	mov byte ptr [rsp + 15], r10b
	add dil, r9b
	lea eax, [rdi + 6]
	shr al, 6
	movzx eax, al
	lea ecx, [rax + rax]
	lea ecx, [rcx + 4*rcx]
	neg ecx
	add cl, dil
	mov qword ptr [rsp + 80], rcx
	mov byte ptr [rsp + 14], cl
	add r8b, al
	lea ecx, [r8 + 6]
	shr cl, 6
	movzx r14d, cl
	lea ecx, [r14 + r14]
	lea edi, [rcx + 4*rcx]
	neg edi
	add dil, r8b
	movzx edx, byte ptr [rsp + 12]
	add dl, r14b
	mov byte ptr [rsp + 13], dil
	lea ecx, [rdx + 6]
	shr cl, 6
	movzx ecx, cl
	lea r8d, [rcx + rcx]
	lea r8d, [r8 + 4*r8]
	neg r8d
	add r8b, dl
	mov byte ptr [rsp + 12], r8b
	shl eax, 8
	or eax, r9d
	shl r14d, 16
	or r14d, eax
	mov eax, ecx
	shl eax, 24
	or eax, r14d
	movd xmm14, eax
	add cl, byte ptr [rsp + 11]
	lea eax, [rcx + 6]
	shr al, 6
	movzx r14d, al
	lea eax, [r14 + r14]
	lea r9d, [rax + 4*rax]
	neg r9d
	add r9b, cl
	movzx ecx, byte ptr [rsp + 10]
	add cl, r14b
	mov byte ptr [rsp + 11], r9b
	lea eax, [rcx + 6]
	shr al, 6
	movzx eax, al
	lea edx, [rax + rax]
	lea edx, [rdx + 4*rdx]
	neg edx
	add dl, cl
	mov qword ptr [rsp + 72], rdx
	mov byte ptr [rsp + 10], dl
	movzx ecx, byte ptr [rsp + 9]
	add cl, al
	lea edx, [rcx + 6]
	shr dl, 6
	movzx ebp, dl
	lea edx, [2*rbp]
	lea edx, [rdx + 4*rdx]
	neg edx
	add dl, cl
	mov rsi, rdx
	mov qword ptr [rsp + 96], rdx
	movzx edx, byte ptr [rsp + 8]
	add dl, bpl
	lea ecx, [rdx + 6]
	shr cl, 6
	movzx ecx, cl
	lea r12d, [rcx + rcx]
	lea r12d, [r12 + 4*r12]
	neg r12d
	add r12b, dl
	mov qword ptr [rsp + 64], r12
	shl eax, 8
	or eax, r14d
	shl ebp, 16
	or ebp, eax
	mov eax, ecx
	shl eax, 24
	or eax, ebp
	mov byte ptr [rsp + 9], sil
	mov byte ptr [rsp + 8], r12b
	movd xmm15, eax
	add cl, byte ptr [rsp + 7]
	lea eax, [rcx + 6]
	shr al, 6
	movzx r14d, al
	lea eax, [r14 + r14]
	lea eax, [rax + 4*rax]
	neg eax
	add al, cl
	mov esi, eax
	mov dword ptr [rsp + 104], eax
	movzx eax, byte ptr [rsp + 6]
	add al, r14b
	lea ecx, [rax + 6]
	shr cl, 6
	movzx ecx, cl
	lea edx, [rcx + rcx]
	lea edx, [rdx + 4*rdx]
	neg edx
	add dl, al
	mov qword ptr [rsp + 112], rdx
	mov byte ptr [rsp + 7], sil
	mov byte ptr [rsp + 6], dl
	movzx edx, byte ptr [rsp + 5]
	add dl, cl
	lea eax, [rdx + 6]
	shr al, 6
	movzx eax, al
	lea r12d, [rax + rax]
	lea esi, [r12 + 4*r12]
	neg esi
	add sil, dl
	mov qword ptr [rsp + 144], rsi
	movzx r12d, byte ptr [rsp + 4]
	add r12b, al
	lea edx, [r12 + 6]
	shr dl, 6
	movzx edx, dl
	lea ebp, [rdx + rdx]
	lea ebp, [rbp + 4*rbp]
	neg ebp
	add bpl, r12b
	mov qword ptr [rsp + 168], rbp
	shl ecx, 8
	or ecx, r14d
	shl eax, 16
	or eax, ecx
	mov ecx, edx
	shl ecx, 24
	or ecx, eax
	movd xmm1, ecx
	mov byte ptr [rsp + 5], sil
	mov byte ptr [rsp + 4], bpl
	add dl, byte ptr [rsp + 3]
	lea eax, [rdx + 6]
	shr al, 6
	movzx eax, al
	lea ecx, [rax + rax]
	lea ebp, [rcx + 4*rcx]
	neg ebp
	add bpl, dl
	mov byte ptr [rsp + 3], bpl
	add al, byte ptr [rsp + 2]
	lea ecx, [rax + 6]
	shr cl, 6
	movzx ecx, cl
	lea edx, [rcx + rcx]
	lea edx, [rdx + 4*rdx]
	neg edx
	add dl, al
	mov dword ptr [rsp + 60], edx
	mov byte ptr [rsp + 2], dl
	add cl, byte ptr [rsp + 1]
	lea eax, [rcx + 6]
	shr al, 6
	movzx edx, al
	lea eax, [rdx + rdx]
	lea eax, [rax + 4*rax]
	neg eax
	add al, cl
	mov dword ptr [rsp + 152], eax
	movabs r12, 45004515654
	mov qword ptr [rsp + r15 + 320], r12
	pshufd xmm0, xmm11, 0
	pcmpeqd xmm3, xmm3
	paddb xmm12, xmm3
	movd xmm2, dword ptr [rip + .LCPI0_9]
	por xmm12, xmm2
	pxor xmm4, xmm4
	punpcklbw xmm12, xmm4
	punpcklwd xmm12, xmm4
	shufps xmm13, xmm12, 212
	movaps xmm6, xmmword ptr [rsp + 288]
	unpcklps xmm12, xmm6
	shufps xmm12, xmm13, 33
	pminub xmm12, xmm0
	paddb xmm14, xmm3
	movd xmm9, dword ptr [rip + .LCPI0_10]
	por xmm14, xmm9
	punpcklbw xmm14, xmm4
	punpcklwd xmm14, xmm4
	pminub xmm14, xmm12
	paddb xmm15, xmm3
	movd xmm8, dword ptr [rip + .LCPI0_11]
	por xmm15, xmm8
	punpcklbw xmm15, xmm4
	punpcklwd xmm15, xmm4
	pminub xmm15, xmm14
	paddb xmm1, xmm3
	movd xmm5, dword ptr [rip + .LCPI0_12]
	por xmm1, xmm5
	punpcklbw xmm1, xmm4
	punpcklwd xmm1, xmm4
	pminub xmm1, xmm15
	mov byte ptr [rsp + 1], al
	add dl, byte ptr [rsp]
	mov qword ptr [rsp + 176], rdx
	mov byte ptr [rsp], dl
	pshufd xmm0, xmm1, 78
	pminub xmm0, xmm1
	pshufd xmm1, xmm0, 177
	pminub xmm1, xmm0
	mov rax, qword ptr [rsp + 184]
	mov qword ptr [rsp + r15 + 325], rax
	mov byte ptr [rsp + 19], 49
	movd eax, xmm1
	movzx eax, al
	mov rcx, qword ptr [rsp + rax + 16]
	mov qword ptr [rsp + r15 + 346], rcx
	movups xmm0, xmmword ptr [rsp + rax]
	movups xmmword ptr [rsp + r15 + 330], xmm0
	mov cl, 21
	sub cl, al
	movzx ecx, cl
	lea rdx, [rcx + r15]
	add rdx, 10
	mov qword ptr [rsp + rdx + 320], r12
	mov byte ptr [rsp + 19], 51
	mov rsi, qword ptr [rsp + rax + 16]
	mov qword ptr [rsp + rdx + 341], rsi
	movups xmm0, xmmword ptr [rsp + rax]
	movups xmmword ptr [rsp + rdx + 325], xmm0
	lea rdx, [rcx + rdx + 5]
	mov byte ptr [rsp + 19], 52
	mov rsi, qword ptr [rsp + rax + 16]
	mov qword ptr [rsp + rdx + 336], rsi
	movups xmm0, xmmword ptr [rsp + rax]
	movups xmmword ptr [rsp + rdx + 320], xmm0
	add rdx, rcx
	movabs rsi, 8825495348169042246
	mov qword ptr [rsp + rdx + 320], rsi
	mov byte ptr [rsp + rdx + 328], 10
	mov byte ptr [rsp + 19], 54
	mov rsi, qword ptr [rsp + rax + 16]
	mov qword ptr [rsp + rdx + 345], rsi
	movups xmm0, xmmword ptr [rsp + rax]
	movups xmmword ptr [rsp + rdx + 329], xmm0
	lea rdx, [rcx + rdx + 9]
	mov byte ptr [rsp + 19], 55
	mov rsi, qword ptr [rsp + rax + 16]
	mov qword ptr [rsp + rdx + 336], rsi
	movups xmm0, xmmword ptr [rsp + rax]
	movups xmmword ptr [rsp + rdx + 320], xmm0
	add rdx, rcx
	mov qword ptr [rsp + rdx + 320], r12
	mov byte ptr [rsp + 19], 57
	mov rsi, qword ptr [rsp + rax + 16]
	mov qword ptr [rsp + rdx + 341], rsi
	movups xmm0, xmmword ptr [rsp + rax]
	movups xmmword ptr [rsp + rdx + 325], xmm0
	add rcx, rdx
	add rcx, 5
	mov qword ptr [rsp + 160], rcx
	movd xmm11, eax
	add bl, 8
	shr bl, 6
	movzx ecx, bl
	lea eax, [rcx + rcx]
	lea ebx, [rax + 4*rax]
	neg ebx
	add bl, byte ptr [rsp + 88]
	lea edx, [rcx + r11]
	lea eax, [rdx + 6]
	shr al, 6
	movzx eax, al
	mov esi, eax
	shl esi, 8
	or esi, ecx
	movd xmm12, esi
	lea ecx, [rax + rax]
	lea r12d, [rcx + 4*rcx]
	neg r12d
	add r12b, dl
	add al, r13b
	lea ecx, [rax + 6]
	shr cl, 6
	movzx ecx, cl
	lea edx, [rcx + rcx]
	lea edx, [rdx + 4*rdx]
	neg edx
	add dl, al
	mov qword ptr [rsp + 120], rdx
	lea eax, [rcx - 1]
	or al, 15
	movzx eax, al
	movd xmm13, eax
	add r10b, cl
	lea eax, [r10 + 6]
	shr al, 6
	movzx eax, al
	lea ecx, [rax + rax]
	lea ecx, [rcx + 4*rcx]
	neg ecx
	add cl, r10b
	mov dword ptr [rsp + 136], ecx
	mov rcx, qword ptr [rsp + 80]
	lea edx, [rax + rcx]
	lea ecx, [rdx + 6]
	shr cl, 6
	movzx ecx, cl
	lea esi, [rcx + rcx]
	lea r13d, [rsi + 4*rsi]
	neg r13d
	add r13b, dl
	lea edx, [rcx + rdi]
	lea esi, [rdx + 6]
	shr sil, 6
	movzx esi, sil
	lea edi, [rsi + rsi]
	lea edi, [rdi + 4*rdi]
	neg edi
	add dil, dl
	mov qword ptr [rsp + 88], rdi
	lea edi, [rsi + r8]
	lea edx, [rdi + 6]
	shr dl, 6
	movzx edx, dl
	lea r8d, [rdx + rdx]
	lea r8d, [r8 + 4*r8]
	neg r8d
	add r8b, dil
	mov qword ptr [rsp + 80], r8
	shl ecx, 8
	or ecx, eax
	shl esi, 16
	or esi, ecx
	mov eax, edx
	shl eax, 24
	or eax, esi
	movd xmm14, eax
	add dl, r9b
	lea eax, [rdx + 6]
	shr al, 6
	movzx eax, al
	lea ecx, [rax + rax]
	lea ecx, [rcx + 4*rcx]
	neg ecx
	add cl, dl
	mov dword ptr [rsp + 128], ecx
	mov rcx, qword ptr [rsp + 72]
	lea edx, [rax + rcx]
	lea ecx, [rdx + 6]
	shr cl, 6
	movzx ecx, cl
	lea esi, [rcx + rcx]
	lea r14d, [rsi + 4*rsi]
	neg r14d
	add r14b, dl
	mov rdx, qword ptr [rsp + 96]
	add edx, ecx
	lea esi, [rdx + 6]
	shr sil, 6
	movzx esi, sil
	lea edi, [rsi + rsi]
	lea edi, [rdi + 4*rdi]
	neg edi
	add dil, dl
	mov qword ptr [rsp + 72], rdi
	mov rdx, qword ptr [rsp + 64]
	lea edi, [rsi + rdx]
	lea edx, [rdi + 6]
	shr dl, 6
	movzx edx, dl
	lea r8d, [rdx + rdx]
	lea r8d, [r8 + 4*r8]
	neg r8d
	add r8b, dil
	mov qword ptr [rsp + 64], r8
	shl ecx, 8
	or ecx, eax
	shl esi, 16
	or esi, ecx
	mov eax, edx
	shl eax, 24
	or eax, esi
	movd xmm15, eax
	add dl, byte ptr [rsp + 104]
	lea eax, [rdx + 6]
	shr al, 6
	movzx eax, al
	lea ecx, [rax + rax]
	lea r11d, [rcx + 4*rcx]
	neg r11d
	add r11b, dl
	mov dword ptr [rsp + 224], r11d
	mov rcx, qword ptr [rsp + 112]
	lea edx, [rax + rcx]
	lea ecx, [rdx + 6]
	shr cl, 6
	movzx ecx, cl
	lea esi, [rcx + rcx]
	lea r10d, [rsi + 4*rsi]
	neg r10d
	add r10b, dl
	mov qword ptr [rsp + 96], r10
	mov rdx, qword ptr [rsp + 144]
	add edx, ecx
	lea esi, [rdx + 6]
	shr sil, 6
	movzx esi, sil
	lea edi, [rsi + rsi]
	lea r9d, [rdi + 4*rdi]
	neg r9d
	add r9b, dl
	mov qword ptr [rsp + 104], r9
	mov rdx, qword ptr [rsp + 168]
	lea edi, [rsi + rdx]
	lea edx, [rdi + 6]
	shr dl, 6
	movzx edx, dl
	lea r8d, [rdx + rdx]
	lea r8d, [r8 + 4*r8]
	neg r8d
	add r8b, dil
	mov qword ptr [rsp + 112], r8
	shl ecx, 8
	or ecx, eax
	shl esi, 16
	or esi, ecx
	mov eax, edx
	shl eax, 24
	or eax, esi
	movd xmm7, eax
	add dl, bpl
	lea eax, [rdx + 6]
	shr al, 6
	movzx eax, al
	lea ecx, [rax + rax]
	lea ecx, [rcx + 4*rcx]
	neg ecx
	add cl, dl
	mov esi, ecx
	mov dword ptr [rsp + 240], ecx
	add al, byte ptr [rsp + 60]
	lea ecx, [rax + 6]
	shr cl, 6
	movzx ecx, cl
	lea edx, [rcx + rcx]
	lea r15d, [rdx + 4*rdx]
	neg r15d
	add r15b, al
	add cl, byte ptr [rsp + 152]
	lea eax, [rcx + 6]
	shr al, 6
	movzx edx, al
	lea eax, [rdx + rdx]
	lea ebp, [rax + 4*rax]
	neg ebp
	add bpl, cl
	add dl, byte ptr [rsp + 176]
	mov qword ptr [rsp + 176], rdx
	pshufd xmm0, xmm11, 0
	lea eax, [rbx + 1]
	mov dword ptr [rsp + 60], eax
	mov byte ptr [rsp + 18], al
	paddb xmm12, xmm3
	por xmm12, xmm2
	mov byte ptr [rsp + 17], r12b
	pxor xmm2, xmm2
	punpcklbw xmm12, xmm2
	punpcklwd xmm12, xmm2
	shufps xmm13, xmm12, 212
	unpcklps xmm12, xmm6
	mov rax, qword ptr [rsp + 120]
	mov byte ptr [rsp + 16], al
	shufps xmm12, xmm13, 33
	mov edi, dword ptr [rsp + 136]
	mov byte ptr [rsp + 15], dil
	mov byte ptr [rsp + 14], r13b
	mov rax, qword ptr [rsp + 88]
	mov byte ptr [rsp + 13], al
	mov rax, qword ptr [rsp + 80]
	mov byte ptr [rsp + 12], al
	paddb xmm14, xmm3
	por xmm14, xmm9
	punpcklbw xmm14, xmm2
	punpcklwd xmm14, xmm2
	pminub xmm14, xmm12
	mov eax, dword ptr [rsp + 128]
	mov byte ptr [rsp + 11], al
	mov byte ptr [rsp + 10], r14b
	mov rax, qword ptr [rsp + 72]
	mov byte ptr [rsp + 9], al
	mov rax, qword ptr [rsp + 64]
	mov byte ptr [rsp + 8], al
	pcmpeqd xmm1, xmm1
	paddb xmm15, xmm1
	por xmm15, xmm8
	punpcklbw xmm15, xmm2
	punpcklwd xmm15, xmm2
	pminub xmm15, xmm14
	mov byte ptr [rsp + 7], r11b
	mov byte ptr [rsp + 6], r10b
	mov byte ptr [rsp + 5], r9b
	mov byte ptr [rsp + 4], r8b
	paddb xmm7, xmm1
	por xmm7, xmm5
	punpcklbw xmm7, xmm2
	punpcklwd xmm7, xmm2
	pminub xmm7, xmm15
	pminub xmm7, xmm0
	mov byte ptr [rsp + 3], sil
	mov byte ptr [rsp + 2], r15b
	mov byte ptr [rsp + 1], bpl
	mov byte ptr [rsp], dl
	pshufd xmm0, xmm7, 78
	pminub xmm0, xmm7
	pshufd xmm1, xmm0, 177
	pminub xmm1, xmm0
	mov rsi, qword ptr [rsp + 184]
	mov rcx, qword ptr [rsp + 160]
	mov qword ptr [rsp + rcx + 320], rsi
	movabs rdx, 45004515654
	mov qword ptr [rsp + rcx + 325], rdx
	mov byte ptr [rsp + 19], 50
	movd eax, xmm1
	movzx r11d, al
	mov rax, qword ptr [rsp + r11 + 16]
	mov qword ptr [rsp + rcx + 346], rax
	movups xmm0, xmmword ptr [rsp + r11]
	movups xmmword ptr [rsp + rcx + 330], xmm0
	mov al, 21
	sub al, r11b
	movzx r8d, al
	mov qword ptr [rsp + 280], r8
	lea rax, [r8 + rcx]
	add rax, 10
	mov byte ptr [rsp + 19], 51
	mov rcx, qword ptr [rsp + r11 + 16]
	mov qword ptr [rsp + rax + 336], rcx
	movups xmm0, xmmword ptr [rsp + r11]
	movups xmmword ptr [rsp + rax + 320], xmm0
	add rax, r8
	mov qword ptr [rsp + rax + 320], rdx
	mov qword ptr [rsp + rax + 325], rsi
	mov byte ptr [rsp + 19], 54
	mov rcx, qword ptr [rsp + r11 + 16]
	mov qword ptr [rsp + rax + 346], rcx
	movups xmm0, xmmword ptr [rsp + r11]
	movups xmmword ptr [rsp + rax + 330], xmm0
	lea rcx, [r8 + rax + 10]
	mov qword ptr [rsp + 256], rcx
	mov qword ptr [rsp + rcx + 320], rdx
	mov byte ptr [rsp + 19], 56
	mov rax, qword ptr [rsp + r11 + 16]
	mov qword ptr [rsp + rcx + 341], rax
	add bl, 8
	shr bl, 6
	movzx ecx, bl
	mov qword ptr [rsp + 160], rcx
	lea eax, [rcx - 1]
	or al, 17
	movzx eax, al
	movd xmm11, eax
	add r12b, cl
	mov qword ptr [rsp + 168], r12
	lea eax, [r12 + 6]
	shr al, 6
	movzx ecx, al
	mov qword ptr [rsp + 152], rcx
	mov rax, qword ptr [rsp + 120]
	add eax, ecx
	mov qword ptr [rsp + 120], rax
	add eax, 6
	mov dword ptr [rsp + 220], eax
	shr al, 6
	movzx edx, al
	mov eax, edx
	shl eax, 8
	or eax, ecx
	movd xmm12, eax
	add dl, dil
	mov qword ptr [rsp + 144], rdx
	lea eax, [rdx + 6]
	mov dword ptr [rsp + 216], eax
	shr al, 6
	add r13b, al
	mov qword ptr [rsp + 136], r13
	lea ecx, [r13 + 6]
	mov dword ptr [rsp + 212], ecx
	shr cl, 6
	movzx edx, cl
	shl edx, 8
	movzx eax, al
	or edx, eax
	mov rax, qword ptr [rsp + 88]
	add al, cl
	mov qword ptr [rsp + 88], rax
	add eax, 6
	mov dword ptr [rsp + 208], eax
	shr al, 6
	movzx ecx, al
	shl ecx, 16
	or ecx, edx
	mov rdx, qword ptr [rsp + 80]
	add dl, al
	mov qword ptr [rsp + 80], rdx
	lea eax, [rdx + 6]
	mov dword ptr [rsp + 204], eax
	shr al, 6
	movzx r13d, al
	mov eax, r13d
	shl eax, 24
	or eax, ecx
	movd xmm14, eax
	add r13b, byte ptr [rsp + 128]
	lea eax, [r13 + 6]
	mov dword ptr [rsp + 200], eax
	shr al, 6
	add r14b, al
	mov qword ptr [rsp + 128], r14
	lea ecx, [r14 + 6]
	mov dword ptr [rsp + 196], ecx
	shr cl, 6
	movzx edx, cl
	shl edx, 8
	movzx eax, al
	or edx, eax
	mov rax, qword ptr [rsp + 72]
	add al, cl
	mov qword ptr [rsp + 72], rax
	lea r12d, [rax + 6]
	mov eax, r12d
	shr al, 6
	movzx ecx, al
	shl ecx, 16
	or ecx, edx
	mov rdx, qword ptr [rsp + 64]
	add dl, al
	mov qword ptr [rsp + 64], rdx
	lea ebx, [rdx + 6]
	mov eax, ebx
	shr al, 6
	movzx r14d, al
	mov eax, r14d
	shl eax, 24
	or eax, ecx
	movd xmm7, eax
	add r14b, byte ptr [rsp + 224]
	lea r10d, [r14 + 6]
	mov eax, r10d
	shr al, 6
	mov rcx, qword ptr [rsp + 96]
	add cl, al
	mov qword ptr [rsp + 96], rcx
	lea r8d, [rcx + 6]
	mov ecx, r8d
	shr cl, 6
	movzx edx, cl
	shl edx, 8
	movzx eax, al
	or edx, eax
	mov rax, qword ptr [rsp + 104]
	add al, cl
	mov qword ptr [rsp + 104], rax
	lea esi, [rax + 6]
	mov eax, esi
	shr al, 6
	movzx ecx, al
	shl ecx, 16
	or ecx, edx
	mov rdx, qword ptr [rsp + 112]
	add dl, al
	mov qword ptr [rsp + 112], rdx
	add edx, 6
	mov eax, edx
	shr al, 6
	movzx r9d, al
	mov eax, r9d
	shl eax, 24
	or eax, ecx
	movd xmm13, eax
	add r9b, byte ptr [rsp + 240]
	lea ecx, [r9 + 6]
	mov edi, ecx
	shr dil, 6
	add dil, r15b
	lea eax, [rdi + 6]
	mov r15d, eax
	shr r15b, 6
	add r15b, bpl
	movzx ebx, bl
	movd xmm5, ebx
	movzx r10d, r10b
	movd xmm2, r10d
	movzx r8d, r8b
	movd xmm4, r8d
	movzx esi, sil
	movd xmm8, esi
	movzx edx, dl
	movd xmm0, edx
	movdqa xmmword ptr [rsp + 224], xmm0
	movzx ecx, cl
	movd xmm10, ecx
	movzx eax, al
	movd xmm0, eax
	movdqa xmmword ptr [rsp + 304], xmm0
	lea r8d, [r15 + 6]
	movzx eax, r8b
	movd xmm15, eax
	movzx eax, byte ptr [rsp + 204]
	movd xmm0, eax
	movdqa xmmword ptr [rsp + 240], xmm0
	movzx eax, byte ptr [rsp + 200]
	movd xmm9, eax
	movzx eax, byte ptr [rsp + 196]
	movups xmm3, xmmword ptr [rsp + r11]
	mov rcx, qword ptr [rsp + 256]
	movups xmmword ptr [rsp + rcx + 325], xmm3
	mov rsi, qword ptr [rsp + 280]
	lea rcx, [rsi + rcx + 5]
	mov byte ptr [rsp + 19], 57
	movups xmm3, xmmword ptr [rsp + r11]
	movups xmmword ptr [rsp + rcx + 320], xmm3
	movaps xmm3, xmm6
	unpcklps xmm3, xmm11
	movd xmm0, eax
	movdqa xmmword ptr [rsp + 256], xmm0
	movzx eax, r12b
	pcmpeqd xmm1, xmm1
	paddb xmm12, xmm1
	por xmm12, xmmword ptr [rip + .LCPI0_5]
	pxor xmm0, xmm0
	punpcklbw xmm12, xmm0
	punpcklwd xmm12, xmm0
	movlhps xmm3, xmm12
	movd xmm11, eax
	movzx eax, byte ptr [rsp + 212]
	paddb xmm14, xmm1
	por xmm14, xmmword ptr [rip + .LCPI0_2]
	punpcklbw xmm14, xmm0
	punpcklwd xmm14, xmm0
	pminub xmm14, xmm3
	movd xmm6, eax
	movzx eax, byte ptr [rsp + 208]
	paddb xmm7, xmm1
	por xmm7, xmmword ptr [rip + .LCPI0_3]
	punpcklbw xmm7, xmm0
	punpcklwd xmm7, xmm0
	pminub xmm7, xmm14
	movd xmm14, eax
	movzx eax, byte ptr [rsp + 216]
	paddb xmm13, xmm1
	por xmm13, xmmword ptr [rip + .LCPI0_4]
	punpcklbw xmm13, xmm0
	punpcklwd xmm13, xmm0
	pminub xmm13, xmm7
	movd xmm3, r11d
	pshufd xmm3, xmm3, 0
	pminub xmm13, xmm3
	movd xmm7, eax
	movzx eax, byte ptr [rsp + 220]
	punpcklbw xmm2, xmm5
	movd xmm12, eax
	punpcklbw xmm8, xmm4
	movzx eax, byte ptr [rsp + 64]
	movd xmm4, eax
	punpcklwd xmm8, xmm2
	movzx eax, r14b
	movd xmm1, eax
	punpcklbw xmm10, xmmword ptr [rsp + 224]
	movzx eax, byte ptr [rsp + 96]
	movd xmm3, eax
	punpcklbw xmm15, xmmword ptr [rsp + 304]
	movzx eax, byte ptr [rsp + 104]
	movd xmm5, eax
	punpcklwd xmm15, xmm10
	movzx eax, byte ptr [rsp + 112]
	movd xmm10, eax
	punpckldq xmm15, xmm8
	movzx eax, r9b
	movd xmm8, eax
	punpcklbw xmm9, xmmword ptr [rsp + 240]
	movzx eax, dil
	movd xmm2, eax
	punpcklbw xmm11, xmmword ptr [rsp + 256]
	movzx eax, r15b
	movd xmm0, eax
	punpcklwd xmm11, xmm9
	movzx eax, byte ptr [rsp + 80]
	movd xmm9, eax
	punpcklbw xmm14, xmm6
	movzx eax, r13b
	movd xmm6, eax
	punpcklbw xmm7, xmm12
	punpcklwd xmm14, xmm7
	punpckldq xmm11, xmm14
	punpcklqdq xmm15, xmm11
	psrlw xmm15, 6
	pand xmm15, xmmword ptr [rip + .LCPI0_6]
	movdqa xmm7, xmm15
	punpckhbw xmm7, xmm7
	movdqa xmm11, xmmword ptr [rip + .LCPI0_7]
	pmullw xmm7, xmm11
	movdqa xmm12, xmmword ptr [rip + .LCPI0_8]
	pand xmm7, xmm12
	punpcklbw xmm15, xmm15
	pmullw xmm15, xmm11
	pand xmm15, xmm12
	packuswb xmm15, xmm7
	punpcklbw xmm1, xmm4
	punpcklbw xmm5, xmm3
	punpcklwd xmm5, xmm1
	punpcklbw xmm8, xmm10
	punpcklbw xmm0, xmm2
	punpcklwd xmm0, xmm8
	movzx eax, byte ptr [rsp + 128]
	movd xmm1, eax
	punpckldq xmm0, xmm5
	movzx eax, byte ptr [rsp + 72]
	movd xmm2, eax
	punpcklbw xmm6, xmm9
	movzx eax, byte ptr [rsp + 136]
	movd xmm3, eax
	punpcklbw xmm2, xmm1
	movzx eax, byte ptr [rsp + 88]
	movd xmm1, eax
	punpcklwd xmm2, xmm6
	movzx eax, byte ptr [rsp + 144]
	movd xmm4, eax
	punpcklbw xmm1, xmm3
	movzx eax, byte ptr [rsp + 120]
	movd xmm3, eax
	punpcklbw xmm4, xmm3
	punpcklwd xmm1, xmm4
	punpckldq xmm2, xmm1
	punpcklqdq xmm0, xmm2
	paddb xmm0, xmm15
	mov rax, qword ptr [rsp + 160]
	add eax, eax
	lea eax, [rax + 4*rax]
	neg eax
	add al, byte ptr [rsp + 60]
	mov rdx, qword ptr [rsp + r11 + 16]
	mov byte ptr [rsp + 19], 48
	inc al
	mov byte ptr [rsp + 18], al
	mov rax, qword ptr [rsp + 152]
	add eax, eax
	lea eax, [rax + 4*rax]
	neg eax
	add al, byte ptr [rsp + 168]
	mov byte ptr [rsp + 17], al
	movdqu xmmword ptr [rsp + 1], xmm0
	pshufd xmm0, xmm13, 78
	pminub xmm0, xmm13
	pshufd xmm1, xmm0, 177
	pminub xmm1, xmm0
	mov qword ptr [rsp + rcx + 336], rdx
	lea rax, [rcx + rsi]
	mov edx, r8d
	shr dl, 6
	add dl, byte ptr [rsp + 176]
	mov byte ptr [rsp], dl
	movd ebx, xmm1
	movabs rdx, 8825495348169042246
	mov qword ptr [rsp + rax + 320], rdx
	mov byte ptr [rsp + rax + 328], 10
	lea r14, [rsi + rcx]
	add r14, 9
	lea r15, [rsp + 320]
	#APP

	mov rax, 1
	mov rdi, 1
	mov rsi, r15
	mov rdx, r14
	syscall

	#NO_APP
	shr rax, 63
	lea rcx, [rip + arithmetic_fizzbuzz::write_stdout::DUMMY]
	movdqa xmm0, xmmword ptr [rax + rcx]
	movzx r9d, byte ptr [rsp + 18]
	movzx eax, byte ptr [rsp + 17]
	movzx ecx, byte ptr [rsp + 16]
	movzx edx, byte ptr [rsp + 15]
	movzx r8d, byte ptr [rsp + 13]
	movzx edi, byte ptr [rsp + 14]
	jmp .LBB0_1
