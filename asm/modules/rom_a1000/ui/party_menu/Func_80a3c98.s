	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a3c98  @ 0x080a3c98
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r1, =0x219
	ldr	r6, [r3]
	add	r3, r6, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.La3ccc
	mov	r5, #0
.La3caa:
	asr	r5, #24
	mov	r2, #0x8a
	lsl	r2, #1
	lsl	r3, r5, #2
	add	r3, r2
	ldr	r0, [r6, r3]
	mov	r1, #1
	bl	_Sprite_SetAnim
	ldr	r1, =0x219
	add	r5, #1
	add	r3, r6, r1
	lsl	r5, #24
	ldrb	r3, [r3]
	asr	r2, r5, #24
	cmp	r2, r3
	blt	.La3caa
.La3ccc:
	ldr	r0, =Func_80a3c08
	bl	StopTask
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80a3c98

