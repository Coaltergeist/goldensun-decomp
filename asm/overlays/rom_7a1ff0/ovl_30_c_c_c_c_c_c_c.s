	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_914_2008cb4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r6, [r7, #0x50]
	mov	r2, #0xd
	ldrb	r3, [r6, #9]
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	ldrb	r1, [r6, #5]
	orr	r2, r3
	mov	r3, #0x21
	neg	r3, r3
	and	r3, r1
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r2, r3
	strb	r2, [r6, #9]
	mov	r2, #0
	mov	r8, r2
	mov	r3, r6
	add	r3, #0x27
	mov	r2, r8
	strb	r2, [r3]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, #0x5c
	add	r3, r7
	mov	r2, r8
	strb	r2, [r3]
	mov	r10, r3
	mov	r3, r7
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Ld18
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #14
	add	r3, r2
	str	r3, [r7, #0xc]
.Ld18:
	mov	r1, r7
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #1
	strb	r3, [r1]
	mov	r9, r2
	mov	r3, r7
	mov	r2, r9
	add	r3, #0x61
	mov	r1, #0xc1
	strb	r2, [r3]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__galloc_iwram
	mov	r5, r0
	mov	r0, #0xb5
	bl	__LoadItemIcon
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r6, #0x1c]
	bl	__UploadSpriteGFX
	mov	r0, #0x11
	bl	__gfree
	ldr	r3, [r7, #8]
	str	r3, [r7, #0x38]
	ldr	r3, [r7, #0xc]
	mov	r2, r8
	str	r2, [r7, #0x30]
	str	r3, [r7, #0x3c]
	mov	r2, r10
	mov	r3, r9
	strb	r3, [r2]
	ldr	r3, =OvlFunc_914_2008c4c
	str	r3, [r7, #0x6c]
	mov	r3, r7
	add	r3, #0x56
	mov	r2, r8
	strb	r2, [r3]
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_914_2008cb4

	.section .data
	.global .Lec8
	.global .Lf08
	.global .Lf20
	.global gOvl_02008f80

.Lec8:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0xec8, (0xf08-0xec8)
.Lf08:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0xf08, (0xf20-0xf08)
.Lf20:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0xf20, (0xf80-0xf20)
gOvl_02008f80:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0xf80, (0xfe0-0xf80)
	.global gOvl_02008fe0
gOvl_02008fe0:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0xfe0, (0xff0-0xfe0)
	.global gOvl_02008ff0
gOvl_02008ff0:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0xff0, (0x1068-0xff0)
	.global gOvl_02009068
gOvl_02009068:
	.incbin "overlays/rom_7a1ff0/orig.bin", 0x1068

	.section .bss
	.global .L10b0
	.global .L17b0
	.global .L17b0
	.global .L10b0

	.lcomm	.Lunused_10a8, 4
	.lcomm	.Lunused_10ac, 4
	.lcomm	.L10b0, 0x700
	.lcomm	.L17b0, 0x700
