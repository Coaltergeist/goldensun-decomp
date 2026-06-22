	.include "macros.inc"

.thumb_func_start OvlFunc_929_2008524
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1a64
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xa
	mov	r2, #0
	mov	r0, #9
	bl	__Func_809280c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_929_2008524

.thumb_func_start OvlFunc_929_2008570
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #8
	bne	.L586
	ldr	r0, =.Ld4c
	b	.L588
.L586:
	ldr	r0, =.La28
.L588:
	pop	{r1}
	bx	r1
.func_end OvlFunc_929_2008570

.thumb_func_start OvlFunc_929_2008598
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	ldr	r3, =gState
	sub	r2, #0x47
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #4
	beq	.L5ba
	cmp	r3, #7
	bne	.L5c4
.L5ba:
	mov	r0, #0xf8
	lsl	r0, #16
	ldr	r2, =0x1a10000
	mov	r1, #0
	b	.L5e2
.L5c4:
	cmp	r3, #6
	bne	.L5ea
	mov	r5, #0x8e
	lsl	r5, #18
	mov	r0, #0xe6
	mov	r1, #0
	mov	r2, r5
	mov	r3, #0x14
	lsl	r0, #17
	bl	OvlFunc_common0_70
	mov	r0, #0xf2
	lsl	r0, #17
	mov	r1, #0
	mov	r2, r5
.L5e2:
	mov	r3, #0x14
	bl	OvlFunc_common0_70
	b	.L5fc
.L5ea:
	cmp	r3, #8
	bne	.L5fc
	ldr	r0, =0x12f
	bl	__ClearFlag
	mov	r0, #0xa
	mov	r1, #6
	bl	__MapActor_SetAnim
.L5fc:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_929_2008598

	.section .data
	.global .L890
	.global .L9c8
	.global gOvl_02008778

gOvl_02008778:
	.incbin "overlays/rom_7b7790/orig.bin", 0x778, (0x868-0x778)
	.global gOvl_02008868
gOvl_02008868:
	.incbin "overlays/rom_7b7790/orig.bin", 0x868, (0x890-0x868)
.L890:
	.incbin "overlays/rom_7b7790/orig.bin", 0x890, (0x9c8-0x890)
.L9c8:
	.incbin "overlays/rom_7b7790/orig.bin", 0x9c8, (0xa28-0x9c8)
.La28:
	.incbin "overlays/rom_7b7790/orig.bin", 0xa28, (0xd4c-0xa28)
.Ld4c:
	.incbin "overlays/rom_7b7790/orig.bin", 0xd4c
