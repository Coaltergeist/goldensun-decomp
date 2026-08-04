	.include "macros.inc"

.thumb_func_start OvlFunc_959_20088c0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	sub	sp, #0x20
	mov	r10, r3
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r1, =.L5f18
	mov	r5, #0
	ldr	r3, [r1, r5]
	cmp	r2, r3
	bne	.L8ea
	add	r7, sp, #8
	b	.L90c
.L8ea:
	add	r7, sp, #8
	mov	r12, r7
	mov	r6, #7
	mov	r4, r1
.L8f2:
	mov	r3, r12
	add	r5, #1
	str	r6, [r3]
	cmp	r5, #5
	bhi	.L90e
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	add	r4, #4
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, [r4]
	cmp	r2, r3
	bne	.L8f2
.L90c:
	str	r5, [r7]
.L90e:
	ldr	r2, [r7]
	cmp	r2, #6
	bls	.L918
	mov	r0, #0
	b	.L9c2
.L918:
	ldr	r3, [r0, #8]
	str	r3, [r7, #8]
	mov	r12, r3
	ldr	r3, [r0, #0xc]
	str	r3, [r7, #0xc]
	ldr	r0, [r0, #0x10]
	lsl	r1, r2, #4
	str	r0, [r7, #0x10]
	ldr	r4, =.L5f30
	add	r5, r1, #4
	ldr	r2, [r4, r5]
	mov	r14, r0
	cmp	r2, #0
	bge	.L936
	neg	r2, r2
.L936:
	mov	r3, r1
	add	r3, #0xc
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bge	.L942
	neg	r3, r3
.L942:
	add	r3, r2, r3
	ldr	r0, [r4, r1]
	asr	r3, #4
	mov	r8, r3
	mov	r6, r0
	cmp	r0, #0
	bge	.L952
	neg	r6, r0
.L952:
	mov	r3, r1
	add	r3, #8
	ldr	r3, [r4, r3]
	cmp	r3, #0
	bge	.L95e
	neg	r3, r3
.L95e:
	lsl	r0, #16
	add	r0, r12
	str	r0, [r7, #8]
	ldr	r1, [r4, r5]
	lsl	r1, #16
	add	r1, r14
	asr	r0, #20
	asr	r1, #20
	add	r6, r3
	mov	r3, #0x9e
	str	r0, [r7, #8]
	str	r1, [r7, #0x10]
	lsl	r3, #1
	add	r3, r10
	ldr	r3, [r3]
	asr	r5, r3, #20
	mov	r3, #0xa0
	lsl	r3, #1
	add	r3, r10
	ldr	r3, [r3]
	asr	r3, #20
	add	r2, r5, r0
	add	r3, r1
	asr	r6, #4
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r2, r6
	mov	r3, r8
	bl	__Func_8010704
	mov	r3, r8
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0x10]
	mov	r5, #0xff
	str	r3, [sp]
	mov	r0, #0
	mov	r3, r6
	str	r5, [sp, #4]
	bl	OvlFunc_959_2008244
	mov	r3, r8
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0x10]
	mov	r0, #2
	str	r3, [sp]
	mov	r3, r6
	str	r5, [sp, #4]
	bl	OvlFunc_959_2008244
	mov	r0, #1
.L9c2:
	add	sp, #0x20
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_959_20088c0

	.section .data
	.global .L5ed8
	.global .L5f30
	.global .L5ed8
	.global .L5f18
	.global .L5f30
	.global .L5ed8
	.global .L5f18

.L5ed8:
	.incbin "overlays/rom_7e7574/orig.bin", 0x5ed8, (0x5f18-0x5ed8)
.L5f18:
	.incbin "overlays/rom_7e7574/orig.bin", 0x5f18, (0x5f30-0x5f18)
.L5f30:
	.incbin "overlays/rom_7e7574/orig.bin", 0x5f30, (0x5f90-0x5f30)
