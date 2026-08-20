	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_899_200cb2c
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0xa8
	mov	r1, #1
	mov	r2, #0xa4
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_80933f8
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0xae
	mov	r0, #0
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xf8
	mov	r2, #0xae
	mov	r0, #1
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xf8
	mov	r2, #0xae
	mov	r0, #2
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r2, #0xae
	mov	r0, #0
	mov	r1, #0xc8
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r2, #0xb2
	mov	r0, #1
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r2, #0xae
	mov	r1, #0xe8
	lsl	r2, #2
	mov	r0, #2
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0xc
	bl	__MapActor_SetAnim
	bl	OvlFunc_899_2009e80
	mov	r0, #0xc0
	mov	r1, #0x90
	mov	r2, #0x90
	mov	r3, #0xb8
	lsl	r3, #18
	lsl	r0, #14
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80935b0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #2
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r0, #0x18
	lsl	r1, #9
	ldr	r2, =0x13333
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0x19
	lsl	r1, #9
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	ldr	r3, =.Lm899_64f8
	ldr	r2, .Lm899_4c48	@ 0
	ldr	r1, =0xc94
	strh	r2, [r3]
	ldr	r0, =OvlFunc_899_200c8c8
	bl	__StartTask
	ldr	r0, =0x1ff
	bl	__ClearFlag
	bl	__CutsceneEnd
	mov	r0, #9
	bl	__PlaySound
	b	.Lm899_4c68

	.align	2, 0
.Lm899_4c48:
	.word	0
	.pool

.Lm899_4c68:
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200cb2c

	.section .data
	.global .Lm899_4f2c
	.global gScript_899__0200d17c
	.global gScript_899__0200d2fc
	.global gScript_899__0200d354
	.global gScript_899__0200d3ac
	.global gScript_899__0200d444
	.global gScript_899__0200d4c8
	.global gScript_899__0200d248
	.global gScript_899__0200d2ac
	.global .Lm899_5538
	.global gScript_899__0200d560
	.global .Lm899_55b0
	.global .Lm899_55d8
	.global .Lm899_5600
	.global gScript_899__0200d650
	.global gScript_899__0200d678
	.global .Lm899_56c8
	.global .Lm899_56f0
	.global .Lm899_5718
	.global gScript_899__0200d768
	.global .Lm899_57a4
	.global .Lm899_57cc
	.global gScript_956__0200d808
	.global gScript_899__0200d830
	.global gScript_899__0200d858
	.global .Lm899_5894
	.global gScript_899__0200d8bc
	.global gOvl_0200d8f8
	.global gOvl_0200da60
	.global gOvl_0200da80
	.global .Lm899_5ab8
	.global .Lm899_5cc8
	.global .Lm899_5e30
	.global .Lm899_61fc
	.global .Lm899_6250
	.global .Lm899_64a8
	.global .Lm899_64c0
	.global .Lm899_64d8

.Lm899_4f2c:
	.incbin "overlays/rom_794ac0/orig.bin", 0x4f2c, (0x517c-0x4f2c)
gScript_899__0200d17c:
	.incbin "overlays/rom_794ac0/orig.bin", 0x517c, (0x5248-0x517c)
gScript_899__0200d248:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5248, (0x52ac-0x5248)
gScript_899__0200d2ac:
	.incbin "overlays/rom_794ac0/orig.bin", 0x52ac, (0x52fc-0x52ac)
gScript_899__0200d2fc:
	.incbin "overlays/rom_794ac0/orig.bin", 0x52fc, (0x5354-0x52fc)
gScript_899__0200d354:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5354, (0x53ac-0x5354)
gScript_899__0200d3ac:
	.incbin "overlays/rom_794ac0/orig.bin", 0x53ac, (0x5444-0x53ac)
gScript_899__0200d444:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5444, (0x54c8-0x5444)
gScript_899__0200d4c8:
	.incbin "overlays/rom_794ac0/orig.bin", 0x54c8, (0x5538-0x54c8)
.Lm899_5538:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5538, (0x5560-0x5538)
gScript_899__0200d560:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5560, (0x55b0-0x5560)
.Lm899_55b0:
	.incbin "overlays/rom_794ac0/orig.bin", 0x55b0, (0x55d8-0x55b0)
.Lm899_55d8:
	.incbin "overlays/rom_794ac0/orig.bin", 0x55d8, (0x5600-0x55d8)
.Lm899_5600:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5600, (0x5650-0x5600)
gScript_899__0200d650:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5650, (0x5678-0x5650)
gScript_899__0200d678:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5678, (0x56c8-0x5678)
.Lm899_56c8:
	.incbin "overlays/rom_794ac0/orig.bin", 0x56c8, (0x56f0-0x56c8)
.Lm899_56f0:
	.incbin "overlays/rom_794ac0/orig.bin", 0x56f0, (0x5718-0x56f0)
.Lm899_5718:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5718, (0x5768-0x5718)
gScript_899__0200d768:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5768, (0x57a4-0x5768)
.Lm899_57a4:
	.incbin "overlays/rom_794ac0/orig.bin", 0x57a4, (0x57cc-0x57a4)
.Lm899_57cc:
	.incbin "overlays/rom_794ac0/orig.bin", 0x57cc, (0x5808-0x57cc)
gScript_956__0200d808:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5808, (0x5830-0x5808)
gScript_899__0200d830:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5830, (0x5858-0x5830)
gScript_899__0200d858:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5858, (0x5894-0x5858)
.Lm899_5894:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5894, (0x58bc-0x5894)
gScript_899__0200d8bc:
	.incbin "overlays/rom_794ac0/orig.bin", 0x58bc, (0x58f8-0x58bc)
gOvl_0200d8f8:
	.incbin "overlays/rom_794ac0/orig.bin", 0x58f8, (0x5a60-0x58f8)
gOvl_0200da60:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5a60, (0x5a80-0x5a60)
gOvl_0200da80:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5a80, (0x5ab8-0x5a80)
.Lm899_5ab8:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5ab8, (0x5cc8-0x5ab8)
.Lm899_5cc8:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5cc8, (0x5e30-0x5cc8)
.Lm899_5e30:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5e30, (0x61fc-0x5e30)
.Lm899_61fc:
	.incbin "overlays/rom_794ac0/orig.bin", 0x61fc, (0x6250-0x61fc)
.Lm899_6250:
	.incbin "overlays/rom_794ac0/orig.bin", 0x6250, (0x64a8-0x6250)
.Lm899_64a8:
	.incbin "overlays/rom_794ac0/orig.bin", 0x64a8, (0x64c0-0x64a8)
.Lm899_64c0:
	.incbin "overlays/rom_794ac0/orig.bin", 0x64c0, (0x64d8-0x64c0)
.Lm899_64d8:
	.incbin "overlays/rom_794ac0/orig.bin", 0x64d8, (0x64f8-0x64d8)

	.section .bss

	.lcomm	.Lm899_64f8, 4
