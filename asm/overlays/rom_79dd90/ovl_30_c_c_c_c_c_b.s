	.include "macros.inc"

.thumb_func_start OvlFunc_910_2008974
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
	bne	.L9d8
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #14
	add	r3, r2
	str	r3, [r7, #0xc]
.L9d8:
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
	ldr	r3, =OvlFunc_910_200890c
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
.func_end OvlFunc_910_2008974

	.section .data
	.global .Lc7c
	.global .Ld24
	.global .Ld30
	.global gOvl_02008c08

.Lbd4:
	.incbin "overlays/rom_79dd90/orig.bin", 0xbd4, (0xbf4-0xbd4)
	.global gScript_910__02008bf4
gScript_910__02008bf4:
	.incbin "overlays/rom_79dd90/orig.bin", 0xbf4, (0xc08-0xbf4)
gOvl_02008c08:
	.incbin "overlays/rom_79dd90/orig.bin", 0xc08, (0xc50-0xc08)
	.global gOvl_02008c50
gOvl_02008c50:
	.incbin "overlays/rom_79dd90/orig.bin", 0xc50, (0xc64-0xc50)
	.global gScript_889__02008c64
gScript_889__02008c64:
	.incbin "overlays/rom_79dd90/orig.bin", 0xc64, (0xc7c-0xc64)
.Lc7c:
	.incbin "overlays/rom_79dd90/orig.bin", 0xc7c, (0xd24-0xc7c)
.Ld24:
	.incbin "overlays/rom_79dd90/orig.bin", 0xd24, (0xd30-0xd24)
.Ld30:
	.incbin "overlays/rom_79dd90/orig.bin", 0xd30
