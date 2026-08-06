	.include "macros.inc"

.thumb_func_start Altin_MapInit
	push	{lr}
	ldr	r0, =0x8fd
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm931_888
	mov	r0, #0x90
	lsl	r0, #2
	bl	__SetFlag
.Lm931_888:
	ldr	r0, =0x8fe
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm931_89c
	ldr	r0, =0x907
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm931_8a2
.Lm931_89c:
	ldr	r0, =0x241
	bl	__SetFlag
.Lm931_8a2:
	ldr	r0, =0x8fe
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm931_8bc
	ldr	r0, =0x907
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm931_8bc
	ldr	r0, =0x242
	bl	__SetFlag
.Lm931_8bc:
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4b
	cmp	r2, r3
	bne	.Lm931_8d4
	bl	OvlFunc_931_2008904
	b	.Lm931_8de
.Lm931_8d4:
	ldr	r3, =0x4c
	cmp	r2, r3
	bne	.Lm931_8de
	bl	OvlFunc_931_2008b2c
.Lm931_8de:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end Altin_MapInit

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
	beq	.Lm931_942
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
	b	.Lm931_9ac
.Lm931_942:
	ldr	r0, =0x241
	bl	__GetFlag
	mov	r6, r0
	cmp	r6, #0
	beq	.Lm931_978
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
	b	.Lm931_9ac
.Lm931_978:
	mov	r0, #0x90
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm931_9b8
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
.Lm931_9ac:
	bl	__DeleteFieldActor
	mov	r0, #0x15
	bl	__DeleteFieldActor
	b	.Lm931_9da
.Lm931_9b8:
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
.Lm931_9da:
	ldr	r0, =0x8ff
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm931_9ec
	mov	r0, #0x12
	bl	__DeleteFieldActor
	b	.Lm931_a0c
.Lm931_9ec:
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
.Lm931_a0c:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.Lm931_a22
	ldr	r0, =0x12f
	bl	__ClearFlag
.Lm931_a22:
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
	beq	.Lm931_a4e
	mov	r1, #0xb4
	mov	r2, #0xa8
	mov	r0, #0x13
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
.Lm931_a4e:
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

.thumb_func_start OvlFunc_931_2008b2c
	push	{lr}
	mov	r0, #0x90
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm931_b5c
	mov	r1, #0xca
	lsl	r1, #18
	ldr	r2, =0x2d70000
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r0, #6]
	ldr	r1, =0x31a0000
	mov	r0, #9
	ldr	r2, =0x3390000
	bl	__MapActor_SetPos
.Lm931_b5c:
	ldr	r0, =0x241
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm931_b8a
	mov	r1, #0x8c
	lsl	r1, #18
	ldr	r2, =0x2c60000
	mov	r0, #0xa
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #5
	mov	r1, #0x90
	strh	r3, [r0, #6]
	lsl	r1, #18
	mov	r0, #0xb
	ldr	r2, =0x2c60000
	bl	__MapActor_SetPos
.Lm931_b8a:
	ldr	r0, =0x242
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm931_bae
	mov	r2, #0xba
	mov	r0, #0xf
	ldr	r1, =0x1270000
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r3, #0xb0
	lsl	r3, #8
	strh	r3, [r0, #6]
	b	.Lm931_bc0
.Lm931_bae:
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r1, r0
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #4
	orr	r3, r2
	strb	r3, [r1]
.Lm931_bc0:
	mov	r0, #0x11
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm931_bd6
	mov	r1, r0
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #4
	orr	r3, r2
	strb	r3, [r1]
.Lm931_bd6:
	mov	r0, #0x10
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm931_bec
	mov	r1, r0
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #4
	orr	r3, r2
	strb	r3, [r1]
.Lm931_bec:
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_2008b2c

.thumb_func_start OvlFunc_931_2008c0c
	push	{r5, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r1, [r5, #0x50]
	ldrb	r2, [r1, #9]
	sub	r3, #0xd
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r1, #3
	bl	__Func_80929d8
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r3, =0x4ccc
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_2008c0c

.thumb_func_start OvlFunc_931_2008c44
	push	{r5, r6, lr}
	mov	r5, r0
	bl	__Random
	mov	r6, r5
	lsl	r0, #1
	add	r6, #0x64
	lsr	r0, #16
	mov	r1, #0
	ldrsh	r2, [r6, r1]
	sub	r0, #1
	lsl	r0, #16
	ldr	r3, [r5, #8]
	lsl	r2, #12
	asr	r0, #1
	add	r2, r0
	add	r3, r2
	str	r3, [r5, #8]
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #3
	bgt	.Lm931_c92
	bl	__Random
	ldr	r3, [r5, #0x10]
	lsl	r0, #15
	ldr	r1, =0xffff0000
	lsr	r0, #16
	sub	r3, r0
	add	r3, r1
	str	r3, [r5, #0x10]
	ldr	r2, =0x2666
	ldr	r3, [r5, #0x18]
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r1, =0xfffff5c3
	ldr	r3, [r5, #0x1c]
	add	r3, r1
	b	.Lm931_ca8
.Lm931_c92:
	ldr	r3, [r5, #0x10]
	mov	r2, #0x80
	lsl	r2, #10
	add	r3, r2
	str	r3, [r5, #0x10]
	ldr	r2, =0x7ae
	ldr	r3, [r5, #0x18]
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r2
.Lm931_ca8:
	str	r3, [r5, #0x1c]
	bl	__Random
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	mul	r3, r0
	lsr	r3, #16
	ldrh	r2, [r6]
	cmp	r3, #0
	bne	.Lm931_cc6
	mov	r0, r5
	mov	r1, #7
	bl	__Func_80929d8
	ldrh	r2, [r6]
.Lm931_cc6:
	lsl	r3, r2, #16
	cmp	r3, #0
	beq	.Lm931_cd0
	sub	r3, r2, #1
	b	.Lm931_cde
.Lm931_cd0:
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #16
	lsl	r3, #1
	add	r3, #2
.Lm931_cde:
	strh	r3, [r6]
	ldr	r3, [r5, #0x68]
	sub	r3, #1
	str	r3, [r5, #0x68]
	cmp	r3, #0
	bne	.Lm931_cf2
	mov	r0, r5
	str	r3, [r5, #0x6c]
	bl	__DeleteActor
.Lm931_cf2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_2008c44

.thumb_func_start OvlFunc_931_2008d08
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e40
	ldr	r6, [r3]
	mov	r3, #3
	and	r6, r3
	cmp	r6, #0
	bne	.Lm931_d4a
	mov	r1, #0x80
	mov	r3, #0xc8
	mov	r0, #0xde
	lsl	r1, #15
	mov	r2, #0
	lsl	r3, #17
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm931_d4a
	mov	r3, r5
	mov	r2, #0x14
	add	r3, #0x64
	strh	r2, [r3]
	add	r3, #2
	strh	r6, [r3]
	str	r2, [r5, #0x68]
	bl	OvlFunc_931_2008c0c
	ldr	r3, =OvlFunc_931_2008c44
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #1
	bl	__Actor_SetAnim
.Lm931_d4a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_2008d08

.thumb_func_start OvlFunc_931_2008d58
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0xfc
	mov	r1, #1
	mov	r2, #0xe1
	mov	r3, #1
	lsl	r2, #17
	neg	r1, r1
	lsl	r0, #14
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x12
	bl	__MapActor_SetAnim
	mov	r0, #1
	neg	r0, r0
	bl	__Func_8091ff0
	ldr	r0, =OvlFunc_931_2008d08
	bl	__StopTask
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x12
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x28
	lsl	r1, #8
	mov	r0, #0x12
	bl	__Func_8092adc
	mov	r0, #0x93
	bl	__PlaySound
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xb0
	mov	r2, #0x28
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_8092adc
	bl	OvlFunc_931_20087b8
	mov	r0, #0
	mov	r1, #1
	bl	__SetCameraTarget
	bl	__Func_8093530
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	ldr	r0, =0x8ff
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_2008d58

	.section .data
	.global .Lm931_1e70
	.global .Lm931_13f4
	.global .Lm931_140c
	.global .Lm931_15bc
	.global .Lm931_1724
	.global .Lm931_19f4
	.global .Lm931_10f0
	.global .Lm931_1120
	.global .Lm931_1288

	.incbin "overlays/rom_7b8cb0/orig.bin", 0xfc8, (0x10f0-0xfc8)
.Lm931_10f0:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x10f0, (0x1120-0x10f0)
.Lm931_1120:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x1120, (0x1288-0x1120)
.Lm931_1288:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x1288, (0x1390-0x1288)
	.global gOvl_02009390
gOvl_02009390:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x1390, (0x13f4-0x1390)
.Lm931_13f4:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x13f4, (0x140c-0x13f4)
.Lm931_140c:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x140c, (0x15bc-0x140c)
.Lm931_15bc:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x15bc, (0x1724-0x15bc)
.Lm931_1724:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x1724, (0x1730-0x1724)
	.global gScript_930__02009730
gScript_930__02009730:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x1730, (0x19f4-0x1730)
.Lm931_19f4:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x19f4, (0x1e70-0x19f4)
.Lm931_1e70:
	.incbin "overlays/rom_7b8cb0/orig.bin", 0x1e70
