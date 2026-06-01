	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_974_200803c
	ldr	r0, =.L13f8
	bx	lr
.func_end OvlFunc_974_200803c

.thumb_func_start OvlFunc_974_2008044
	ldr	r0, =.L13fc
	bx	lr
.func_end OvlFunc_974_2008044

.thumb_func_start OvlFunc_974_200804c
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_8019a54
	mov	r0, r5
	mov	r1, #5
	mov	r2, #0
	mov	r3, #0x22
	bl	__Func_8017658
	b	.L68
.L62:
	mov	r0, #1
	bl	__Func_80030f8
.L68:
	bl	__Func_8017364
	cmp	r0, #0
	beq	.L62
	mov	r0, #1
	bl	__Func_80030f8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_974_200804c

.thumb_func_start OvlFunc_974_200807c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =ewram_2000240
	mov	r2, #0x83
	lsl	r2, #2
	add	r3, r2
	mov	r2, #2
	strb	r2, [r3]
	mov	r6, r0
	mov	r8, r1
	mov	r0, #0x7d
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	__Func_8019da8
	mov	r7, #0
	mov	r10, r0
	cmp	r7, r8
	bge	.L10a
	ldr	r5, =iwram_3001ae8
.Laa:
	mov	r0, #1
	mov	r1, #1
	bl	__Func_8019908
	mov	r0, #0x8d
	mov	r1, #2
	bl	__Func_8019908
	ldr	r0, =0x1e240
	mov	r1, #5
	bl	__Func_8019908
	mov	r0, r6
	bl	OvlFunc_974_200804c
	b	.Ld6
.Lca:
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L104
	mov	r0, #1
	bl	__Func_80030f8
.Ld6:
	ldr	r3, [r5]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.L10a
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.Lf4
	ldr	r3, [r5]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lf8
.Lf4:
	add	r6, #1
	b	.L104
.Lf8:
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lca
	sub	r6, #1
.L104:
	add	r7, #1
	cmp	r7, r8
	blt	.Laa
.L10a:
	bl	__Func_8019a54
	mov	r0, r10
	mov	r1, #2
	bl	__Func_8016418
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_974_200807c

.thumb_func_start OvlFunc_974_2008130
	push	{lr}
	ldr	r0, =0xc9b
	ldr	r1, =0xcc6
	sub	r1, r0
	bl	OvlFunc_974_200807c
	pop	{r0}
	bx	r0
.func_end OvlFunc_974_2008130

.thumb_func_start OvlFunc_974_2008148
	push	{lr}
	ldr	r0, =0xcc6
	ldr	r1, =0xc9b
	sub	r1, r0, r1
	bl	OvlFunc_974_200807c
	pop	{r0}
	bx	r0
.func_end OvlFunc_974_2008148

.thumb_func_start OvlFunc_974_2008160
	push	{lr}
	ldr	r3, =0xc9b
	ldr	r1, =0xcc6
	ldr	r0, =0xcf1
	sub	r1, r3
	bl	OvlFunc_974_200807c
	pop	{r0}
	bx	r0
.func_end OvlFunc_974_2008160

.thumb_func_start OvlFunc_974_2008180
	push	{lr}
	ldr	r0, =0xd21
	ldr	r1, =0xd4c
	sub	r1, r0
	bl	OvlFunc_974_200807c
	pop	{r0}
	bx	r0
.func_end OvlFunc_974_2008180

.thumb_func_start OvlFunc_974_2008198
	push	{lr}
	ldr	r3, =0xc9b
	ldr	r1, =0xcc6
	ldr	r0, =0xd4c
	sub	r1, r3
	bl	OvlFunc_974_200807c
	pop	{r0}
	bx	r0
.func_end OvlFunc_974_2008198

.thumb_func_start OvlFunc_974_20081b8
	push	{lr}
	ldr	r3, =0xc9b
	ldr	r1, =0xcc6
	ldr	r0, =0xd77
	sub	r1, r3
	bl	OvlFunc_974_200807c
	pop	{r0}
	bx	r0
.func_end OvlFunc_974_20081b8

.thumb_func_start OvlFunc_974_20081d8
	push	{lr}
	ldr	r3, =0xc9b
	ldr	r1, =0xcc6
	ldr	r0, =0xda2
	sub	r1, r3
	bl	OvlFunc_974_200807c
	pop	{r0}
	bx	r0
.func_end OvlFunc_974_20081d8

.thumb_func_start OvlFunc_974_20081f8
	push	{lr}
	mov	r0, #1
	bl	__Func_80b0444
	pop	{r0}
	bx	r0
.func_end OvlFunc_974_20081f8

