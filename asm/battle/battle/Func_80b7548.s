	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b7548  @ 0x080b7548
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001e74
	ldr	r2, [r3]
	mov	r3, #0x64
	add	r2, #2
	ldrsh	r3, [r2, r3]
	sub	sp, #0x4c
	mov	r6, #0
	mov	r9, r2
	cmp	r3, #0xff
	beq	.Lb7586
	add	r0, sp, #0x30
	mov	r5, r0
	mov	r4, #0
	mov	r2, #0x64
	mov	r1, r9
.Lb7570:
	ldrh	r3, [r1, r2]
	add	r6, #1
	strh	r3, [r4, r5]
	add	r2, #2
	add	r4, #2
	cmp	r6, #5
	bgt	.Lb7588
	ldrsh	r3, [r1, r2]
	cmp	r3, #0xff
	bne	.Lb7570
	b	.Lb7588
.Lb7586:
	add	r0, sp, #0x30
.Lb7588:
	add	r1, sp, #0x18
	mov	r10, r1
	mov	r8, sp
	mov	r1, r6
	mov	r2, r10
	mov	r3, r8
	bl	Func_80b7424
	cmp	r6, #0
	ble	.Lb75c6
	mov	r5, #0
	mov	r7, #0x64
.Lb75a0:
	mov	r2, r9
	ldrsh	r0, [r2, r7]
	cmp	r0, #0xfe
	beq	.Lb75bc
	bl	GetBattleActor
	mov	r1, r10
	ldr	r3, [r5, r1]
	lsl	r3, #16
	str	r3, [r0, #0xc]
	mov	r2, r8
	ldr	r3, [r5, r2]
	lsl	r3, #16
	str	r3, [r0, #0x10]
.Lb75bc:
	sub	r6, #1
	add	r5, #4
	add	r7, #2
	cmp	r6, #0
	bne	.Lb75a0
.Lb75c6:
	add	sp, #0x4c
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b7548

