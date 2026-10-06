	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b11c4  @ 0x080b11c4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	mov	r11, r1
	mov	r9, r2
	ldr	r7, [r3]
	cmp	r0, #0
	beq	.Lb1244
	ldr	r1, =0x3a7
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r6, #0
	cmp	r6, r3
	bge	.Lb1244
	mov	r3, #0xdb
	mov	r1, #0x8a
	add	r2, r7, #2
	lsl	r3, #2
	lsl	r1, #1
	mov	r10, r2
	mov	r8, r3
	add	r5, r7, r1
.Lb11fe:
	cmp	r6, r11
	bne	.Lb120c
	ldr	r0, [r5]
	mov	r1, #0x1e
	bl	_Sprite_SetAnim
	b	.Lb1214
.Lb120c:
	ldr	r0, [r5]
	mov	r1, #1
	bl	_Sprite_SetAnim
.Lb1214:
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x40]
	mov	r1, r8
	mov	r2, r10
	ldrsh	r0, [r2, r1]
	mov	r1, r9
	bl	_Func_807845c
	cmp	r0, #0
	bne	.Lb122e
	ldr	r3, =0xcccc
	str	r3, [r5, #0x40]
.Lb122e:
	ldr	r1, =0x3a7
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r2, #2
	add	r6, #1
	add	r8, r2
	add	r5, #4
	cmp	r6, r3
	blt	.Lb11fe
.Lb1244:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b11c4

