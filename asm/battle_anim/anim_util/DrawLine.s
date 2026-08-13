	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start DrawLine  @ 0x080cde90
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r3
	ldr	r3, =iwram_3001ef0
	mov	r5, r1
	ldr	r3, [r3]
	mov	r4, r2
	sub	r1, r6, r5
	mov	r2, #0x80
	sub	sp, #4
	mov	r8, r0
	sub	r7, r4, r0
	mov	r10, r1
	mov	r9, r2
	mov	r11, r3
	cmp	r5, #0
	bge	.Lcdebe
	mov	r5, #0
.Lcdebe:
	cmp	r5, #0x7f
	ble	.Lcdec4
	mov	r5, #0x7f
.Lcdec4:
	cmp	r6, #0
	bge	.Lcdeca
	mov	r6, #0
.Lcdeca:
	cmp	r6, #0x7f
	ble	.Lcded0
	mov	r6, #0x7f
.Lcded0:
	mov	r2, r7
	cmp	r7, #0
	bge	.Lcded8
	neg	r2, r7
.Lcded8:
	mov	r3, r10
	cmp	r3, #0
	bge	.Lcdee0
	neg	r3, r3
.Lcdee0:
	cmp	r2, r3
	bge	.Lcdf74
	mov	r3, r10
	cmp	r3, #0
	bge	.Lcdefa
	mov	r12, r8
	mov	r8, r4
	mov	r4, r12
	mov	r12, r5
	mov	r1, r8
	mov	r5, r6
	mov	r6, r12
	sub	r7, r4, r1
.Lcdefa:
	sub	r1, r6, r5
	lsl	r0, r7, #8
	cmp	r7, #0
	bge	.Lcdf08
	mov	r2, r8
	sub	r3, r2, r4
	lsl	r0, r3, #8
.Lcdf08:
	cmp	r1, #0
	bge	.Lcdf0e
	sub	r1, r5, r6
.Lcdf0e:
	bl	__divsi3
	mov	r12, r0
	mov	r0, r5
	mov	r1, r8
	cmp	r0, r6
	beq	.Lce018
	mov	r3, #0x80
	ldr	r5, =0xfffffeff
	lsl	r3, #1
	mov	r4, #7
	mov	r14, r3
	mov	r8, r5
.Lcdf28:
	lsr	r2, r0, #3
	lsr	r3, r1, #3
	lsl	r2, #4
	add	r2, r3
	mov	r3, r0
	and	r3, r4
	lsl	r2, #3
	add	r2, r3
	mov	r3, r1
	and	r3, r4
	lsl	r2, #3
	mov	r5, r11
	add	r2, r3
	ldrb	r3, [r5, r2]
	ldr	r5, [sp, #0x24]
	cmp	r3, r5
	bge	.Lcdf4e
	mov	r3, r11
	strb	r5, [r3, r2]
.Lcdf4e:
	add	r9, r12
	mov	r3, r9
	mov	r5, r14
	and	r3, r5
	cmp	r3, #0
	beq	.Lcdf6c
	cmp	r7, #0
	ble	.Lcdf62
	add	r1, #1
	b	.Lcdf64
.Lcdf62:
	sub	r1, #1
.Lcdf64:
	mov	r2, r9
	mov	r3, r8
	and	r2, r3
	mov	r9, r2
.Lcdf6c:
	add	r0, #1
	cmp	r0, r6
	bne	.Lcdf28
	b	.Lce018
.Lcdf74:
	cmp	r7, #0
	bge	.Lcdf90
	mov	r12, r8
	mov	r8, r4
	mov	r4, r12
	mov	r12, r5
	mov	r5, r6
	mov	r6, r12
	sub	r2, r6, r5
	mov	r1, r8
	mov	r10, r2
	sub	r7, r4, r1
	mov	r1, r10
	b	.Lcdf92
.Lcdf90:
	sub	r1, r6, r5
.Lcdf92:
	lsl	r0, r1, #8
	cmp	r1, #0
	bge	.Lcdf9c
	sub	r3, r5, r6
	lsl	r0, r3, #8
.Lcdf9c:
	cmp	r7, #0
	blt	.Lcdfae
	mov	r1, r7
	str	r4, [sp]
	bl	__divsi3
	mov	r12, r0
	ldr	r4, [sp]
	b	.Lcdfbc
.Lcdfae:
	mov	r3, r8
	sub	r1, r3, r4
	str	r4, [sp]
	bl	__divsi3
	ldr	r4, [sp]
	mov	r12, r0
.Lcdfbc:
	mov	r0, r8
	mov	r1, r5
	cmp	r0, r4
	beq	.Lce018
	ldr	r6, =0xfffffeff
	mov	r7, #0x80
	mov	r5, #7
	lsl	r7, #1
	mov	r14, r6
.Lcdfce:
	lsr	r2, r1, #3
	lsr	r3, r0, #3
	lsl	r2, #4
	add	r2, r3
	mov	r3, r1
	and	r3, r5
	lsl	r2, #3
	add	r2, r3
	mov	r3, r0
	and	r3, r5
	lsl	r2, #3
	mov	r6, r11
	add	r2, r3
	ldrb	r3, [r6, r2]
	ldr	r6, [sp, #0x24]
	cmp	r3, r6
	bge	.Lcdff4
	mov	r3, r11
	strb	r6, [r3, r2]
.Lcdff4:
	add	r9, r12
	mov	r3, r9
	and	r3, r7
	cmp	r3, #0
	beq	.Lce012
	mov	r6, r10
	cmp	r6, #0
	ble	.Lce008
	add	r1, #1
	b	.Lce00a
.Lce008:
	sub	r1, #1
.Lce00a:
	mov	r2, r9
	mov	r3, r14
	and	r2, r3
	mov	r9, r2
.Lce012:
	add	r0, #1
	cmp	r0, r4
	bne	.Lcdfce
.Lce018:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end DrawLine
