	.include "macros.inc"

.thumb_func_start OvlFunc_950_2008898
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_80916b0
	ldr	r0, =0x23a8
	bl	__Func_8092b94
	mov	r2, #0x28
	mov	r0, #0x1f
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_950_2008898

.thumb_func_start OvlFunc_950_20088cc
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__Func_80916b0
	ldr	r5, =0x23ac
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L8fe
	mov	r0, #0xa
	bl	__Func_809163c
	add	r0, r5, #1
	bl	__Func_8092b94
	b	.L904
.L8fe:
	add	r0, r5, #2
	bl	__Func_8092b94
.L904:
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_950_20088cc

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
	bne	.L944
	mov	r0, r5
	bl	__Func_80b29a8
	b	.L984
.L944:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L95c
	ldr	r0, =0x23bf
	b	.L968

	.pool_aligned

.L95c:
	ldr	r0, =0x962
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L976
	ldr	r0, =0x2231
.L968:
	bl	__Func_8092b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	b	.L984
.L976:
	ldr	r0, =0x1feb
	bl	__Func_8092b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
.L984:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_950_200891c

	.section .data
	.global .Le00
	.global .L1040
	.global .L1310
	.global .L1670
	.global .L19d0
	.global .L1dcc
	.global .Lbb4

	.incbin "overlays/rom_7d5838/orig.bin", 0xa90, (0xbb4-0xa90)
.Lbb4:
	.incbin "overlays/rom_7d5838/orig.bin", 0xbb4, (0xdac-0xbb4)
.Ldac:
	.incbin "overlays/rom_7d5838/orig.bin", 0xdac, (0xe00-0xdac)
.Le00:
	.incbin "overlays/rom_7d5838/orig.bin", 0xe00, (0x1040-0xe00)
.L1040:
	.incbin "overlays/rom_7d5838/orig.bin", 0x1040, (0x1310-0x1040)
.L1310:
	.incbin "overlays/rom_7d5838/orig.bin", 0x1310, (0x1670-0x1310)
.L1670:
	.incbin "overlays/rom_7d5838/orig.bin", 0x1670, (0x19d0-0x1670)
.L19d0:
	.incbin "overlays/rom_7d5838/orig.bin", 0x19d0, (0x1dcc-0x19d0)
.L1dcc:
	.incbin "overlays/rom_7d5838/orig.bin", 0x1dcc
