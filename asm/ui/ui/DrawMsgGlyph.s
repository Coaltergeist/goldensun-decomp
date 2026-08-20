	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start DrawMsgGlyph  @ 0x080178b0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x184
	str	r1, [sp]
	ldr	r3, =iwram_3001e8c
	mov	r5, r0
	ldr	r6, [r3]
	lsl	r3, r5, #8
	asr	r3, #16
	mov	r10, r3
	mov	r1, #0xc0
	mov	r3, #0xff
	and	r5, r3
	add	r0, sp, #4
	ldr	r3, =Func_80008d4
	lsl	r1, #1
	bl	_call_via_r3
	ldr	r0, =0xea4
	add	r3, r6, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L178f0
	mov	r2, #0
	mov	r3, #8
	mov	r9, r2
	b	.L178fa
.L178f0:
	ldr	r2, =0xeae
	add	r3, r6, r2
	ldrh	r3, [r3]
	mov	r0, #1
	mov	r9, r0
.L178fa:
	mov	r11, r3
	mov	r3, r5
	sub	r3, #0x20
	ldr	r2, =Data_32224
	lsl	r3, #5
	add	r7, r3, r2
	ldrh	r3, [r7]
	ldr	r0, =0xeac
	mov	r8, r3
	add	r3, r6, r0
	ldrh	r3, [r3]
	add	r7, #2
	cmp	r3, #1
	bne	.L1794c
	mov	r1, sp
	ldr	r5, =Func_8000984
	add	r1, #0x35
	mov	r2, r9
	mov	r0, r7
	bl	_call_via_r5
	mov	r1, sp
	add	r1, #0x36
	mov	r2, r9
	mov	r0, r7
	bl	_call_via_r5
	mov	r2, r11
	add	r1, sp, #0x24
	mov	r0, r7
	bl	_call_via_r5
	mov	r1, sp
	mov	r2, r11
	add	r1, #0x25
	mov	r0, r7
	bl	_call_via_r5
	mov	r2, #1
	add	r8, r2
	b	.L17964
.L1794c:
	mov	r1, sp
	add	r1, #0x35
	mov	r2, r9
	ldr	r5, =Func_8000984
	mov	r0, r7
	bl	_call_via_r5
	mov	r0, r7
	add	r1, sp, #0x24
	mov	r2, r11
	bl	_call_via_r5
.L17964:
	mov	r0, r10
	lsl	r3, r0, #16
	lsr	r2, r3, #16
	cmp	r2, #0
	beq	.L179f4
	ldr	r3, =.L31e24
	lsl	r2, #5
	ldr	r0, =0xeac
	add	r7, r2, r3
	mov	r3, #0
	ldrsh	r2, [r7, r3]
	add	r3, r6, r0
	ldrh	r3, [r3]
	mov	r10, r2
	add	r7, #2
	cmp	r3, #1
	bne	.L179ce
	add	r3, sp, #4
	mov	r2, r8
	add	r6, r3, r2
	mov	r1, r6
	ldr	r5, =Func_8000984
	add	r1, #0x31
	mov	r2, r9
	mov	r0, r7
	bl	_call_via_r5
	mov	r1, r6
	add	r1, #0x32
	mov	r2, r9
	mov	r0, r7
	bl	_call_via_r5
	mov	r1, r6
	add	r1, #0x20
	mov	r2, r11
	mov	r0, r7
	bl	_call_via_r5
	mov	r1, r6
	mov	r2, r11
	add	r1, #0x21
	mov	r0, r7
	bl	_call_via_r5
	mov	r0, r10
	mov	r2, #0x80
	lsl	r3, r0, #16
	lsl	r2, #9
	add	r3, r2
	asr	r3, #16
	mov	r10, r3
	b	.L179ec
.L179ce:
	add	r5, sp, #4
	add	r5, r8
	mov	r1, r5
	add	r1, #0x31
	mov	r2, r9
	ldr	r6, =Func_8000984
	mov	r0, r7
	bl	_call_via_r6
	mov	r1, r5
	add	r1, #0x20
	mov	r0, r7
	mov	r2, r11
	bl	_call_via_r6
.L179ec:
	mov	r0, r10
	lsl	r3, r0, #16
	lsr	r3, #16
	add	r8, r3
.L179f4:
	mov	r1, sp
	add	r1, #0xb
	mov	r6, #0
.L179fa:
	mov	r5, #0
.L179fc:
	mov	r4, #0
.L179fe:
	mov	r2, #0
	mov	r0, #7
.L17a02:
	ldrb	r3, [r1]
	lsl	r2, #4
	sub	r0, #1
	add	r2, r3
	sub	r1, #1
	cmp	r0, #0
	bge	.L17a02
	ldr	r0, [sp]
	stmia	r0!, {r2}
	add	r4, #1
	mov	r3, r0
	str	r3, [sp]
	add	r1, #0x18
	cmp	r4, #7
	ble	.L179fe
	add	r5, #1
	sub	r1, #0x78
	cmp	r5, #1
	ble	.L179fc
	add	r6, #1
	add	r1, #0x70
	cmp	r6, #1
	ble	.L179fa
	mov	r0, r8
	add	sp, #0x184
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end DrawMsgGlyph

