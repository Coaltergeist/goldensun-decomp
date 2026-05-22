	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_1ca1c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r7, =ewram_240
	ldr	r2, =0x205
	add	r3, r7, r2
	mov	r9, r0
	ldrb	r0, [r3]
	mov	r1, #0x18
	add	r0, #0xc
	sub	sp, #4
	bl	Func_b1c_from_thumb
	ldr	r2, =0x206
	add	r3, r7, r2
	ldrb	r3, [r3]
	mov	r5, r0
	sub	r3, #7
	lsl	r5, #18
	mov	r10, r3
	asr	r5, #16
	ldr	r3, =.L36750
	mov	r0, r5
	mov	r1, #0x60
	mov	r8, r3
	bl	Func_b1c_from_thumb
	lsl	r0, #16
	mov	r2, r8
	asr	r0, #16
	ldrb	r6, [r2, r0]
	mov	r0, r5
	mov	r1, #0x60
	add	r0, #0x20
	bl	Func_b1c_from_thumb
	add	r5, #0x40
	mov	r3, r8
	ldrb	r7, [r3, r0]
	mov	r1, #0x60
	mov	r0, r5
	bl	Func_b1c_from_thumb
	mov	r3, r8
	ldrb	r2, [r3, r0]
	add	r6, r10
	add	r7, r10
	add	r2, r10
	cmp	r6, #0
	bge	.L1ca86
	mov	r6, #0
.L1ca86:
	cmp	r7, #0
	bge	.L1ca8c
	mov	r7, #0
.L1ca8c:
	cmp	r2, #0
	bge	.L1ca92
	mov	r2, #0
.L1ca92:
	cmp	r6, #0x1f
	ble	.L1ca98
	mov	r6, #0x1f
.L1ca98:
	cmp	r7, #0x1f
	ble	.L1ca9e
	mov	r7, #0x1f
.L1ca9e:
	cmp	r2, #0x1f
	ble	.L1caa4
	mov	r2, #0x1f
.L1caa4:
	ldr	r3, =0x576
	add	r3, r9
	strh	r6, [r3]
	mov	r3, #0xaf
	lsl	r3, #3
	add	r3, r9
	strh	r7, [r3]
	ldr	r3, =0x57a
	add	r3, r9
	strh	r2, [r3]
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1ca1c

.thumb_func_start Func_1cae0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	ldr	r3, =0xeeee
	mov	r10, r3
	ldr	r3, =0xcccc
	mov	r9, r3
	mov	r1, r10
	mov	r2, r9
	ldr	r3, =0x11110
	mov	r5, r0
	bl	Func_1cbd4
	ldr	r6, =0xbbbb
	ldr	r3, =0x50001e8
	mov	r2, r6
	strh	r0, [r3]
	ldr	r1, =0xd555
	mov	r3, r10
	mov	r0, r5
	bl	Func_1cbd4
	ldr	r3, =0x50001ea
	strh	r0, [r3]
	ldr	r3, =0xaaaa
	mov	r8, r3
	mov	r1, r6
	mov	r2, r8
	mov	r3, r9
	mov	r0, r5
	bl	Func_1cbd4
	ldr	r3, =0x50001ec
	ldr	r1, =0xa221
	strh	r0, [r3]
	ldr	r2, =0x9999
	mov	r3, r8
	mov	r0, r5
	bl	Func_1cbd4
	ldr	r3, =0x50001ee
	ldr	r1, =0x10888
	strh	r0, [r3]
	ldr	r2, =0xdddd
	ldr	r3, =0x13333
	mov	r0, r5
	bl	Func_1cbd4
	ldr	r3, =0x50001f0
	mov	r2, r10
	strh	r0, [r3]
	ldr	r1, =0x12221
	ldr	r3, =0x15555
	mov	r0, r5
	bl	Func_1cbd4
	ldr	r3, =0x50001f2
	mov	r2, #0x80
	strh	r0, [r3]
	ldr	r1, =0x13bbb
	lsl	r2, #9
	ldr	r3, =0x17777
	mov	r0, r5
	bl	Func_1cbd4
	ldr	r3, =0x50001f4
	strh	r0, [r3]
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_1cae0

.thumb_func_start Func_1cbd4
	push	{r5, r6, r7, lr}
	mov	r5, r0
	ldr	r0, =0x576
	mov	r6, r2
	add	r2, r5, r0
	ldrh	r0, [r2]
	ldr	r4, =Func_888
	lsl	r0, #16
	.call_via r4
	mov	r1, #0xaf
	lsl	r1, #3
	add	r2, r5, r1
	asr	r7, r0, #16
	ldrh	r0, [r2]
	mov	r1, r6
	lsl	r0, #16
	.call_via r4
	ldr	r2, =0x57a
	add	r5, r2
	asr	r6, r0, #16
	ldrh	r0, [r5]
	mov	r1, r3
	lsl	r0, #16
	.call_via r4
	asr	r0, #16
	cmp	r7, #0
	bge	.L1cc14
	mov	r7, #0
.L1cc14:
	cmp	r6, #0
	bge	.L1cc1a
	mov	r6, #0
.L1cc1a:
	cmp	r0, #0
	bge	.L1cc20
	mov	r0, #0
.L1cc20:
	cmp	r7, #0x1f
	ble	.L1cc26
	mov	r7, #0x1f
.L1cc26:
	cmp	r6, #0x1f
	ble	.L1cc2c
	mov	r6, #0x1f
.L1cc2c:
	cmp	r0, #0x1f
	ble	.L1cc32
	mov	r0, #0x1f
.L1cc32:
	lsl	r3, r6, #5
	lsl	r0, #10
	add	r0, r3
	add	r0, r7, r0
	lsl	r0, #16
	lsr	r0, #16
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1cbd4

.thumb_func_start Func_1cc50
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r2
	mov	r2, #0
	ldrsh	r0, [r5, r2]
	ldr	r4, =Func_888
	lsl	r0, #16
	.call_via r4
	asr	r7, r0, #16
	mov	r2, #2
	ldrsh	r0, [r5, r2]
	mov	r1, r6
	lsl	r0, #16
	.call_via r4
	asr	r6, r0, #16
	mov	r2, #4
	ldrsh	r0, [r5, r2]
	mov	r1, r3
	lsl	r0, #16
	.call_via r4
	asr	r0, #16
	cmp	r7, #0
	bge	.L1cc8c
	mov	r7, #0
.L1cc8c:
	cmp	r7, #0x1f
	ble	.L1cc92
	mov	r7, #0x1f
.L1cc92:
	cmp	r6, #0
	bge	.L1cc98
	mov	r6, #0
.L1cc98:
	cmp	r6, #0x1f
	ble	.L1cc9e
	mov	r6, #0x1f
.L1cc9e:
	cmp	r0, #0
	bge	.L1cca4
	mov	r0, #0
.L1cca4:
	cmp	r0, #0x1f
	ble	.L1ccaa
	mov	r0, #0x1f
.L1ccaa:
	lsl	r3, r6, #5
	lsl	r0, #10
	add	r0, r3
	add	r0, r7, r0
	lsl	r0, #16
	lsr	r0, #16
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1cc50

.thumb_func_start Func_1ccc0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r6, r1
	add	r0, #0xc
	mov	r1, #0x18
	sub	sp, #8
	bl	Func_b1c_from_thumb
	mov	r5, r0
	lsl	r5, #18
	asr	r5, #16
	ldr	r2, =.L36750
	mov	r0, r5
	mov	r1, #0x60
	mov	r8, r2
	bl	Func_b1c_from_thumb
	lsl	r0, #16
	mov	r2, r8
	asr	r0, #16
	sub	r6, #7
	ldrb	r3, [r2, r0]
	lsl	r6, #16
	asr	r6, #16
	add	r3, r6
	mov	r0, r5
	lsl	r3, #16
	asr	r3, #16
	mov	r1, #0x60
	add	r0, #0x20
	mov	r10, r3
	bl	Func_b1c_from_thumb
	mov	r2, r8
	ldrb	r3, [r2, r0]
	add	r5, #0x40
	add	r3, r6
	lsl	r3, #16
	mov	r0, r5
	mov	r1, #0x60
	asr	r7, r3, #16
	bl	Func_b1c_from_thumb
	mov	r2, r8
	ldrb	r3, [r2, r0]
	add	r3, r6
	lsl	r3, #16
	mov	r2, r10
	asr	r3, #16
	cmp	r2, #0
	bge	.L1cd30
	mov	r2, #0
	mov	r10, r2
.L1cd30:
	mov	r2, r10
	cmp	r2, #0x1f
	ble	.L1cd3a
	mov	r2, #0x1f
	mov	r10, r2
.L1cd3a:
	cmp	r7, #0
	bge	.L1cd40
	mov	r7, #0
.L1cd40:
	cmp	r7, #0x1f
	ble	.L1cd46
	mov	r7, #0x1f
.L1cd46:
	cmp	r3, #0
	bge	.L1cd4c
	mov	r3, #0
.L1cd4c:
	cmp	r3, #0x1f
	ble	.L1cd52
	mov	r3, #0x1f
.L1cd52:
	mov	r5, sp
	strh	r3, [r5, #4]
	ldr	r3, =0xeeee
	mov	r2, r10
	strh	r2, [r5]
	mov	r10, r3
	ldr	r2, =0xcccc
	mov	r1, r10
	strh	r7, [r5, #2]
	ldr	r3, =0x11110
	mov	r0, r5
	mov	r9, r2
	bl	Func_1cc50
	ldr	r6, =0xbbbb
	ldr	r3, =0x50001e8
	mov	r2, r6
	strh	r0, [r3]
	ldr	r1, =0xd555
	mov	r3, r10
	mov	r0, r5
	bl	Func_1cc50
	ldr	r3, =0x50001ea
	strh	r0, [r3]
	ldr	r3, =0xaaaa
	mov	r8, r3
	mov	r1, r6
	mov	r2, r8
	mov	r3, r9
	mov	r0, r5
	bl	Func_1cc50
	ldr	r3, =0x50001ec
	ldr	r1, =0xa221
	strh	r0, [r3]
	ldr	r2, =0x9999
	mov	r3, r8
	mov	r0, r5
	bl	Func_1cc50
	ldr	r3, =0x50001ee
	ldr	r1, =0x10888
	strh	r0, [r3]
	ldr	r2, =0xdddd
	ldr	r3, =0x13333
	mov	r0, r5
	bl	Func_1cc50
	ldr	r3, =0x50001f0
	mov	r2, r10
	strh	r0, [r3]
	ldr	r1, =0x12221
	ldr	r3, =0x15555
	mov	r0, r5
	bl	Func_1cc50
	ldr	r3, =0x50001f2
	mov	r2, #0x80
	strh	r0, [r3]
	ldr	r1, =0x13bbb
	lsl	r2, #9
	ldr	r3, =0x17777
	mov	r0, r5
	bl	Func_1cc50
	ldr	r3, =0x50001f4
	add	sp, #8
	strh	r0, [r3]
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1ccc0

.thumb_func_start Func_1ce48
	push	{lr}
	ldr	r1, =0x574
	add	r0, r1
	ldrh	r2, [r0]
	mov	r3, r2
	cmp	r3, #0
	bne	.L1ce5a
	mov	r3, #2
	b	.L1ce5e
.L1ce5a:
	ldr	r1, =0xffff
	add	r3, r2, r1
.L1ce5e:
	strh	r3, [r0]
	pop	{r0}
	bx	r0
.func_end Func_1ce48

.thumb_func_start Func_1ce6c
	push	{lr}
	ldr	r2, =0x574
	add	r0, r2
	ldrh	r3, [r0]
	mov	r2, #0x80
	add	r3, #1
	strh	r3, [r0]
	lsl	r2, #10
	lsl	r3, #16
	cmp	r3, r2
	bls	.L1ce86
	mov	r3, #0
	strh	r3, [r0]
.L1ce86:
	pop	{r0}
	bx	r0
.func_end Func_1ce6c

.thumb_func_start Func_1ce90
	push	{lr}
	ldr	r2, =0x574
	add	r0, r2
	ldrh	r3, [r0]
	cmp	r3, #1
	beq	.L1ceb4
	cmp	r3, #1
	bgt	.L1cea6
	cmp	r3, #0
	beq	.L1ceac
	b	.L1cecc
.L1cea6:
	cmp	r3, #2
	beq	.L1ceba
	b	.L1cecc
.L1ceac:
	ldr	r3, =ewram_240
	mov	r2, #0x83
	lsl	r2, #2
	b	.L1cebe
.L1ceb4:
	ldr	r3, =ewram_240
	ldr	r2, =0x205
	b	.L1cebe
.L1ceba:
	ldr	r3, =ewram_240
	ldr	r2, =0x206
.L1cebe:
	add	r1, r3, r2
	ldrb	r2, [r1]
	mov	r3, r2
	cmp	r3, #0
	beq	.L1cecc
	add	r3, #0xff
	strb	r3, [r1]
.L1cecc:
	pop	{r0}
	bx	r0
.func_end Func_1ce90

.thumb_func_start Func_1cee0
	push	{lr}
	ldr	r2, =0x574
	add	r0, r2
	ldrh	r3, [r0]
	cmp	r3, #1
	beq	.L1cf0e
	cmp	r3, #1
	bgt	.L1cef6
	cmp	r3, #0
	beq	.L1cefc
	b	.L1cf30
.L1cef6:
	cmp	r3, #2
	beq	.L1cf1e
	b	.L1cf30
.L1cefc:
	ldr	r3, =ewram_240
	mov	r2, #0x83
	lsl	r2, #2
	add	r1, r3, r2
	ldrb	r2, [r1]
	mov	r3, r2
	cmp	r3, #1
	bhi	.L1cf30
	b	.L1cf2c
.L1cf0e:
	ldr	r3, =ewram_240
	ldr	r2, =0x205
	add	r1, r3, r2
	ldrb	r2, [r1]
	mov	r3, r2
	cmp	r3, #0x17
	bhi	.L1cf30
	b	.L1cf2c
.L1cf1e:
	ldr	r3, =ewram_240
	ldr	r2, =0x206
	add	r1, r3, r2
	ldrb	r2, [r1]
	mov	r3, r2
	cmp	r3, #0xe
	bhi	.L1cf30
.L1cf2c:
	add	r3, r2, #1
	strb	r3, [r1]
.L1cf30:
	pop	{r0}
	bx	r0
.func_end Func_1cee0

