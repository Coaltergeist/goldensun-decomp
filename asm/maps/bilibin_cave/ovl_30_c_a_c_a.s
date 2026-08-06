	.include "macros.inc"

.thumb_func_start BilibinCave_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x31
	cmp	r2, r3
	bne	.Lm920_b8
	ldr	r0, =.Lm920_c2c
	b	.Lm920_ce
.Lm920_b8:
	ldr	r3, =0x30
	cmp	r2, r3
	bne	.Lm920_c2
	ldr	r0, =.Lm920_c5c
	b	.Lm920_ce
.Lm920_c2:
	ldr	r3, =0x2f
	cmp	r2, r3
	bne	.Lm920_cc
	ldr	r0, =.Lm920_cbc
	b	.Lm920_ce
.Lm920_cc:
	ldr	r0, =.Lm920_c14
.Lm920_ce:
	pop	{r1}
	bx	r1
.func_end BilibinCave_GetActors

.thumb_func_start BilibinCave_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x31
	cmp	r2, r3
	bne	.Lm920_10c
	ldr	r0, =.Lm920_ea8
	b	.Lm920_122
.Lm920_10c:
	ldr	r3, =0x30
	cmp	r2, r3
	bne	.Lm920_116
	ldr	r0, =.Lm920_efc
	b	.Lm920_122
.Lm920_116:
	ldr	r3, =0x2f
	cmp	r2, r3
	bne	.Lm920_120
	ldr	r0, =gOvl_02008f80
	b	.Lm920_122
.Lm920_120:
	ldr	r0, =.Lm920_e9c
.Lm920_122:
	pop	{r1}
	bx	r1
.func_end BilibinCave_GetEvents

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

