	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_200c2bc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	sub	sp, #0x38
	bl	__CutsceneStart
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0xaa
	bl	__Func_8091ff0
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xa2
	bl	__PlaySound
	mov	r2, #0x10
	mov	r3, #0
	add	r2, sp
	mov	r10, r3
	mov	r8, r3
	mov	r9, r2
	mov	r11, r3
.Lm968_431a:
	bl	__Random
	ldr	r2, =0x4ccc
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r0
	mul	r3, r2
	ldr	r2, =0x17ffc
	add	r3, r2
	str	r3, [sp, #0x18]
	bl	__Random
	ldr	r2, =0x4ccc
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r0
	mul	r3, r2
	ldr	r2, =0x17ffc
	add	r3, r2
	str	r3, [sp, #0x1c]
	bl	__Random
	mov	r3, #0xf8
	lsl	r0, #12
	lsr	r0, #16
	lsl	r3, #8
	mov	r2, #0x32
	add	r0, r3
	add	r2, sp
	strh	r0, [r2]
.Lm968_4356:
	mov	r3, r8
	mov	r6, #0
	cmp	r3, #7
	bhi	.Lm968_43a4
	mov	r5, #0xc0
	lsl	r5, #14
	mov	r7, #0
	add	r5, r11
.Lm968_4366:
	bl	__Random
	mov	r3, r0
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r3, #0x88
	lsl	r3, #16
	lsr	r0, #16
	mov	r2, #0xd8
	lsl	r2, #18
	str	r3, [sp, #8]
	lsl	r0, #19
	mov	r3, r9
	add	r0, r2
	str	r3, [sp, #0xc]
	mov	r2, r5
	mov	r1, #0
	mov	r3, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_968_2008118
	mov	r2, #0x80
	lsl	r2, #11
	add	r6, #1
	add	r5, r2
	cmp	r6, #3
	bhi	.Lm968_43a4
	mov	r3, r8
	cmp	r3, #7
	bls	.Lm968_4366
.Lm968_43a4:
	mov	r0, #3
	bl	__WaitFrames
	mov	r2, r8
	cmp	r2, #3
	bne	.Lm968_43bc
	mov	r3, r10
	cmp	r3, #2
	bhi	.Lm968_43bc
	mov	r2, #1
	add	r10, r2
	b	.Lm968_4356
.Lm968_43bc:
	mov	r3, r8
	add	r3, #3
	mov	r2, #3
	mov	r1, #1
	str	r2, [sp]
	str	r1, [sp, #4]
	mov	r2, #0x36
	mov	r1, r3
	mov	r0, #0x30
	bl	__CopyMapTiles
	mov	r3, #0x80
	mov	r2, #1
	lsl	r3, #13
	add	r8, r2
	add	r11, r3
	mov	r3, r8
	cmp	r3, #9
	bls	.Lm968_431a
	mov	r5, #5
	mov	r6, #2
	mov	r0, #0x6f
	mov	r1, #5
	mov	r2, #0x75
	mov	r3, #5
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x6f
	mov	r1, #0xa
	mov	r2, #0x75
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x6f
	mov	r1, #7
	mov	r2, #0x6f
	mov	r3, #5
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r2, #0x6f
	mov	r0, #0x6f
	mov	r1, #7
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r2, #0
	mov	r8, r2
	mov	r10, r9
	mov	r11, r2
.Lm968_442e:
	bl	__Random
	ldr	r2, =0x4ccc
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r0
	mul	r3, r2
	ldr	r2, =0x17ffc
	add	r3, r2
	mov	r2, r10
	str	r3, [r2, #8]
	bl	__Random
	ldr	r2, =0x4ccc
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r0
	mul	r3, r2
	ldr	r2, =0x17ffc
	add	r3, r2
	mov	r2, r10
	str	r3, [r2, #0xc]
	bl	__Random
	mov	r3, #0xf8
	lsl	r0, #12
	lsl	r3, #8
	lsr	r0, #16
	add	r0, r3
	mov	r2, r10
	mov	r3, r8
	strh	r0, [r2, #0x22]
	mov	r6, #0
	cmp	r3, #7
	bhi	.Lm968_44ba
	mov	r5, #0xc0
	lsl	r5, #14
	mov	r7, #0
	add	r5, r11
.Lm968_447c:
	bl	__Random
	lsl	r3, r0, #3
	sub	r3, r0
	lsr	r3, #16
	mov	r2, #0xc0
	lsl	r2, #18
	lsl	r3, #19
	add	r3, r2
	mov	r2, #0x88
	lsl	r2, #16
	str	r2, [sp, #8]
	mov	r2, r9
	str	r2, [sp, #0xc]
	mov	r0, r3
	mov	r2, r5
	mov	r3, #0
	mov	r1, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_968_2008118
	mov	r3, #0x80
	lsl	r3, #11
	add	r6, #1
	add	r5, r3
	cmp	r6, #3
	bhi	.Lm968_44ba
	mov	r2, r8
	cmp	r2, #7
	bls	.Lm968_447c
.Lm968_44ba:
	mov	r0, #3
	bl	__WaitFrames
	mov	r1, r8
	mov	r3, r8
	mov	r2, #3
	mov	r0, #1
	add	r3, #3
	str	r2, [sp]
	str	r0, [sp, #4]
	mov	r2, #0x30
	add	r1, #0x1a
	mov	r0, #0x37
	bl	__CopyMapTiles
	mov	r3, #0x80
	mov	r2, #1
	lsl	r3, #13
	add	r8, r2
	add	r11, r3
	mov	r3, r8
	cmp	r3, #9
	bls	.Lm968_442e
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x15
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200c2bc

