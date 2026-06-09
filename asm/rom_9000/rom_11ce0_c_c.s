	.include "macros.inc"

.thumb_func_start TestCollision  @ 0x080120dc
	push	{r5, r6, r7, lr}
	mov	r3, #0xa
	ldrsh	r6, [r1, r3]
	ldr	r3, =iwram_3001e70
	mov	r2, #2
	ldrsh	r5, [r1, r2]
	ldr	r1, [r3]
	mov	r7, r0
	mov	r0, #0
	cmp	r1, #0
	beq	.L1217c
	mov	r2, r7
	add	r2, #0x22
	ldrb	r3, [r2]
	cmp	r3, #2
	bhi	.L1210e
	mov	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	mov	r2, #0x98
	lsl	r2, #1
	lsl	r3, #4
	add	r3, r2
	ldr	r2, [r1, r3]
	b	.L12110
.L1210e:
	ldr	r2, =gBuffer
.L12110:
	mov	r3, r5
	cmp	r5, #0
	bge	.L12118
	add	r3, #0xf
.L12118:
	asr	r1, r3, #4
	mov	r3, r6
	cmp	r6, #0
	bge	.L12122
	add	r3, #0xf
.L12122:
	asr	r3, #4
	lsl	r3, #7
	add	r3, r1, r3
	lsl	r3, #2
	add	r2, r3
	ldrb	r3, [r2, #2]
	mov	r0, #2
	cmp	r3, #0xff
	beq	.L1217c
	ldrb	r1, [r2, #3]
	ldr	r3, =ewram_202c000
	lsl	r1, #2
	add	r0, r1, r3
	mov	r2, #0xf
	ldrb	r0, [r0]
	mov	r3, r2
	and	r3, r0
	lsl	r3, #2
	mov	r12, r3
	ldr	r4, =.L134fc
	ldr	r3, =ewram_202c001
	and	r5, r2
	and	r6, r2
	mov	r2, r12
	add	r0, r1, r3
	ldr	r3, [r4, r2]
	mov	r1, r5
	mov	r2, r6
	bl	_call_via_r3
	ldr	r3, [r7, #0x14]
	sub	r0, r3
	mov	r3, #0x80
	lsl	r3, #12
	cmp	r0, r3
	ble	.L1216e
	mov	r0, #1
	b	.L1217c
.L1216e:
	ldr	r2, =0xfff40000
	cmp	r0, r2
	bge	.L1217a
	mov	r0, #1
	neg	r0, r0
	b	.L1217c
.L1217a:
	mov	r0, #0
.L1217c:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end TestCollision

	.section .rodata
	.global .L134fc
	.global .L132fc
	.global .L133fc

.L132fc:
	.incrom 0x132fc, 0x133fc
.L133fc:
	.incrom 0x133fc, 0x134fc
.L134fc:
	.word	Func_8011ce0
	.word	HeightTile_1
	.word	HeightTile_2
	.word	HeightTile_3
	.word	HeightTile_4
	.word	HeightTile_5
	.word	HeightTile_6
	.word	HeightTile_7
	.word	HeightTile_8
	.word	HeightTile_9
	.word	HeightTile_A
	.word	HeightTile_B
	.word	HeightTile_C
	.word	HeightTile_D
	.word	Func_8011f3c
	.word	Func_8011f48
