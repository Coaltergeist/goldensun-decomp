	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c24f0  @ 0x080c24f0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r11, r1
	mov	r5, r0
	bl	_GetUnit
	ldr	r3, =iwram_3001e74
	mov	r8, r0
	mov	r1, #0xa6
	ldr	r0, [r3]
	lsl	r1, #3
	add	r7, r0, r1
	cmp	r5, #7
	bhi	.Lc251c
	mov	r0, #1
	neg	r0, r0
	b	.Lc2704
.Lc251c:
	ldr	r3, =0x129
	add	r3, r8
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lc252c
	mov	r0, #2
	neg	r0, r0
	b	.Lc2704
.Lc252c:
	mov	r1, #0x94
	lsl	r1, #1
	add	r1, r8
	ldrh	r2, [r0, #0x10]
	ldrb	r3, [r1]
	mov	r6, #0
	mov	r5, #0
	cmp	r2, r3
	beq	.Lc2554
	mov	r4, r1
	mov	r1, r0
	add	r1, #0x10
.Lc2544:
	add	r5, #1
	cmp	r5, #5
	bgt	.Lc2554
	add	r1, #2
	ldrh	r2, [r1]
	ldrb	r3, [r4]
	cmp	r2, r3
	bne	.Lc2544
.Lc2554:
	cmp	r5, #6
	beq	.Lc255a
	mov	r6, r5
.Lc255a:
	ldrh	r3, [r0, #0x3e]
	cmp	r3, #2
	beq	.Lc2572
	ldrh	r3, [r0, #0x3c]
	cmp	r6, r3
	bge	.Lc2568
	strh	r6, [r0, #0x3c]
.Lc2568:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.Lc2574
	mov	r3, #1
	strh	r3, [r0, #0x3e]
.Lc2572:
	ldr	r3, [r7, #8]
.Lc2574:
	add	r3, #1
	str	r3, [r7, #8]
	ldr	r0, =0x173
	bl	_GetFlag
	cmp	r0, #0
	beq	.Lc2584
	b	.Lc2702
.Lc2584:
	mov	r5, #0x94
	lsl	r5, #1
	add	r5, r8
	ldrb	r0, [r5]
	mov	r2, #0xc0
	lsl	r2, #3
	add	r0, r2
	bl	_SetFlag
	ldrb	r0, [r5]
	bl	_GetEnemyInfo
	mov	r3, r11
	mov	r10, r0
	cmp	r3, #0
	beq	.Lc2646
	mov	r6, #0x4c
	add	r6, r10
	ldrh	r3, [r6]
	mov	r9, r6
	cmp	r3, #0
	beq	.Lc25f8
	mov	r6, #0
	mov	r5, #0
	b	.Lc25c8
.Lc25b6:
	bl	Random
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	add	r3, r6, r3
	add	r6, r3, #1
	add	r5, #1
.Lc25c8:
	mov	r1, r8
	ldrb	r0, [r1, #0xf]
	mov	r1, #0xa
	bl	__udivsi3
	lsl	r0, #24
	lsr	r0, #24
	add	r0, #1
	cmp	r5, r0
	blt	.Lc25b6
	mov	r2, r9
	ldrh	r5, [r2]
	lsl	r0, r5, #1
	add	r0, r5
	mov	r1, #0xa
	bl	__divsi3
	cmp	r6, r0
	bge	.Lc25f0
	mov	r6, r0
.Lc25f0:
	ldr	r3, [r7]
	add	r2, r6, r5
	add	r3, r2
	str	r3, [r7]
.Lc25f8:
	mov	r3, #0x52
	add	r3, r10
	mov	r9, r3
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.Lc265e
	mov	r6, #0
	mov	r5, #0
	b	.Lc2618
.Lc260a:
	bl	Random
	lsl	r0, #2
	lsr	r0, #16
	add	r0, r6, r0
	add	r6, r0, #1
	add	r5, #1
.Lc2618:
	mov	r1, r8
	ldrb	r0, [r1, #0xf]
	mov	r1, #0xa
	bl	__udivsi3
	lsl	r0, #24
	lsr	r0, #24
	add	r0, #1
	cmp	r5, r0
	blt	.Lc260a
	mov	r2, r9
	ldrh	r5, [r2]
	lsl	r0, r5, #1
	add	r0, r5
	mov	r1, #0xa
	bl	__divsi3
	cmp	r6, r0
	bge	.Lc2640
	mov	r6, r0
.Lc2640:
	ldr	r3, [r7, #4]
	add	r2, r6, r5
	b	.Lc265a
.Lc2646:
	mov	r3, r10
	add	r3, #0x4c
	ldrh	r2, [r3]
	ldr	r3, [r7]
	add	r3, r2
	str	r3, [r7]
	mov	r3, r10
	add	r3, #0x52
	ldrh	r2, [r3]
	ldr	r3, [r7, #4]
.Lc265a:
	add	r3, r2
	str	r3, [r7, #4]
.Lc265e:
	mov	r3, #0x4e
	add	r3, r10
	mov	r6, #0
	ldrsh	r2, [r3, r6]
	mov	r9, r3
	cmp	r2, #0
	beq	.Lc2702
	mov	r0, r10
	add	r0, #0x50
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	cmp	r3, #0
	beq	.Lc2702
	ldrh	r3, [r7, #0xc]
	mov	r5, #0
	cmp	r3, r2
	beq	.Lc2698
	mov	r1, r7
	mov	r4, r9
	add	r1, #0xc
.Lc2686:
	add	r5, #1
	cmp	r5, #3
	bgt	.Lc2698
	add	r1, #2
	ldrh	r2, [r1]
	mov	r6, #0
	ldrsh	r3, [r4, r6]
	cmp	r2, r3
	bne	.Lc2686
.Lc2698:
	cmp	r5, #4
	bne	.Lc2702
	mov	r2, r11
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r2, #0
	beq	.Lc26a8
	sub	r0, #2
.Lc26a8:
	cmp	r0, #0
	bge	.Lc26ae
	mov	r0, #0
.Lc26ae:
	mov	r5, #0x80
	lsl	r5, #10
	asr	r5, r0
	bl	_RPGRandom
	ldr	r3, =0xffff
	and	r0, r3
	cmp	r5, r0
	ble	.Lc2702
	mov	r6, #0x80
	lsl	r6, #23
	mov	r3, #1
	neg	r3, r3
	mov	r8, r6
	mov	r6, r7
	mov	r10, r3
	mov	r5, #0
	add	r6, #0xc
.Lc26d2:
	ldrh	r0, [r6]
	add	r6, #2
	bl	Func_80c2470
	cmp	r0, r8
	bge	.Lc26e2
	mov	r8, r0
	mov	r10, r5
.Lc26e2:
	add	r5, #1
	cmp	r5, #3
	ble	.Lc26d2
	mov	r2, r9
	mov	r1, #0
	ldrsh	r0, [r2, r1]
	bl	Func_80c2470
	cmp	r0, r8
	ble	.Lc2702
	mov	r6, r10
	mov	r1, r9
	lsl	r3, r6, #1
	ldrh	r2, [r1]
	add	r3, #0xc
	strh	r2, [r7, r3]
.Lc2702:
	mov	r0, #0
.Lc2704:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80c24f0

