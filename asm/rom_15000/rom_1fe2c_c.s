	.include "macros.inc"
	@ Keep the original TU's section-relative script-table relocation.
	.section .rodata
	.text
.thumb_func_start Func_801ffd8  @ 0x0801ffd8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	sub	sp, #4
	mov	r8, r0
	mov	r11, r1
	mov	r9, r2
	ldr	r3, [r3]
	cmp	r0, #0
	beq	.L20068
	mov	r1, #0x8d
	lsl	r1, #2
	add	r6, r3, r1
	sub	r1, #0x10
	add	r1, r3, r1
	mov	r2, #0
	str	r1, [sp]
	mov	r7, #0
	mov	r10, r2
.L20008:
	ldr	r3, =.rodata
	lsl	r2, r7, #2
	ldr	r0, [r3, r2]
	bl	_CreateSprite
	mov	r5, r0
	cmp	r5, #0
	beq	.L20032
	mov	r1, #2
	bl	_Sprite_SetAnim
	mov	r2, r5
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0xd
	ldrb	r3, [r5, #9]
	neg	r1, r1
	mov	r2, r1
	and	r3, r2
	strb	r3, [r5, #9]
.L20032:
	ldr	r3, [sp]
	stmia	r3!, {r5}
	mov	r2, r3
	str	r2, [sp]
	mov	r1, r8
	ldrh	r3, [r1, #0xc]
	add	r3, r11
	add	r3, r10
	lsl	r3, #3
	add	r3, #0x10
	strh	r3, [r6]
	ldrh	r3, [r1, #0xe]
	add	r3, r9
	lsl	r3, #3
	add	r3, #0x10
	mov	r2, #3
	add	r7, #1
	strh	r3, [r6, #8]
	add	r10, r2
	add	r6, #2
	cmp	r7, #3
	ble	.L20008
	mov	r1, #0xc8
	ldr	r0, =Func_80200cc
	lsl	r1, #4
	bl	StartTask
.L20068:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801ffd8
