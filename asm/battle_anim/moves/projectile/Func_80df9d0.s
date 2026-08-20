	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80df9d0  @ 0x080df9d0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0x90
	lsl	r3, #1
	mov	r14, r0
	mov	r6, r1
	mov	r12, r2
	mov	r7, #0
	mov	r8, r3
	mov	r5, #0
.Ldf9e6:
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r0, r3, #1
	mov	r3, r14
	mov	r1, #0
	add	r4, r5, r3
.Ldf9f2:
	lsr	r3, r1, #31
	add	r3, r1, r3
	ldrb	r2, [r4]
	asr	r3, #1
	add	r3, r0, r3
	add	r1, #1
	add	r4, #1
	strb	r2, [r6, r3]
	cmp	r1, #0x28
	bne	.Ldf9f2
	add	r7, #1
	add	r5, r12
	cmp	r7, r8
	bne	.Ldf9e6
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80df9d0

	.section .rodata
	.global .Leebe9
	.global .Leebec
	.global .Leec28
	.global .Leec2f
	.global .Leec36
	.global .Leec3d
	.global .Leec44
	.global .Leec52

.Leebe9:
	.incrom 0xeebe9, 0xeebec
.Leebec:
	.incrom 0xeebec, 0xeec28
.Leec28:
	.incrom 0xeec28, 0xeec2f
.Leec2f:
	.incrom 0xeec2f, 0xeec36
.Leec36:
	.incrom 0xeec36, 0xeec3d
.Leec3d:
	.incrom 0xeec3d, 0xeec44
.Leec44:
	.incrom 0xeec44, 0xeec52
.Leec52:
	.incrom 0xeec52, 0xeec5a
