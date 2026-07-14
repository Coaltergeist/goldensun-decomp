	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Task_BlitAnim  @ 0x080cd260
	push	{r5, r6, lr}
	ldr	r0, =iwram_3001eec
	ldr	r2, =0x7824
	ldr	r6, [r0]
	add	r3, r6, r2
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.Lcd326
	sub	r2, #0xa4
	add	r3, r6, r2
	ldr	r3, [r3]
	ldr	r5, [r0, #4]
	cmp	r3, #4
	bhi	.Lcd316
	ldr	r2, =.Lcd284
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lcd284:
	.word	.Lcd298
	.word	.Lcd2a8
	.word	.Lcd2ca
	.word	.Lcd2f0
	.word	.Lcd304
.Lcd298:
	mov	r2, #0x80
	ldr	r3, =Func_8001af8
	ldr	r0, =0x6004000
	mov	r1, r5
	lsl	r2, #7
	bl	_call_via_r3
	b	.Lcd316
.Lcd2a8:
	mov	r2, #0x80
	ldr	r3, =Func_8001af8
	mov	r1, r5
	lsl	r2, #7
	ldr	r0, =0x6004000
	bl	_call_via_r3
	ldr	r2, =0x7784
	mov	r1, #0x80
	add	r3, r6, r2
	ldr	r2, [r3]
	mov	r0, r5
	ldr	r3, =Func_80008d8
	lsl	r1, #7
	bl	_call_via_r3
	b	.Lcd316
.Lcd2ca:
	ldr	r2, =0x7784
	add	r3, r6, r2
	ldr	r3, [r3]
	cmp	r3, #0x32
	bne	.Lcd2e2
	mov	r2, #0x80
	ldr	r1, =0x6004000
	lsl	r2, #7
	mov	r0, r5
	bl	BlitFade_Div2
	b	.Lcd316
.Lcd2e2:
	mov	r2, #0x80
	ldr	r1, =0x6004000
	lsl	r2, #7
	mov	r0, r5
	bl	BlitFade_Div4
	b	.Lcd316
.Lcd2f0:
	ldr	r2, =0x7784
	add	r3, r6, r2
	ldr	r1, [r3]
	mov	r3, #0x80
	ldr	r2, =0x6004000
	lsl	r3, #7
	mov	r0, r5
	bl	BlitFade_Sub
	b	.Lcd316
.Lcd304:
	ldr	r2, =0x7784
	add	r3, r6, r2
	ldr	r1, [r3]
	mov	r3, #0x80
	ldr	r2, =0x6004000
	lsl	r3, #7
	mov	r0, r5
	bl	BlitFade_Add
.Lcd316:
	ldr	r3, =0x7824
	add	r2, r6, r3
	mov	r3, #0
	str	r3, [r2]
	ldr	r3, =0x7820
	add	r2, r6, r3
	mov	r3, #1
	b	.Lcd32e
.Lcd326:
	ldr	r3, =0x7820
	add	r2, r6, r3
	ldr	r3, [r2]
	add	r3, #1
.Lcd32e:
	str	r3, [r2]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Task_BlitAnim

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
