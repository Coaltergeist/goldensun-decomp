	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_887_2008094
	push	{lr}
	ldr	r0, =0x834
	bl	__Func_8079338
	cmp	r0, #0
	beq	.La4
	ldr	r0, =gOvl_0200a1dc
	b	.La6
.La4:
	ldr	r0, =.L2198
.La6:
	pop	{r1}
	bx	r1
.func_end OvlFunc_887_2008094

.thumb_func_start OvlFunc_887_20080b8
	push	{r5, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x13
	bne	.Lce
	ldr	r0, =.L2518
	b	.Lf4
.Lce:
	ldr	r0, =0x87a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Ldc
	ldr	r5, =.L2410
	b	.Lec
.Ldc:
	ldr	r0, =0x815
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lea
	ldr	r5, =.L2338
	b	.Lec
.Lea:
	ldr	r5, =.L2218
.Lec:
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
.Lf4:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_887_20080b8

.thumb_func_start OvlFunc_887_2008118
	push	{r5, r6, lr}
	ldr	r5, =0x22b9
	mov	r6, r0
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L146
	mov	r0, #0xa
	bl	__Func_809163c
	add	r0, r5, #1
	bl	__Func_8092b94
	b	.L14c
.L146:
	add	r0, r5, #2
	bl	__Func_8092b94
.L14c:
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2008118

.thumb_func_start OvlFunc_887_2008160
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x13
	bne	.L186
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L182
	ldr	r0, =.L2c5c
	b	.L1b2
.L182:
	ldr	r0, =.L2b9c
	b	.L1b2
.L186:
	ldr	r0, =0x834
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L194
	ldr	r0, =.L25a8
	b	.L1b2
.L194:
	ldr	r0, =0x87a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1a2
	ldr	r0, =.L2980
	b	.L1b2
.L1a2:
	ldr	r0, =0x815
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1b0
	ldr	r0, =.L2800
	b	.L1b2
.L1b0:
	ldr	r0, =.L26b0
.L1b2:
	pop	{r1}
	bx	r1
.func_end OvlFunc_887_2008160

.thumb_func_start OvlFunc_887_20081e0
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_809259c
	mov	r0, #0x1e
	bl	__Func_809163c
	ldr	r0, =0xf5b
	bl	__Func_8092b94
	mov	r0, #0
	mov	r1, #0x10
	mov	r2, #0xa
	bl	__Func_8092848
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #6
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r2, #0
	mov	r0, #0x10
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0x10
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L25a
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L25a:
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #4
	bl	__Func_8093040
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_20081e0

.thumb_func_start OvlFunc_887_2008284
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0xe
	bl	__Func_809280c
	ldr	r0, =0x11aa
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2b8
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	b	.L2d0
.L2b8:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8093054
.L2d0:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2008284

