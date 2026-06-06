	.include "macros.inc"

.thumb_func_start OvlFunc_936_2008040
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x66
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	bne	.L9e
	bl	__Func_8004458
	lsl	r0, #3
	lsr	r0, #16
	cmp	r0, #1
	beq	.L74
	cmp	r0, #1
	bcc	.L6a
	cmp	r0, #4
	bhi	.L8c
	cmp	r0, #3
	bcc	.L8c
	b	.L7e
.L6a:
	mov	r0, r5
	mov	r1, #3
	bl	__Func_800c300
	b	.L8c
.L74:
	mov	r0, r5
	mov	r1, #4
	bl	__Func_800c300
	b	.L8c
.L7e:
	bl	__Func_8004458
	ldrh	r3, [r5, #6]
	lsl	r0, #15
	lsr	r0, #16
	add	r3, r0
	strh	r3, [r5, #6]
.L8c:
	bl	__Func_8004458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #4
	lsr	r3, #16
	strh	r3, [r6]
	cmp	r3, #0
	beq	.La4
.L9e:
	ldrh	r3, [r6]
	sub	r3, #1
	strh	r3, [r6]
.La4:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_936_2008040

.thumb_func_start OvlFunc_936_20080ac
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x66
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	bne	.Le0
	bl	__Func_8004458
	ldrh	r3, [r5, #6]
	lsl	r0, #15
	lsr	r0, #16
	add	r3, r0
	strh	r3, [r5, #6]
	bl	__Func_8004458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #4
	lsr	r3, #16
	strh	r3, [r6]
	cmp	r3, #0
	beq	.Le4
	mov	r2, r3
.Le0:
	sub	r3, r2, #1
	strh	r3, [r6]
.Le4:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_936_20080ac

.thumb_func_start OvlFunc_936_20080ec
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x63
	cmp	r2, r3
	bne	.L104
	ldr	r0, =.L42c8
	b	.L138
.L104:
	ldr	r3, =0x66
	cmp	r2, r3
	bne	.L10e
	ldr	r0, =.L4448
	b	.L138
.L10e:
	ldr	r3, =0x99
	cmp	r2, r3
	bne	.L118
	ldr	r0, =.L44a8
	b	.L138
.L118:
	ldr	r3, =0x9a
	cmp	r2, r3
	bne	.L122
	ldr	r0, =.L4520
	b	.L138
.L122:
	ldr	r3, =0x9b
	cmp	r2, r3
	bne	.L12c
	ldr	r0, =.L4580
	b	.L138
.L12c:
	ldr	r3, =0x9c
	cmp	r2, r3
	bne	.L136
	ldr	r0, =.L4628
	b	.L138
.L136:
	ldr	r0, =.L4298
.L138:
	pop	{r1}
	bx	r1
.func_end OvlFunc_936_20080ec

