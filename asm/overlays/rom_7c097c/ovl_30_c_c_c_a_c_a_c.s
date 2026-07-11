	.include "macros.inc"

.thumb_func_start OvlFunc_936_200964c
	push	{lr}
	ldr	r0, =0x87a
	bl	__SetFlag
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x63
	cmp	r2, r3
	bne	.L166c
	bl	OvlFunc_936_20096bc
	b	.L169a
.L166c:
	ldr	r3, =0x66
	cmp	r2, r3
	bne	.L1678
	bl	OvlFunc_936_20097e8
	b	.L169a
.L1678:
	ldr	r3, =0x99
	cmp	r2, r3
	bne	.L1684
	bl	OvlFunc_936_2009858
	b	.L169a
.L1684:
	ldr	r3, =0x9b
	cmp	r2, r3
	bne	.L1690
	bl	OvlFunc_936_20098a4
	b	.L169a
.L1690:
	ldr	r3, =0x9c
	cmp	r2, r3
	bne	.L169a
	bl	OvlFunc_936_2009930
.L169a:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_936_200964c

.thumb_func_start OvlFunc_936_20096bc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.L16e4
	ldr	r0, =0x321
	bl	__SetFlag
	ldr	r0, =0x913
	bl	__SetFlag
	ldr	r0, =0x912
	bl	__SetFlag
	ldr	r0, =0x915
	bl	__SetFlag
.L16e4:
	mov	r0, #0x94
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L16f6
	ldr	r0, =0x321
	bl	__SetFlag
.L16f6:
	ldr	r3, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xe
	bne	.L1714
	mov	r1, #0xd4
	mov	r2, #0xb0
	mov	r0, #0x19
	lsl	r1, #17
	lsl	r2, #15
	bl	__MapActor_SetPos
.L1714:
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_8092950
	ldr	r0, =0x916
	bl	__GetFlag
	mov	r8, r0
	cmp	r0, #0
	beq	.L1734
	mov	r0, #0x1a
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.L17bc
.L1734:
	mov	r0, #0x1a
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
	mov	r3, r6
	mov	r1, r8
	add	r3, #0x27
	strb	r2, [r6, #9]
	strb	r1, [r3]
	mov	r3, r7
	mov	r2, #1
	add	r3, #0x5c
	strb	r2, [r3]
	sub	r3, #7
	strb	r1, [r3]
	mov	r3, #0xa0
	lsl	r3, #12
	str	r3, [r7, #0xc]
	mov	r3, r7
	add	r3, #0x61
	mov	r1, #0xc1
	strb	r2, [r3]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__galloc_iwram
	mov	r5, r0
	mov	r0, #0xb5
	bl	__LoadItemIcon
	mov	r2, #0x80
	lsl	r2, #3
	add	r5, r2
	mov	r1, #0x80
	mov	r2, r5
	ldrb	r0, [r6, #0x1c]
	bl	__UploadSpriteGFX
	mov	r0, #0x11
	bl	__gfree
	mov	r3, r8
	str	r3, [r7, #0x30]
	ldr	r3, [r7, #8]
	str	r3, [r7, #0x38]
	ldr	r3, [r7, #0xc]
	str	r3, [r7, #0x3c]
	ldr	r3, [r7, #0x10]
	mov	r1, #0xc8
	str	r3, [r7, #0x40]
	ldr	r0, =OvlFunc_936_200b90c
	lsl	r1, #4
	bl	__StartTask
.L17bc:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_20096bc

