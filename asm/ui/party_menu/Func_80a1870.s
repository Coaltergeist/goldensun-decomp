	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a1870  @ 0x080a1870
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x2c
	str	r1, [sp, #0xc]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	ldr	r3, =iwram_3001f2c
	mov	r9, r0
	ldr	r3, [r3]
	mov	r0, sp
	add	r0, #0x10
	mov	r10, r3
	str	r0, [sp]
	bl	_Func_80796c4
	lsl	r0, #16
	lsr	r0, #16
	mov	r8, r0
	mov	r1, r8
	mov	r2, r10
	mov	r5, #0
	strb	r1, [r2, #0x1e]
	cmp	r5, r8
	bge	.La191c
	mov	r7, #0x9a
	mov	r6, #0x8a
	lsl	r7, #1
	lsl	r6, #1
	add	r7, r10
	add	r6, r10
	mov	r11, r5
.La18b8:
	ldr	r1, [sp]
	mov	r3, r11
	ldrh	r0, [r3, r1]
	bl	_Func_808b398
	bl	_CreateSprite
	cmp	r0, #0
	beq	.La190e
	str	r0, [r6]
	mov	r2, r9
	ldrh	r3, [r2, #0xc]
	ldr	r2, [sp, #4]
	add	r2, #0x10
	mul	r2, r5
	ldr	r1, [sp, #0xc]
	add	r3, r1, r3
	lsl	r3, #3
	add	r3, r2
	strh	r3, [r7]
	mov	r2, r9
	ldr	r1, [sp, #8]
	ldrh	r3, [r2, #0xe]
	add	r3, r1, r3
	lsl	r3, #3
	add	r3, #0x10
	strh	r3, [r7, #0x10]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x40]
	mov	r1, #0xd
	ldrb	r3, [r0, #9]
	neg	r1, r1
	mov	r2, r1
	and	r3, r2
	mov	r2, r0
	strb	r3, [r0, #9]
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #1
	bl	_Sprite_SetAnim
.La190e:
	mov	r2, #2
	add	r5, #1
	add	r7, #2
	add	r6, #4
	add	r11, r2
	cmp	r5, r8
	blt	.La18b8
.La191c:
	cmp	r5, #7
	bgt	.La1938
	lsl	r3, r5, #2
	mov	r0, #0x8a
	add	r3, r10
	lsl	r0, #1
	add	r2, r3, r0
	mov	r3, #8
	mov	r1, #0
	sub	r5, r3, r5
.La1930:
	sub	r5, #1
	stmia	r2!, {r1}
	cmp	r5, #0
	bne	.La1930
.La1938:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80a19a0
	bl	StartTask
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a1870

