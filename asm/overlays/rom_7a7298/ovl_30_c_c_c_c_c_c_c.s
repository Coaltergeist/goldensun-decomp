	.include "macros.inc"

.thumb_func_start OvlFunc_921_20099e8
	push	{r5, r6, r7, lr}
	bl	__CutsceneStart
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r2, #0xc8
	ldr	r1, =0x2b2
	mov	r0, #0
	bl	__Func_809218c
	bl	__Func_8093554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r1, =0x1999
	ldr	r0, =0xcccc
	bl	__Func_80933d4
	mov	r2, #0xa4
	ldr	r0, =0x2b20000
	mov	r1, #0
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	ldr	r7, =iwram_3001ebc
	mov	r3, #0xe0
	ldr	r1, [r7]
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x30
	str	r3, [r2]
	bl	__MapTransitionIn
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #3
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1a74
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.L1a74:
	mov	r0, #3
	ldr	r1, =0x2a1
	mov	r2, #0xb7
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x165b
	bl	__MessageID
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xe0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x14
	bl	__MapActor_Surprise
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x4014
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	ldr	r0, =0x2003
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x13
	bl	__MapActor_Surprise
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xf0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x4014
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #3
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0x13
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x3c
	mov	r0, #0x14
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0x50
	bl	__Func_8092adc
	ldr	r0, =0x2003
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xf0
	mov	r0, #0x14
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #0x13
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0x13
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x14
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0x14
	bl	__MapActor_SetSpeed
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r1, #0xa4
	strb	r3, [r0]
	lsl	r1, #2
	mov	r2, #0xa6
	mov	r0, #0x14
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xa
	ldr	r0, =0x4014
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	ldr	r0, =0x2003
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0xa
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0x13
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x14
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r2, #0x14
	ldr	r0, =0x2003
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x13
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0x14
	ldr	r0, =0x4014
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x2003
	mov	r1, #0
	mov	r2, #0x50
	bl	__Func_8093040
	mov	r0, #0x13
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x3c
	mov	r0, #0x14
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r0, #0x13
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x14
	mov	r1, #4
	bl	__MapActor_SetAnim
	ldr	r0, =0x4014
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0x28
	ldr	r0, =0x2003
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x13
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x4014
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	b	.L1e2c

	.pool_aligned

.L1e2c:
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	ldr	r0, =0x2003
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x13
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r0, =0x4003
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xac
	mov	r0, #3
	lsl	r1, #2
	mov	r2, #0xc8
	bl	__Func_80921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, #0xa1
	and	r5, r3
	lsl	r1, #2
	mov	r2, #0xa6
	strb	r5, [r0]
	mov	r0, #0x14
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r6
	strb	r3, [r0]
	ldr	r3, [r7]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	ldr	r0, =0x82e
	bl	__SetFlag
	ldr	r0, =0x82d
	bl	__ClearFlag
	bl	__CutsceneEnd
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_20099e8

.section .text.after_9f24, "ax", %progbits

	.section .data
	.global .L3190
	.global .L31a8
	.global L3190
	.global L31a8
	.global .L31c0
	.global .L31d6
	.global gScript_921__0200a4f4
	.global .L2508
	.global gScript_921__0200a564
	.global .L31c0
	.global .L31d6
	.global .L29e0
	.global gOvl_0200aa58
	.global .L2ad0
	.global .L2c80
	.global .L2db8
	.global .L2798
	.global .L28a0

	.global .L23f0
.L23f0:
	.incbin "overlays/rom_7a7298/orig.bin", 0x23f0, (0x2430-0x23f0)
	.global .L2430
.L2430:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2430, (0x24f4-0x2430)
gScript_921__0200a4f4:
	.incbin "overlays/rom_7a7298/orig.bin", 0x24f4, (0x2508-0x24f4)
.L2508:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2508, (0x2564-0x2508)
gScript_921__0200a564:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2564, (0x25ec-0x2564)
	.global gScript_921__0200a5ec
gScript_921__0200a5ec:
	.incbin "overlays/rom_7a7298/orig.bin", 0x25ec, (0x264c-0x25ec)
	.global gScript_921__0200a64c
gScript_921__0200a64c:
	.incbin "overlays/rom_7a7298/orig.bin", 0x264c, (0x2670-0x264c)
	.global gScript_921__0200a670
gScript_921__0200a670:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2670, (0x26e0-0x2670)
	.global gScript_921__0200a6e0
gScript_921__0200a6e0:
	.incbin "overlays/rom_7a7298/orig.bin", 0x26e0, (0x274c-0x26e0)
	.global gScript_921__0200a74c
gScript_921__0200a74c:
	.incbin "overlays/rom_7a7298/orig.bin", 0x274c, (0x2760-0x274c)
	.global gScript_921__0200a760
gScript_921__0200a760:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2760, (0x2798-0x2760)
.L2798:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2798, (0x28a0-0x2798)
.L28a0:
	.incbin "overlays/rom_7a7298/orig.bin", 0x28a0, (0x2990-0x28a0)
	.global gOvl_0200a990
gOvl_0200a990:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2990, (0x29e0-0x2990)
.L29e0:
	.incbin "overlays/rom_7a7298/orig.bin", 0x29e0, (0x2a58-0x29e0)
gOvl_0200aa58:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2a58, (0x2ad0-0x2a58)
.L2ad0:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2ad0, (0x2c80-0x2ad0)
.L2c80:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2c80, (0x2db8-0x2c80)
.L2db8:
	.incbin "overlays/rom_7a7298/orig.bin", 0x2db8, (0x3190-0x2db8)
.L3190:
L3190:
	.incbin "overlays/rom_7a7298/orig.bin", 0x3190, (0x31a8-0x3190)
.L31a8:
L31a8:
	.incbin "overlays/rom_7a7298/orig.bin", 0x31a8, (0x31c0-0x31a8)
.L31c0:
	.incbin "overlays/rom_7a7298/orig.bin", 0x31c0, (0x31d6-0x31c0)
.L31d6:
	.incbin "overlays/rom_7a7298/orig.bin", 0x31d6

	.section .bss
	.global .L31f0

	.lcomm	.L31f0, 0xc
