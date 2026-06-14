	.include "macros.inc"

.thumb_func_start OvlFunc_920_20080a0
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x31
	cmp	r2, r3
	bne	.Lb8
	ldr	r0, =.Lc2c
	b	.Lce
.Lb8:
	ldr	r3, =0x30
	cmp	r2, r3
	bne	.Lc2
	ldr	r0, =.Lc5c
	b	.Lce
.Lc2:
	ldr	r3, =0x2f
	cmp	r2, r3
	bne	.Lcc
	ldr	r0, =.Lcbc
	b	.Lce
.Lcc:
	ldr	r0, =.Lc14
.Lce:
	pop	{r1}
	bx	r1
.func_end OvlFunc_920_20080a0

.thumb_func_start OvlFunc_920_20080f4
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x31
	cmp	r2, r3
	bne	.L10c
	ldr	r0, =.Lea8
	b	.L122
.L10c:
	ldr	r3, =0x30
	cmp	r2, r3
	bne	.L116
	ldr	r0, =.Lefc
	b	.L122
.L116:
	ldr	r3, =0x2f
	cmp	r2, r3
	bne	.L120
	ldr	r0, =gOvl_02008f80
	b	.L122
.L120:
	ldr	r0, =.Le9c
.L122:
	pop	{r1}
	bx	r1
.func_end OvlFunc_920_20080f4

.thumb_func_start OvlFunc_920_2008148
	push	{lr}
	sub	sp, #8
	mov	r3, #0x15
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #1
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_2008148

.thumb_func_start OvlFunc_920_2008168
	push	{lr}
	sub	sp, #8
	mov	r3, #0x15
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_2008168

.thumb_func_start OvlFunc_920_2008188
	push	{lr}
	sub	sp, #8
	mov	r3, #1
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6f
	mov	r1, #0x25
	mov	r2, #0x61
	mov	r3, #0x15
	bl	__CopyMapTiles
	mov	r3, #0x20
	mov	r2, #0x18
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x26
	mov	r2, #3
	mov	r3, #2
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_2008188

.thumb_func_start OvlFunc_920_20081bc
	push	{lr}
	sub	sp, #8
	mov	r3, #1
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x5f
	mov	r1, #0x15
	mov	r2, #0x61
	mov	r3, #0x15
	bl	__CopyMapTiles
	mov	r3, #0x20
	mov	r2, #0x19
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x26
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_20081bc

