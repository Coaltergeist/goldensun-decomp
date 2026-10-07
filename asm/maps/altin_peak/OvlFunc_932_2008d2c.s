	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_2008d2c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #0xa
	sub	sp, #4
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	ldr	r2, [r0, #8]
	ldr	r6, [r0, #0x50]
	mov	r9, r2
	str	r3, [sp]
	mov	r10, r0
	bl	__CutsceneStart
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r0, r0
	neg	r1, r1
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r2, =0x8fff
	mov	r7, #0
	mov	r8, r2
.Lm932_d8e:
	mov	r3, #0x80
	lsl	r3, #12
	ldrh	r2, [r6, #0x1e]
	add	r7, r3
	lsr	r3, r7, #16
	add	r3, r2
	strh	r3, [r6, #0x1e]
	mov	r2, #0x80
	ldrh	r0, [r6, #0x1e]
	lsl	r2, #7
	add	r0, r2
	bl	__cos
	mov	r5, r0
	lsl	r3, r5, #4
	add	r3, r9
	mov	r2, r10
	str	r3, [r2, #8]
	ldrh	r1, [r6, #0x1e]
	cmp	r1, r8
	bhi	.Lm932_dc0
	mov	r0, #1
	bl	__WaitFrames
	b	.Lm932_d8e
.Lm932_dc0:
	mov	r3, #0xe0
	lsl	r3, #7
	mov	r7, #0
	mov	r8, r3
.Lm932_dc8:
	mov	r2, #0x80
	lsl	r2, #12
	add	r7, r2
	lsr	r3, r7, #16
	sub	r3, r1, r3
	strh	r3, [r6, #0x1e]
	mov	r3, #0x80
	ldrh	r0, [r6, #0x1e]
	lsl	r3, #7
	add	r0, r3
	bl	__cos
	mov	r5, r0
	lsl	r3, r5, #4
	add	r3, r9
	mov	r2, r10
	str	r3, [r2, #8]
	ldrh	r1, [r6, #0x1e]
	cmp	r1, r8
	bls	.Lm932_dfa
	mov	r0, #1
	bl	__WaitFrames
	ldrh	r1, [r6, #0x1e]
	b	.Lm932_dc8
.Lm932_dfa:
	mov	r3, #0x80
	mov	r7, #0x80
	lsl	r3, #8
	lsl	r7, #12
	mov	r11, r3
.Lm932_e04:
	lsr	r2, r7, #19
	lsr	r3, r7, #16
	add	r3, r2
	lsl	r3, #16
	mov	r7, r3
	lsr	r2, r7, #16
	add	r3, r2, r1
	strh	r3, [r6, #0x1e]
	mov	r3, #0x80
	ldrh	r0, [r6, #0x1e]
	lsl	r3, #7
	add	r0, r3
	mov	r8, r2
	bl	__cos
	mov	r5, r0
	ldrh	r0, [r6, #0x1e]
	add	r0, r11
	bl	__sin
	lsl	r3, r5, #4
	add	r3, r9
	mov	r2, r10
	str	r3, [r2, #8]
	ldrh	r3, [r6, #0x1e]
	cmp	r3, r11
	bls	.Lm932_e44
	ldr	r2, [sp]
	lsl	r3, r0, #3
	sub	r3, r2, r3
	mov	r2, r10
	str	r3, [r2, #0xc]
.Lm932_e44:
	ldrh	r3, [r6, #0x1e]
	ldr	r2, =0xbfff
	add	r3, r8
	cmp	r3, r2
	bgt	.Lm932_e58
	mov	r0, #1
	bl	__WaitFrames
	ldrh	r1, [r6, #0x1e]
	b	.Lm932_e04
.Lm932_e58:
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r6, #0x1e]
	mov	r0, #0xb7
	bl	__PlaySound
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #5
	bl	OvlFunc_932_2008ec0
	bl	__CutsceneEnd
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2008d2c

