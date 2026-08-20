	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start InitEnemyElemStats  @ 0x080798e0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x14
	mov	r9, r1
	bl	GetUnit
	mov	r2, r0
	ldr	r0, =0x129
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79932
	mov	r1, #0x94
	lsl	r1, #1
	add	r3, r2, r1
	ldrb	r0, [r3]
	bl	GetEnemyInfo
	add	r0, #0x34
	ldrb	r0, [r0]
	cmp	r0, #0x2b
	bls	.L79914
	mov	r0, #0
.L79914:
	lsl	r3, r0, #1
	ldr	r2, =X88e38
	add	r3, r0
	lsl	r3, #3
	add	r3, r2
	mov	r2, r3
	mov	r7, #0
	mov	r1, r9
	add	r2, #8
.L79926:
	ldmia	r2!, {r3}
	add	r7, #1
	stmia	r1!, {r3}
	cmp	r7, #3
	ble	.L79926
	b	.L79994
.L79932:
	mov	r0, #0x94
	lsl	r0, #1
	add	r3, r2, r0
	ldrb	r0, [r3]
	add	r3, sp, #4
	mov	r1, r2
	mov	r8, r3
	add	r1, #0xf8
	mov	r2, r8
	bl	Func_80797fc
	ldr	r0, =X88df8
	mov	r4, #0
	mov	r10, r0
	mov	r7, #3
.L79950:
	mov	r1, r8
	ldr	r5, [r4, r1]
	mov	r1, #0xa
	mov	r0, r5
	str	r4, [sp]
	bl	__modsi3
	mov	r1, #0xa
	mov	r6, r0
	mov	r0, r5
	bl	__divsi3
	ldr	r4, [sp]
	cmp	r0, #0xf
	ble	.L79970
	mov	r0, #0xf
.L79970:
	cmp	r0, #0
	bge	.L79976
	mov	r0, #0
.L79976:
	lsl	r2, r0, #2
	mov	r3, r9
	mov	r0, r10
	add	r1, r4, r3
	ldrh	r3, [r0, r2]
	add	r3, r6
	strh	r3, [r1]
	add	r2, r10
	ldrh	r3, [r2, #2]
	sub	r7, #1
	add	r3, r6
	strh	r3, [r1, #2]
	add	r4, #4
	cmp	r7, #0
	bge	.L79950
.L79994:
	add	sp, #0x14
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end InitEnemyElemStats

