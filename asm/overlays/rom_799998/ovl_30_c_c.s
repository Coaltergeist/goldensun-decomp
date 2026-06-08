	.include "macros.inc"

.thumb_func_start OvlFunc_904_2008054
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x44
	str	r3, [r2]
	sub	r3, #0x3c
	add	r2, r1, r3
	mov	r0, #0xc0
	mov	r3, #0x18
	str	r3, [r2]
	lsl	r0, #2
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lc8
	mov	r1, #0xd8
	mov	r2, #0x88
	lsl	r2, #16
	mov	r0, #8
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r1, #2
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x59
	mov	r3, #0xb
	mov	r2, #6
	strb	r5, [r0]
	mov	r1, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xb
	mov	r2, #5
	mov	r3, #5
	bl	__Func_8010704
.Lc8:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_904_2008054

	.section .data
	.global gOvl_02008108
	.global MapEntrance_ARRAY_904__02008108
gOvl_02008108:
MapEntrance_ARRAY_904__02008108:
	.incbin "overlays/rom_799998/orig.bin", 0x108, (0x180-0x108)
	.global gOvl_02008180
gOvl_02008180:
	.incbin "overlays/rom_799998/orig.bin", 0x180, (0x194-0x180)
	.global gOvl_02008194
gOvl_02008194:
	.incbin "overlays/rom_799998/orig.bin", 0x194, (0x1c4-0x194)
	.global gOvl_020081c4
gOvl_020081c4:
	.incbin "overlays/rom_799998/orig.bin", 0x1c4
