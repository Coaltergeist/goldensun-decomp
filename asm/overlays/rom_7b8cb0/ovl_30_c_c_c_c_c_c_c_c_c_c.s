	.include "macros.inc"

	.section .text.after_8874, "ax", %progbits

.thumb_func_start OvlFunc_931_2008904
	push	{r5, r6, r7, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r0, =0x242
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.L942
	mov	r3, #0x20
	mov	r0, #0x40
	mov	r1, #0x20
	mov	r2, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x40
	mov	r1, #0x20
	mov	r2, #0x20
	mov	r3, #0x20
	bl	__Func_8010704
	mov	r0, #0x14
	b	.L9ac
.L942:
	ldr	r0, =0x241
	bl	__GetFlag
	mov	r6, r0
	cmp	r6, #0
	beq	.L978
	mov	r3, #0x20
	mov	r0, #0x40
	mov	r1, #0
	mov	r2, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0
	mov	r2, #0x20
	mov	r3, #0x20
	mov	r0, #0x40
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x11
	bl	__DeleteFieldActor
	mov	r0, #0x14
	b	.L9ac
.L978:
	mov	r0, #0x90
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L9b8
	mov	r3, #0x20
	mov	r0, #0
	mov	r1, #0x40
	mov	r2, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0x40
	mov	r2, #0x20
	mov	r3, #0x20
	mov	r0, #0
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x10
	bl	__DeleteFieldActor
	mov	r0, #0x11
.L9ac:
	bl	__DeleteFieldActor
	mov	r0, #0x15
	bl	__DeleteFieldActor
	b	.L9da
.L9b8:
	str	r0, [sp]
	str	r0, [sp, #4]
	mov	r1, #0x20
	mov	r2, #0x20
	mov	r3, #0x20
	mov	r0, #0
	bl	__Func_8010704
	mov	r0, #0xf
	bl	__DeleteFieldActor
	mov	r0, #0x10
	bl	__DeleteFieldActor
	mov	r0, #0x11
	bl	__DeleteFieldActor
.L9da:
	ldr	r0, =0x8ff
	bl	__GetFlag
	cmp	r0, #0
	beq	.L9ec
	mov	r0, #0x12
	bl	__DeleteFieldActor
	b	.La0c
.L9ec:
	mov	r0, #0xaa
	bl	__Func_8091ff0
	mov	r0, #0x12
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0x12
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_931_2008d08
	lsl	r1, #4
	bl	__StartTask
.La0c:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.La22
	ldr	r0, =0x12f
	bl	__ClearFlag
.La22:
	mov	r3, #0x14
	mov	r2, #0x29
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x21
	mov	r2, #4
	mov	r3, #3
	bl	__Func_8010704
	ldr	r0, =0x906
	bl	__GetFlag
	cmp	r0, #0
	beq	.La4e
	mov	r1, #0xb4
	mov	r2, #0xa8
	mov	r0, #0x13
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
.La4e:
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x16
	mov	r1, #0xf
	bl	__Func_8092950
	mov	r0, #0x17
	mov	r1, #0xf
	bl	__Func_8092950
	mov	r1, #0xf
	mov	r0, #0x18
	bl	__Func_8092950
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r5, #8
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x17
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x18
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #2
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x17
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x18
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_8092b08
	mov	r0, #0x17
	mov	r1, #1
	bl	__Func_8092b08
	mov	r1, #1
	mov	r0, #0x18
	bl	__Func_8092b08
	mov	r0, #1
	bl	__WaitFrames
	bl	__CutsceneStart
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	ldr	r2, [r7, #0x10]
	mov	r3, #0
	bl	__Func_80933f8
	bl	__Func_800fe9c
	bl	__CutsceneEnd
	mov	r0, #1
	bl	__WaitFrames
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_2008904

	.section .text.after, "ax", %progbits
	.section .text.after_d08, "ax", %progbits

	.section .data
	.global .L1e70
	.global .L13f4
	.global .L140c
	.global .L15bc
	.global .L1724
	.global .L19f4
	.global .L10f0
	.global .L1120
	.global .L1288

	.incbin "overlays/rom_7b8cb0/orig.bin", 0xfc8, (0x10f0-0xfc8)
.L10f0:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x10f0, (0x1120-0x10f0)
.L1120:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x1120, (0x1288-0x1120)
.L1288:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x1288, (0x1390-0x1288)
	.global gOvl_02009390
gOvl_02009390:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x1390, (0x13f4-0x1390)
.L13f4:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x13f4, (0x140c-0x13f4)
.L140c:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x140c, (0x15bc-0x140c)
.L15bc:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x15bc, (0x1724-0x15bc)
.L1724:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x1724, (0x1730-0x1724)
	.global gScript_930__02009730
gScript_930__02009730:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x1730, (0x19f4-0x1730)
.L19f4:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x19f4, (0x1e70-0x19f4)
.L1e70:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x1e70
