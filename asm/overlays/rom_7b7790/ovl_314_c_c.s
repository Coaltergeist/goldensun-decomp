	.include "macros.inc"

.thumb_func_start OvlFunc_929_2008328
	push	{r5, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #8
	bne	.L33e
	ldr	r0, =.L9c8
	b	.L348
.L33e:
	ldr	r5, =.L890
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
.L348:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_929_2008328

.thumb_func_start OvlFunc_929_200835c
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L37e
	mov	r0, #0x10
	mov	r1, #0xe
	bl	__Func_80b0278
	b	.L39e
.L37e:
	ldr	r0, =0x895
	bl	__GetFlag
	cmp	r0, #0
	bne	.L390
	ldr	r0, =0x1817
	bl	__Func_8092b94
	b	.L396
.L390:
	ldr	r0, =0x1a46
	bl	__Func_8092b94
.L396:
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
.L39e:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_929_200835c

.thumb_func_start OvlFunc_929_20083bc
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L3de
	mov	r0, #0x11
	mov	r1, #0xf
	bl	__Func_80b0278
	b	.L3fe
.L3de:
	ldr	r0, =0x895
	bl	__GetFlag
	cmp	r0, #0
	bne	.L3f0
	ldr	r0, =0x1819
	bl	__Func_8092b94
	b	.L3f6
.L3f0:
	ldr	r0, =0x1a48
	bl	__Func_8092b94
.L3f6:
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage
.L3fe:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_929_20083bc

.thumb_func_start OvlFunc_929_200841c
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L43e
	mov	r0, #0x12
	mov	r1, #0x10
	bl	__Func_80b0278
	b	.L466
.L43e:
	ldr	r0, =0x895
	bl	__GetFlag
	cmp	r0, #0
	bne	.L458
	ldr	r0, =0x181b
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__ActorMessage
	b	.L466
.L458:
	ldr	r0, =0x1a4a
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093054
.L466:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_929_200841c

.thumb_func_start OvlFunc_929_2008484
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffffe000
	add	r5, r3
	mov	r3, #0xc0
	lsl	r3, #8
	cmp	r5, r3
	bls	.L4a8
	mov	r0, #5
	mov	r1, #0x11
	bl	__Func_80b3284
	b	.L4c8
.L4a8:
	ldr	r0, =0x895
	bl	__GetFlag
	cmp	r0, #0
	bne	.L4ba
	ldr	r0, =0x181d
	bl	__Func_8092b94
	b	.L4c0
.L4ba:
	ldr	r0, =0x1a4e
	bl	__Func_8092b94
.L4c0:
	mov	r0, #0x11
	mov	r1, #0
	bl	__ActorMessage
.L4c8:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_929_2008484

.thumb_func_start OvlFunc_929_20084e4
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1a3a
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_929_20084e4

.thumb_func_start OvlFunc_929_2008504
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1a40
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_929_2008504

.thumb_func_start OvlFunc_929_2008524
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1a64
	bl	__Func_8092b94
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
	bl	__Func_8091750
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
