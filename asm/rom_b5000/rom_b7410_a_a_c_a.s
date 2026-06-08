	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b7548
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

.thumb_func_start Func_80b75dc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x50
	ldr	r3, =iwram_3001e74
	mov	r2, sp
	ldr	r3, [r3]
	add	r2, #0x34
	mov	r1, #0
	mov	r0, r2
	mov	r10, r3
	str	r2, [sp]
	mov	r9, r1
	bl	Func_80b6a60
	ldr	r3, =0x2e9
	mov	r5, r0
	mov	r2, #0xff
	mov	r7, #0xd
	add	r3, r10
.Lb760c:
	sub	r7, #1
	strb	r2, [r3]
	sub	r3, #1
	cmp	r7, #0
	bge	.Lb760c
	ldr	r3, =0x2e9
	mov	r1, #5
	add	r3, r10
	mov	r2, #0xd
.Lb761e:
	sub	r1, #1
	strb	r2, [r3]
	sub	r3, #1
	sub	r2, #1
	cmp	r1, #0
	bge	.Lb761e
	cmp	r5, #0
	ble	.Lb7672
	ldr	r3, =.Lc2a62
	ldr	r1, [sp]
	mov	r2, r9
	mov	r11, r3
	mov	r8, r1
	lsl	r6, r2, #1
	mov	r7, r5
.Lb763c:
	mov	r3, r8
	ldrh	r5, [r3]
	mov	r2, #0xb7
	mov	r1, #2
	lsl	r2, #2
	add	r3, r5, r2
	add	r8, r1
	mov	r2, r9
	mov	r1, r10
	strb	r2, [r1, r3]
	mov	r0, r5
	bl	GetBattleActor
	mov	r3, r11
	ldrsb	r2, [r6, r3]
	mov	r1, r11
	add	r3, r6, #1
	ldrsb	r3, [r3, r1]
	mov	r1, r5
	bl	Func_80b6f44
	sub	r7, #1
	mov	r2, #1
	add	r6, #2
	add	r9, r2
	cmp	r7, #0
	bne	.Lb763c
.Lb7672:
	mov	r5, #2
	add	r5, r10
	mov	r3, #0x64
	ldrsh	r3, [r5, r3]
	mov	r7, #0
	mov	r11, r5
	cmp	r3, #0xff
	beq	.Lb769e
	ldr	r4, [sp]
	mov	r0, #0
	mov	r2, #0x64
	mov	r1, r11
.Lb768a:
	ldrh	r3, [r1, r2]
	add	r7, #1
	strh	r3, [r0, r4]
	add	r2, #2
	add	r0, #2
	cmp	r7, #5
	bgt	.Lb769e
	ldrsh	r3, [r1, r2]
	cmp	r3, #0xff
	bne	.Lb768a
.Lb769e:
	mov	r1, #0x1c
	mov	r2, #4
	add	r1, sp
	add	r2, sp
	mov	r5, r7
	mov	r9, r1
	mov	r10, r2
	ldr	r0, [sp]
	mov	r1, r5
	mov	r2, r9
	mov	r3, r10
	bl	Func_80b7424
	cmp	r5, #0
	ble	.Lb76ee
	mov	r3, #0
	lsl	r6, r3, #2
	mov	r3, #0x64
	mov	r8, r3
.Lb76c4:
	mov	r1, r11
	mov	r3, r8
	ldrsh	r5, [r1, r3]
	cmp	r5, #0xfe
	beq	.Lb76e2
	mov	r0, r5
	bl	GetBattleActor
	mov	r1, r9
	ldr	r2, [r6, r1]
	mov	r1, r10
	ldr	r3, [r6, r1]
	mov	r1, r5
	bl	Func_80b6f44
.Lb76e2:
	mov	r2, #2
	sub	r7, #1
	add	r8, r2
	add	r6, #4
	cmp	r7, #0
	bne	.Lb76c4
.Lb76ee:
	add	sp, #0x50
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b75dc

