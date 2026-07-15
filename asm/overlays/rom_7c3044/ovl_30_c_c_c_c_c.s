	.include "macros.inc"
.thumb_func_start OvlFunc_937_2008240
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r7, [r3]
	bl	__CutsceneStart
	mov	r5, #8
	mov	r6, #0
.L24e:
	mov	r0, r5
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L25e
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
.L25e:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L24e
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xd
	beq	.L28a
	cmp	r3, #0xd
	bgt	.L27c
	cmp	r3, #0xc
	beq	.L286
	b	.L2fa
.L27c:
	cmp	r3, #0x10
	beq	.L28e
	cmp	r3, #0x13
	beq	.L292
	b	.L2fa
.L286:
	mov	r5, #0
	b	.L294
.L28a:
	mov	r5, #1
	b	.L294
.L28e:
	mov	r5, #2
	b	.L294
.L292:
	mov	r5, #3
.L294:
	mov	r0, #0x9e
	bl	__PlaySound
	lsl	r4, r5, #3
	ldr	r0, =.Lef8
	add	r3, r4, #4
	ldrh	r1, [r0, r3]
	add	r3, r0
	ldrh	r2, [r3, #2]
	ldr	r0, [r0, r4]
	bl	__Func_8010560
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	lsl	r1, #8
	mov	r0, #0
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r2, #8
	mov	r1, #3
	neg	r2, r2
	mov	r0, #0
	bl	__Func_8092208
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_8091e9c
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	bl	__CutsceneEnd
.L2fa:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_937_2008240

	.section .text.after, "ax", %progbits

	.section .data
	.global .L784
	.global .L8d4
	.global .La0c
	.global .La3c
	.global .La48
	.global .Lc88
	.global .Leb0
	.global MapEntrance_ARRAY_937__020084a0
	.global .L4d0
	.global .L6c8

MapEntrance_ARRAY_937__020084a0:
	.incbin "overlays/rom_7c3044/orig.bin", 0x4a0, (0x4d0-0x4a0)
.L4d0:
	.incbin "overlays/rom_7c3044/orig.bin", 0x4d0, (0x6c8-0x4d0)
.L6c8:
	.incbin "overlays/rom_7c3044/orig.bin", 0x6c8, (0x728-0x6c8)
	.global gOvl_02008728
gOvl_02008728:
	.incbin "overlays/rom_7c3044/orig.bin", 0x728, (0x784-0x728)
.L784:
	.incbin "overlays/rom_7c3044/orig.bin", 0x784, (0x79c-0x784)
	.global gScript_906__0200879c
gScript_906__0200879c:
	.incbin "overlays/rom_7c3044/orig.bin", 0x79c, (0x8d4-0x79c)
.L8d4:
	.incbin "overlays/rom_7c3044/orig.bin", 0x8d4, (0xa0c-0x8d4)
.La0c:
	.incbin "overlays/rom_7c3044/orig.bin", 0xa0c, (0xa3c-0xa0c)
.La3c:
	.incbin "overlays/rom_7c3044/orig.bin", 0xa3c, (0xa48-0xa3c)
.La48:
	.incbin "overlays/rom_7c3044/orig.bin", 0xa48, (0xc88-0xa48)
.Lc88:
	.incbin "overlays/rom_7c3044/orig.bin", 0xc88, (0xeb0-0xc88)
.Leb0:
	.incbin "overlays/rom_7c3044/orig.bin", 0xeb0, (0xef8-0xeb0)
.Lef8:
	.incbin "overlays/rom_7c3044/orig.bin", 0xef8
