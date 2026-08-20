	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_950_200891c
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.Lm950_944
	mov	r0, r5
	bl	__UI_Sanctum
	b	.Lm950_984
.Lm950_944:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm950_95c
	ldr	r0, =0x23bf
	b	.Lm950_968

	.pool_aligned

.Lm950_95c:
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm950_976
	ldr	r0, =0x2231
.Lm950_968:
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm950_984
.Lm950_976:
	ldr	r0, =0x1feb
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
.Lm950_984:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_950_200891c

	.section .data
	.global .Lm950_e00
	.global .Lm950_1040
	.global gScript_886__02009310
	.global .Lm950_1670
	.global .Lm950_19d0
	.global .Lm950_1dcc
	.global gOvl_02008bb4

	.incbin "overlays/rom_7d5838/orig.bin", 0xa90, (0xbb4-0xa90)
gOvl_02008bb4:
	.incbin "overlays/rom_7d5838/orig.bin", 0xbb4, (0xdac-0xbb4)
	.global gOvl_02008dac
gOvl_02008dac:
	.incbin "overlays/rom_7d5838/orig.bin", 0xdac, (0xe00-0xdac)
.Lm950_e00:
	.incbin "overlays/rom_7d5838/orig.bin", 0xe00, (0x1040-0xe00)
.Lm950_1040:
	.incbin "overlays/rom_7d5838/orig.bin", 0x1040, (0x1310-0x1040)
gScript_886__02009310:
	.incbin "overlays/rom_7d5838/orig.bin", 0x1310, (0x1670-0x1310)
.Lm950_1670:
	.incbin "overlays/rom_7d5838/orig.bin", 0x1670, (0x19d0-0x1670)
.Lm950_19d0:
	.incbin "overlays/rom_7d5838/orig.bin", 0x19d0, (0x1dcc-0x19d0)
.Lm950_1dcc:
	.incbin "overlays/rom_7d5838/orig.bin", 0x1dcc
