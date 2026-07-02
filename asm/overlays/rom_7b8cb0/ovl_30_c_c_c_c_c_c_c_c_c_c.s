	.include "macros.inc"

.thumb_func_start OvlFunc_931_2008874
	push	{lr}
	ldr	r0, =0x8fd
	bl	__GetFlag
	cmp	r0, #0
	beq	.L888
	mov	r0, #0x90
	lsl	r0, #2
	bl	__SetFlag
.L888:
	ldr	r0, =0x8fe
	bl	__GetFlag
	cmp	r0, #0
	bne	.L89c
	ldr	r0, =0x907
	bl	__GetFlag
	cmp	r0, #0
	beq	.L8a2
.L89c:
	ldr	r0, =0x241
	bl	__SetFlag
.L8a2:
	ldr	r0, =0x8fe
	bl	__GetFlag
	cmp	r0, #0
	beq	.L8bc
	ldr	r0, =0x907
	bl	__GetFlag
	cmp	r0, #0
	beq	.L8bc
	ldr	r0, =0x242
	bl	__SetFlag
.L8bc:
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4b
	cmp	r2, r3
	bne	.L8d4
	bl	OvlFunc_931_2008904
	b	.L8de
.L8d4:
	ldr	r3, =0x4c
	cmp	r2, r3
	bne	.L8de
	bl	OvlFunc_931_2008b2c
.L8de:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_931_2008874

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

.thumb_func_start OvlFunc_931_2008b2c
	push	{lr}
	mov	r0, #0x90
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lb5c
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
.Lb5c:
	ldr	r0, =0x241
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lb8a
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
.Lb8a:
	ldr	r0, =0x242
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lbae
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
	b	.Lbc0
.Lbae:
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r1, r0
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #4
	orr	r3, r2
	strb	r3, [r1]
.Lbc0:
	mov	r0, #0x11
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lbd6
	mov	r1, r0
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #4
	orr	r3, r2
	strb	r3, [r1]
.Lbd6:
	mov	r0, #0x10
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lbec
	mov	r1, r0
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #4
	orr	r3, r2
	strb	r3, [r1]
.Lbec:
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
	bgt	.Lc92
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
	b	.Lca8
.Lc92:
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
.Lca8:
	str	r3, [r5, #0x1c]
	bl	__Random
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	mul	r3, r0
	lsr	r3, #16
	ldrh	r2, [r6]
	cmp	r3, #0
	bne	.Lcc6
	mov	r0, r5
	mov	r1, #7
	bl	__Func_80929d8
	ldrh	r2, [r6]
.Lcc6:
	lsl	r3, r2, #16
	cmp	r3, #0
	beq	.Lcd0
	sub	r3, r2, #1
	b	.Lcde
.Lcd0:
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #16
	lsl	r3, #1
	add	r3, #2
.Lcde:
	strh	r3, [r6]
	ldr	r3, [r5, #0x68]
	sub	r3, #1
	str	r3, [r5, #0x68]
	cmp	r3, #0
	bne	.Lcf2
	mov	r0, r5
	str	r3, [r5, #0x6c]
	bl	__DeleteActor
.Lcf2:
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
	bne	.Ld4a
	mov	r1, #0x80
	mov	r3, #0xc8
	mov	r0, #0xde
	lsl	r1, #15
	mov	r2, #0
	lsl	r3, #17
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Ld4a
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
.Ld4a:
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
	bl	__Func_809280c
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
