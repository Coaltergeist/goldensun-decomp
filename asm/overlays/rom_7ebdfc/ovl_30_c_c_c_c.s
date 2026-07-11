	.include "macros.inc"

.thumb_func_start OvlFunc_961_200822c
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x5a
	bne	.L244
	ldr	r0, =0x96f
	bl	__SetFlag
.L244:
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.L270
	bl	OvlFunc_961_20080f8
	mov	r0, #0x10
	mov	r1, #4
	bl	__MapActor_SetAnim
.L270:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_961_200822c

	.section .data
	.global .L5d0
	.global .L5e8
	.global .L5fe
	.global .L614
	.global .L758
	.global .L3f0
	.global .L4e0
	.global gOvl_020082f0
	.global MapEntrance_ARRAY_961__020082f0
gOvl_020082f0:
MapEntrance_ARRAY_961__020082f0:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x2f0, (0x3c8-0x2f0)
	.global gOvl_020083c8
gOvl_020083c8:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x3c8, (0x3f0-0x3c8)
.L3f0:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x3f0, (0x4e0-0x3f0)
.L4e0:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x4e0, (0x5d0-0x4e0)
.L5d0:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x5d0, (0x5e8-0x5d0)
.L5e8:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x5e8, (0x5fe-0x5e8)
.L5fe:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x5fe, (0x614-0x5fe)
.L614:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x614, (0x758-0x614)
.L758:
	.incbin "overlays/rom_7ebdfc/orig.bin", 0x758
