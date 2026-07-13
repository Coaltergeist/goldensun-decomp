	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_2009af0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	mov	r1, #0xb2
	ldr	r3, [r3]
	lsl	r1, #1
	add	r1, r3
	mov	r0, #0
	mov	r10, r1
	sub	sp, #0x38
	bl	__MapActor_GetActor
	ldr	r1, =0xfffffecc
	mov	r2, #0xa
	ldrsh	r5, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r3, #0
	str	r3, [r0, #0xc]
	add	r3, r5, r1
	cmp	r3, #7
	bls	.L1b28
	b	.L1d00
.L1b28:
	mov	r3, #0x85
	lsl	r3, #2
	cmp	r2, r3
	bge	.L1b32
	b	.L1d00
.L1b32:
	mov	r1, #0x87
	lsl	r1, #2
	cmp	r2, r1
	blt	.L1b3c
	b	.L1d00
.L1b3c:
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0xc]
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1b4e
	b	.L1d00
.L1b4e:
	bl	__CutsceneStart
	mov	r0, #0xa1
	bl	__PlaySound
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x21
	mov	r3, #0x21
	mov	r2, #0x13
	mov	r0, #0x1a
	bl	__CopyMapTiles
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xef
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x90
	lsl	r2, #17
	mov	r3, #0x28
	mov	r1, #4
	mov	r8, r2
	mov	r5, #0x1d
	mov	r9, r3
	mov	r7, #0
	add	r6, sp, #0x10
	mov	r11, r1
.L1ba8:
	mov	r2, r10
	ldr	r3, [r2, #8]
	ldr	r1, =0x3333
	add	r3, r1
	str	r3, [r2, #8]
	ldr	r2, =0xffffcccd
	mov	r3, #2
	add	r8, r2
	str	r3, [r6]
	bl	__Random
	lsl	r2, r0, #1
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r2, r3, #4
	add	r3, r2
	ldr	r1, =0xcccc
	lsl	r2, r3, #8
	add	r3, r2
	add	r3, r1
	str	r3, [r6, #8]
	bl	__Random
	lsl	r2, r0, #1
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r2, r3, #4
	add	r3, r2
	lsl	r2, r3, #8
	add	r3, r2
	ldr	r2, =0xcccc
	add	r3, r2
	str	r3, [r6, #0xc]
	bl	__Random
	mov	r3, #0xf8
	lsl	r0, #12
	lsl	r3, #8
	lsr	r0, #16
	add	r0, r3
	strh	r0, [r6, #0x22]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #16
	neg	r3, r3
	str	r3, [sp]
	mov	r3, #0x8a
	lsl	r3, #16
	mov	r2, #0x84
	mov	r1, #0
	str	r3, [sp, #8]
	mov	r0, r8
	lsl	r2, #18
	mov	r3, #0
	str	r1, [sp, #4]
	str	r6, [sp, #0xc]
	bl	OvlFunc_968_2008118
	cmp	r7, #0xf0
	bne	.L1c34
	ldr	r2, =0xffd00000
	add	r8, r2
.L1c34:
	mov	r3, r9
	cmp	r3, #0
	bne	.L1c70
	mov	r1, #0x28
	mov	r9, r1
	cmp	r7, #0xf0
	bhi	.L1c5a
	mov	r2, #3
	mov	r3, r11
	sub	r5, #4
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, #0x32
	mov	r2, #0xf
	mov	r3, #0x20
	bl	__CopyMapTiles
	b	.L1c70
.L1c5a:
	mov	r1, #3
	mov	r2, r11
	add	r5, #4
	str	r1, [sp]
	str	r2, [sp, #4]
	mov	r0, r5
	mov	r1, #0x2d
	mov	r2, #9
	mov	r3, #0x20
	bl	__CopyMapTiles
.L1c70:
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #1
	ldr	r1, =0x1df
	neg	r3, r3
	add	r7, #1
	add	r9, r3
	cmp	r7, r1
	bls	.L1ba8
	mov	r3, r10
	ldr	r2, [r3, #8]
	mov	r1, #0x80
	lsl	r1, #8
	add	r3, r2, r1
	mov	r1, r10
	str	r3, [r1, #8]
	cmp	r3, #0
	bge	.L1c9a
	ldr	r1, =0x17fff
	add	r3, r2, r1
.L1c9a:
	asr	r3, #16
	lsl	r3, #16
	mov	r2, r10
	str	r3, [r2, #8]
	mov	r3, #9
	str	r3, [sp]
	mov	r5, #0x20
	mov	r0, #0xf
	mov	r1, #0x20
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xf
	str	r3, [sp]
	mov	r1, #0x20
	mov	r3, #1
	mov	r2, #3
	mov	r0, #0xc
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	ldr	r2, =0x202
	add	r3, r1
	str	r2, [r3]
	mov	r0, #0xb
	bl	__Func_8091e9c
	bl	__CutsceneEnd
.L1d00:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009af0

.thumb_func_start OvlFunc_968_2009d48
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	mov	r2, #0
	mov	r0, #9
	str	r2, [sp, #8]
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r11, r0
	bl	__CutsceneStart
	mov	r3, #0x2b
	str	r3, [sp, #4]
	mov	r2, #7
	mov	r3, #5
	mov	r5, #0x2d
	mov	r0, #0x6d
	mov	r1, #0x2b
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x23
	add	r3, r6
	ldrb	r2, [r3]
	mov	r10, r3
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1da8
	mov	r3, #0x2e
	str	r3, [sp]
	mov	r0, #0x2d
	mov	r1, #0x2d
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	b	.L1dc0
.L1da8:
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x2a
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L1dc0:
	ldr	r3, [r6, #8]
	asr	r3, #20
	mov	r9, r3
	cmp	r3, #0x2e
	beq	.L1dcc
	b	.L1efc
.L1dcc:
	ldr	r3, [r6, #0x10]
	asr	r3, #20
	mov	r8, r3
	cmp	r3, #0x2d
	beq	.L1dd8
	b	.L1efc
.L1dd8:
	ldr	r0, =0x301
	bl	__GetFlag
	mov	r7, r0
	cmp	r7, #0
	beq	.L1de6
	b	.L1efc
.L1de6:
	mov	r2, r11
	ldr	r3, [r2, #0x10]
	asr	r3, #20
	cmp	r3, #0x2d
	bgt	.L1e0a
	mov	r0, #0xba
	mov	r2, #0xb0
	mov	r1, #0
	lsl	r0, #18
	lsl	r2, #18
	mov	r3, #0x14
	bl	OvlFunc_968_2008098
	mov	r1, #3
	str	r0, [sp, #8]
	mov	r0, #0
	bl	__Func_8092b08
.L1e0a:
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, r6
	add	r3, #0x22
	mov	r5, r6
	strb	r7, [r3]
	add	r5, #0x55
	mov	r3, #3
	strb	r3, [r5]
	ldr	r3, =0x1999
	mov	r2, r8
	str	r3, [r6, #0x48]
	mov	r3, r9
	mov	r1, #0x2d
	str	r7, [r6, #0x44]
	mov	r0, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	bl	__Func_8010704
	mov	r0, r6
	bl	OvlFunc_968_200894c
	mov	r0, #0xbc
	bl	__PlaySound
	ldr	r3, =0xfff00000
	strb	r7, [r5]
	mov	r0, #9
	str	r3, [r6, #0xc]
	mov	r1, #3
	bl	__Func_8092b08
	mov	r3, #2
	mov	r2, r10
	strb	r3, [r2]
	mov	r3, r9
	mov	r2, r8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2d
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x2d
	bl	__Func_8010704
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, [sp, #8]
	bl	__DeleteActor
	mov	r3, r6
	add	r3, #0x59
	strb	r7, [r3]
	mov	r2, r10
	ldrb	r3, [r2]
	mov	r5, #2
	orr	r3, r5
	strb	r3, [r2]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r7, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r1, #0xca
	orr	r5, r3
	mov	r2, #0xb6
	lsl	r2, #18
	strb	r5, [r0]
	lsl	r1, #18
	mov	r0, #0xa
	bl	__MapActor_SetPos
	ldr	r1, =gScript_968__0200d3c4
	mov	r0, #0xa
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__MapActor_WaitScript
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L5ce8
	mov	r1, #0x6e
	mov	r2, #0x29
	bl	__Func_8010560
	mov	r3, #0x2a
	mov	r2, r9
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x29
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	ldr	r0, =0x301
	bl	__SetFlag
.L1efc:
	bl	__CutsceneEnd
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009d48

