	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start SetBattleActorState  @ 0x080d6888
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	mov	r11, r3
	str	r0, [sp, #0x10]
	mov	r9, r1
	str	r2, [sp, #0xc]
	bl	_GetBattleActor
	ldr	r3, =iwram_3001eec
	ldr	r3, [r3]
	mov	r8, r0
	mov	r0, #0
	str	r3, [sp, #8]
	str	r0, [sp, #4]
	b	.Ld6936
.Ld68b2:
	mov	r2, #1
	neg	r2, r2
	cmp	r11, r2
	beq	.Ld68c6
	add	r1, sp, #0x34
	ldr	r3, =0x7818
	ldrb	r0, [r1]
	ldr	r1, [sp, #8]
	add	r3, r11
	strb	r0, [r1, r3]
.Ld68c6:
	mov	r1, r8
	mov	r0, #0x2a
	ldrsh	r3, [r1, r0]
	cmp	r3, #0
	bne	.Ld6930
	cmp	r9, r2
	beq	.Ld6920
	mov	r3, #0x27
	add	r3, r7
	mov	r10, r3
	ldrb	r3, [r3]
	mov	r2, #0
	cmp	r3, #0
	beq	.Ld6920
	mov	r6, r7
	add	r6, #0x28
.Ld68e6:
	ldmia	r6!, {r5}
	cmp	r5, #0
	beq	.Ld6916
	mov	r0, r8
	ldr	r3, [r0, #0x24]
	cmp	r5, r3
	beq	.Ld6916
	ldr	r3, [r0, #0x20]
	cmp	r5, r3
	beq	.Ld6916
	mov	r1, r9
	cmp	r1, #0
	bne	.Ld690e
	ldr	r0, [sp, #0x10]
	str	r2, [sp]
	bl	_GetUnitDefaultColor
	strb	r0, [r5, #5]
	ldr	r2, [sp]
	b	.Ld6912
.Ld690e:
	mov	r3, r9
	strb	r3, [r5, #5]
.Ld6912:
	mov	r3, #0xff
	strb	r3, [r5, #0x16]
.Ld6916:
	mov	r0, r10
	ldrb	r3, [r0]
	add	r2, #1
	cmp	r2, r3
	bne	.Ld68e6
.Ld6920:
	mov	r2, #1
	ldr	r1, [sp, #0xc]
	neg	r2, r2
	cmp	r1, r2
	beq	.Ld6930
	mov	r0, r7
	bl	_Sprite_SetAnim
.Ld6930:
	ldr	r3, [sp, #4]
	add	r3, #1
	str	r3, [sp, #4]
.Ld6936:
	mov	r1, r8
	ldr	r0, [r1]
	ldr	r1, [sp, #4]
	bl	_Func_80b7f70
	mov	r7, r0
	cmp	r7, #0
	bne	.Ld68b2
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end SetBattleActorState
