	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_1928
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r1, =ewram_2001000
	ldr	r3, =iwram_3001f3c
	mov	r2, #4
	ldrsh	r0, [r1, r2]
	sub	sp, #4
	ldr	r6, [r3]
	mov	r8, r1
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	bne	.Lc1_1948
	b	.Lc1_1afc
.Lc1_1948:
	mov	r2, r8
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #1
	beq	.Lc1_1954
	b	.Lc1_1a98
.Lc1_1954:
	ldrh	r3, [r2, #6]
	add	r2, r3, #1
	lsl	r3, #16
	asr	r3, #15
	add	r3, #0xf0
	ldrsh	r7, [r6, r3]
	add	r3, r2, #1
	lsl	r2, #16
	asr	r2, #15
	mov	r1, r8
	add	r2, #0xf0
	strh	r3, [r1, #6]
	ldrsh	r4, [r6, r2]
	cmp	r7, #0
	bne	.Lc1_19f0
	cmp	r4, #0
	bne	.Lc1_19f0
	mov	r3, #9
	strh	r3, [r1]
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r3, r6
	add	r3, #0xe8
	ldr	r2, [r3]
	mov	r1, #0xc0
	ldr	r3, [r5, #8]
	lsl	r1, #12
	add	r7, r2, r1
	cmp	r2, r3
	blt	.Lc1_1996
	ldr	r3, =0xfff40000
	add	r7, r2, r3
.Lc1_1996:
	ldr	r0, =0x211
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lc1_19b2
	mov	r3, r6
	add	r3, #0xec
	ldr	r3, [r3]
	mov	r1, #0x80
	lsl	r1, #13
	add	r4, r3, r1
	mov	r3, r6
	add	r3, #0xe4
	b	.Lc1_19c0
.Lc1_19b2:
	mov	r3, r6
	add	r3, #0xec
	ldr	r3, [r3]
	ldr	r2, =0xfff00000
	add	r4, r3, r2
	mov	r3, r6
	add	r3, #0xe2
.Lc1_19c0:
	ldrh	r2, [r3]
	mov	r3, r5
	add	r3, #0x64
	strh	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #9
	mov	r1, r7
	str	r3, [r5, #0x30]
	mov	r0, r5
	mov	r2, #0
	mov	r3, r4
	bl	__Actor_TravelTo
	ldr	r0, =0x211
	bl	__SetFlag
	ldr	r1, =.Lc1_15
	mov	r0, r5
	bl	__Actor_SetScript
	b	.Lc1_1afc
.Lc1_19f0:
	mov	r2, r8
	mov	r1, #2
	ldrsh	r3, [r2, r1]
	lsl	r7, #16
	lsl	r4, #16
	cmp	r3, #0
	beq	.Lc1_1a08
	mov	r3, r6
	add	r3, #0xe8
	ldr	r3, [r3]
	lsl	r3, #1
	sub	r7, r3, r7
.Lc1_1a08:
	ldr	r2, [r5, #8]
	cmp	r2, r7
	bne	.Lc1_1a16
	ldr	r3, [r5, #0x10]
	cmp	r3, r4
	beq	.Lc1_1a52
	b	.Lc1_1a18
.Lc1_1a16:
	ldr	r3, [r5, #0x10]
.Lc1_1a18:
	sub	r0, r4, r3
	sub	r1, r7, r2
	str	r4, [sp]
	bl	__atan2
	ldrh	r3, [r5, #6]
	lsl	r0, #16
	lsr	r0, #16
	sub	r0, r3
	lsl	r0, #16
	mov	r2, #0x80
	asr	r0, #16
	lsl	r2, #5
	ldr	r4, [sp]
	cmp	r0, r2
	ble	.Lc1_1a3a
	mov	r0, r2
.Lc1_1a3a:
	ldr	r2, =0xfffff000
	cmp	r0, r2
	bge	.Lc1_1a42
	mov	r0, r2
.Lc1_1a42:
	add	r3, r0
	mov	r2, #0
	strh	r3, [r5, #6]
	mov	r3, r8
	str	r7, [r5, #8]
	str	r4, [r5, #0x10]
	strh	r2, [r3, #8]
	b	.Lc1_1a5c
.Lc1_1a52:
	mov	r1, r8
	ldrh	r3, [r1, #8]
	mov	r2, r8
	add	r3, #1
	strh	r3, [r2, #8]
.Lc1_1a5c:
	mov	r2, r8
	mov	r1, #8
	ldrsh	r3, [r2, r1]
	cmp	r3, #2
	ble	.Lc1_1a70
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetAnim
	b	.Lc1_1afc
.Lc1_1a70:
	mov	r0, r5
	mov	r1, #5
	bl	__Actor_SetAnim
	b	.Lc1_1afc

	.pool_aligned

.Lc1_1a98:
	cmp	r3, #2
	bne	.Lc1_1afc
	mov	r2, r8
	mov	r3, #0xa
	ldrsh	r7, [r5, r3]
	ldrh	r3, [r2, #6]
	add	r2, r3, #1
	lsl	r3, #16
	asr	r3, #15
	mov	r1, #0x12
	ldrsh	r4, [r5, r1]
	add	r3, #0xf0
	add	r1, r2, #1
	lsl	r2, #16
	strh	r7, [r6, r3]
	asr	r2, #15
	mov	r3, r8
	add	r2, #0xf0
	strh	r1, [r3, #6]
	lsl	r3, r1, #16
	strh	r4, [r6, r2]
	asr	r2, r3, #16
	ldr	r3, =0x383e
	cmp	r2, r3
	bne	.Lc1_1afc
	add	r3, r1, #1
	lsl	r3, #16
	ldr	r1, .Lc1_1af4	@ 0
	lsl	r2, #1
	asr	r3, #15
	add	r2, #0xf0
	add	r3, #0xf0
	strh	r1, [r6, r2]
	strh	r1, [r6, r3]
	mov	r3, r6
	add	r3, #0xe0
	ldrh	r3, [r3]
	mov	r1, r8
	strh	r3, [r1, #4]
	mov	r2, #0
	mov	r3, r8
	strh	r2, [r3, #6]
	mov	r3, #1
	strh	r3, [r1]
	b	.Lc1_1afc

	.align	2, 0
.Lc1_1af4:
	.word	0
	.pool

.Lc1_1afc:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_1928

