	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_959_200d0e4
	push	{r5, lr}
	bl	OvlFunc_959_200d4b0
	mov	r0, #9
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_8092950
	ldr	r0, =0x94c
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_5116
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm959_5116:
	ldr	r0, =0x949
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_512a
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm959_512a:
	ldr	r0, =0x94b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_513e
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm959_513e:
	ldr	r0, =0xf2e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_5152
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm959_5152:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0x1e
	bls	.Lm959_5166
	b	.Lm959_52b8
.Lm959_5166:
	ldr	r2, =.Lm959_5170
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm959_5170:
	.word	.Lm959_51ec
	.word	.Lm959_51ec
	.word	.Lm959_51ec
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_520a
	.word	.Lm959_527a
	.word	.Lm959_527a
	.word	.Lm959_520a
	.word	.Lm959_52ac
	.word	.Lm959_52ac
	.word	.Lm959_52ac
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_520a
	.word	.Lm959_5248
	.word	.Lm959_5248
	.word	.Lm959_520a
	.word	.Lm959_520a
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_52b8
	.word	.Lm959_5298
.Lm959_51ec:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xe0
	add	r2, #0x40
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_80108c4
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_959_2009150
	b	.Lm959_5264
.Lm959_520a:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xc0
	add	r2, #0x49
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_80108c4
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_52ce
	mov	r1, #0xda
	mov	r2, #0xf0
	mov	r0, #0x19
	lsl	r1, #18
	lsl	r2, #15
	bl	__MapActor_SetPos
	b	.Lm959_52ce
.Lm959_5248:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xe0
	add	r2, #0x40
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_80108c4
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_959_200938c
.Lm959_5264:
	bl	__StartTask
	mov	r0, #1
	bl	__WaitFrames
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	b	.Lm959_52ce
.Lm959_527a:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	ldr	r0, =0x94a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm959_52ce
	bl	OvlFunc_959_200a06c
	b	.Lm959_52ce
.Lm959_5298:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	bl	OvlFunc_959_200a06c
	b	.Lm959_52ce
.Lm959_52ac:
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_959_2009a44
	lsl	r1, #4
	bl	__StartTask
	b	.Lm959_52ce
.Lm959_52b8:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xe0
	add	r2, #0x40
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_80108c4
.Lm959_52ce:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #8
	mov	r1, #1
	bl	__Func_8092b08
	mov	r3, #0xc0
	lsl	r3, #8
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200d0e4

