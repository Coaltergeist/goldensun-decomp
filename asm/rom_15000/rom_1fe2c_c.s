	.include "macros.inc"
	@ Keep the original TU's section-relative script-table relocation.
	.section .rodata
	.text
.thumb_func_start Func_801ff58  @ 0x0801ff58
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r2, #0
	ldr	r3, =iwram_3001f2c
	mov	r8, r2
	mov	r2, #0xfa
	lsl	r2, #17
	ldr	r3, [r3]
	mov	r10, r2
	mov	r2, #0x9a
	lsl	r2, #1
	sub	sp, #0x1c
	add	r7, r3, r2
	sub	r2, #0x20
	add	r4, sp, #4
	add	r6, sp, #0xc
	add	r5, r3, r2
.L1ff7e:
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.L1ffb6
	ldr	r3, [r5, #0x40]
	str	r3, [sp, #4]
	ldr	r3, [r5, #0x40]
	str	r3, [r4, #4]
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	lsl	r3, #16
	str	r3, [r6]
	mov	r3, r10
	str	r3, [r6, #4]
	mov	r2, #0x10
	ldrsh	r3, [r7, r2]
	lsl	r3, #16
	add	r3, r10
	str	r3, [r6, #8]
	mov	r3, #0
	str	r3, [r6, #0xc]
	mov	r3, #0x80
	mov	r2, r4
	mov	r1, r6
	lsl	r3, #7
	str	r4, [sp]
	bl	_UpdateSprite
	ldr	r4, [sp]
.L1ffb6:
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	add	r7, #2
	add	r5, #4
	cmp	r2, #3
	ble	.L1ff7e
	add	sp, #0x1c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801ff58

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
