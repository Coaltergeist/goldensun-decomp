	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Task_BlitAnim_BG1Wide  @ 0x080cd358
	push	{r5, lr}
	ldr	r3, =iwram_3001eec
	ldr	r2, =0x7824
	ldr	r5, [r3]
	add	r3, r5, r2
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.Lcd3f6
	sub	r2, #0xa4
	add	r3, r5, r2
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.Lcd396
	cmp	r3, #1
	bgt	.Lcd37c
	cmp	r3, #0
	beq	.Lcd386
	b	.Lcd3ee
.Lcd37c:
	cmp	r3, #2
	beq	.Lcd3b8
	cmp	r3, #3
	beq	.Lcd3dc
	b	.Lcd3ee
.Lcd386:
	mov	r2, #0xf0
	ldr	r3, =Func_8001af8
	ldr	r0, =0x6008000
	ldr	r1, =gBuffer
	lsl	r2, #7
	bl	_call_via_r3
	b	.Lcd3ee
.Lcd396:
	mov	r2, #0xf0
	ldr	r3, =Func_8001af8
	ldr	r1, =gBuffer
	lsl	r2, #7
	ldr	r0, =0x6008000
	bl	_call_via_r3
	ldr	r2, =0x7784
	mov	r1, #0xf0
	add	r3, r5, r2
	ldr	r2, [r3]
	ldr	r0, =gBuffer
	ldr	r3, =Func_80008d8
	lsl	r1, #7
	bl	_call_via_r3
	b	.Lcd3ee
.Lcd3b8:
	ldr	r2, =0x7784
	add	r3, r5, r2
	ldr	r3, [r3]
	cmp	r3, #0x32
	bne	.Lcd3ce
	ldr	r1, =0x6008000
	add	r2, #0x7c
	ldr	r0, =gBuffer
	bl	BlitFade_Div2
	b	.Lcd3ee
.Lcd3ce:
	mov	r2, #0xf0
	ldr	r1, =0x6008000
	lsl	r2, #7
	ldr	r0, =gBuffer
	bl	BlitFade_Div4
	b	.Lcd3ee
.Lcd3dc:
	ldr	r2, =0x7784
	add	r3, r5, r2
	ldr	r1, [r3]
	mov	r3, #0xf0
	ldr	r2, =0x6008000
	lsl	r3, #7
	ldr	r0, =gBuffer
	bl	BlitFade_Sub
.Lcd3ee:
	ldr	r3, =0x7824
	add	r2, r5, r3
	mov	r3, #0
	str	r3, [r2]
.Lcd3f6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Task_BlitAnim_BG1Wide

