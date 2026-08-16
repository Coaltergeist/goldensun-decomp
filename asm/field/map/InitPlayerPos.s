	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start InitPlayerPos  @ 0x0808cf78
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e70
	mov	r0, #0xe1
	ldr	r7, [r3]
	ldr	r3, =gState
	lsl	r0, #1
	add	r3, r0
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	ldr	r3, =__start_overlay
	ldr	r0, [r3, #0xc]
	mov	r8, r1
	bl	_call_via_r0
	mov	r6, #1
	mov	r3, #0
	mov	r5, r0
	mov	r10, r3
	neg	r6, r6
	b	.L8cfa8
.L8cfa6:
	add	r5, #0x18
.L8cfa8:
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	cmp	r3, r6
	beq	.L8cfc8
	cmp	r3, r8
	bne	.L8cfa6
	mov	r1, #2
	ldrsh	r0, [r5, r1]
	cmp	r0, r6
	beq	.L8cfc4
	bl	_GetFlag
	cmp	r0, #0
	beq	.L8cfa6
.L8cfc4:
	mov	r2, #1
	mov	r10, r2
.L8cfc8:
	mov	r3, r10
	cmp	r3, #0
	bne	.L8cfd8
	ldr	r3, =__start_overlay
	ldr	r0, [r3, #0xc]
	bl	_call_via_r0
	mov	r5, r0
.L8cfd8:
	ldr	r0, =0x109
	bl	_GetFlag
	cmp	r0, #0
	bne	.L8d020
	ldr	r1, =gState
	mov	r4, #0xee
	lsl	r4, #1
	add	r2, r1, r4
	mov	r4, #4
	ldrsh	r3, [r5, r4]
	lsl	r3, #16
	str	r3, [r2]
	mov	r3, #0xf0
	lsl	r3, #1
	add	r2, r1, r3
	mov	r4, #6
	ldrsh	r3, [r5, r4]
	lsl	r3, #16
	str	r3, [r2]
	mov	r3, #0xf2
	lsl	r3, #1
	add	r2, r1, r3
	mov	r4, #8
	ldrsh	r3, [r5, r4]
	lsl	r3, #16
	str	r3, [r2]
	mov	r3, #0xf4
	lsl	r3, #1
	add	r2, r1, r3
	mov	r4, #0xf6
	ldrh	r3, [r5, #0xa]
	lsl	r4, #1
	str	r3, [r2]
	add	r3, r1, r4
	strh	r0, [r3]
.L8d020:
	mov	r1, #1
	mov	r0, #0xe
	ldrsh	r3, [r5, r0]
	neg	r1, r1
	cmp	r3, r1
	beq	.L8d036
	mov	r6, r7
	add	r6, #0xec
	lsl	r3, #16
	str	r3, [r6]
	b	.L8d03a
.L8d036:
	mov	r6, r7
	add	r6, #0xec
.L8d03a:
	mov	r2, #0x10
	ldrsh	r3, [r5, r2]
	cmp	r3, r1
	beq	.L8d04c
	mov	r4, r7
	add	r4, #0xf0
	lsl	r3, #16
	str	r3, [r4]
	b	.L8d050
.L8d04c:
	mov	r4, r7
	add	r4, #0xf0
.L8d050:
	mov	r0, #0x12
	ldrsh	r3, [r5, r0]
	cmp	r3, r1
	beq	.L8d062
	mov	r2, r7
	add	r2, #0xf4
	lsl	r3, #16
	str	r3, [r2]
	b	.L8d066
.L8d062:
	mov	r2, r7
	add	r2, #0xf4
.L8d066:
	mov	r3, #0x14
	ldrsh	r0, [r5, r3]
	cmp	r0, r1
	beq	.L8d078
	mov	r1, r7
	add	r1, #0xf8
	lsl	r3, r0, #16
	str	r3, [r1]
	b	.L8d07c
.L8d078:
	mov	r1, r7
	add	r1, #0xf8
.L8d07c:
	ldr	r3, [r6]
	mov	r0, #0xf0
	lsl	r0, #16
	ldr	r2, [r2]
	add	r3, r0
	cmp	r3, r2
	ble	.L8d090
	ldr	r0, =0xff100000
	add	r3, r2, r0
	str	r3, [r6]
.L8d090:
	ldr	r3, [r4]
	mov	r2, #0xa0
	lsl	r2, #16
	add	r3, r2
	ldr	r2, [r1]
	cmp	r3, r2
	ble	.L8d0a4
	ldr	r0, =0xff600000
	add	r3, r2, r0
	str	r3, [r4]
.L8d0a4:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end InitPlayerPos
