	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80fa324
	push	{lr}
	lsl	r0, #16
	ldr	r2, =Data_fc624
	ldr	r1, =Data_fc684
	lsr	r0, #13
	add	r0, r1
	ldrh	r3, [r0, #4]
	lsl	r1, r3, #1
	add	r1, r3
	lsl	r1, #2
	add	r1, r2
	ldr	r2, [r1]
	ldr	r1, [r0]
	mov	r0, r2
	bl	Func_80faa58
	pop	{r0}
	bx	r0
.func_end Func_80fa324

.thumb_func_start Func_80fa350
	push	{lr}
	lsl	r0, #16
	ldr	r2, =Data_fc624
	ldr	r1, =Data_fc684
	lsr	r0, #13
	add	r0, r1
	ldrh	r3, [r0, #4]
	lsl	r1, r3, #1
	add	r1, r3
	lsl	r1, #2
	add	r1, r2
	ldr	r1, [r1]
	ldr	r3, [r1]
	ldr	r2, [r0]
	cmp	r3, r2
	beq	.Lfa384
	mov	r0, r1
	mov	r1, r2
	bl	Func_80faa58
	b	.Lfa398

	.pool_aligned

.Lfa384:
	ldr	r2, [r1, #4]
	ldrh	r0, [r1, #4]
	cmp	r0, #0
	beq	.Lfa390
	cmp	r2, #0
	bge	.Lfa398
.Lfa390:
	mov	r0, r1
	mov	r1, r3
	bl	Func_80faa58
.Lfa398:
	pop	{r0}
	bx	r0
.func_end Func_80fa350

.thumb_func_start Func_80fa39c
	push	{lr}
	lsl	r0, #16
	ldr	r2, =Data_fc624
	ldr	r1, =Data_fc684
	lsr	r0, #13
	add	r0, r1
	ldrh	r3, [r0, #4]
	lsl	r1, r3, #1
	add	r1, r3
	lsl	r1, #2
	add	r1, r2
	ldr	r1, [r1]
	ldr	r3, [r1]
	ldr	r2, [r0]
	cmp	r3, r2
	beq	.Lfa3d0
	mov	r0, r1
	mov	r1, r2
	bl	Func_80faa58
	b	.Lfa3ec

	.pool_aligned

.Lfa3d0:
	ldr	r2, [r1, #4]
	ldrh	r0, [r1, #4]
	cmp	r0, #0
	bne	.Lfa3e2
	mov	r0, r1
	mov	r1, r3
	bl	Func_80faa58
	b	.Lfa3ec
.Lfa3e2:
	cmp	r2, #0
	bge	.Lfa3ec
	mov	r0, r1
	bl	Func_80fa264
.Lfa3ec:
	pop	{r0}
	bx	r0
.func_end Func_80fa39c

.thumb_func_start Func_80fa3f0
	push	{lr}
	lsl	r0, #16
	ldr	r2, =Data_fc624
	ldr	r1, =Data_fc684
	lsr	r0, #13
	add	r0, r1
	ldrh	r3, [r0, #4]
	lsl	r1, r3, #1
	add	r1, r3
	lsl	r1, #2
	add	r1, r2
	ldr	r2, [r1]
	ldr	r1, [r2]
	ldr	r0, [r0]
	cmp	r1, r0
	bne	.Lfa416
	mov	r0, r2
	bl	Func_80fab3c
.Lfa416:
	pop	{r0}
	bx	r0
.func_end Func_80fa3f0

.thumb_func_start Func_80fa424
	push	{lr}
	lsl	r0, #16
	ldr	r2, =Data_fc624
	ldr	r1, =Data_fc684
	lsr	r0, #13
	add	r0, r1
	ldrh	r3, [r0, #4]
	lsl	r1, r3, #1
	add	r1, r3
	lsl	r1, #2
	add	r1, r2
	ldr	r2, [r1]
	ldr	r1, [r2]
	ldr	r0, [r0]
	cmp	r1, r0
	bne	.Lfa44a
	mov	r0, r2
	bl	Func_80fa264
.Lfa44a:
	pop	{r0}
	bx	r0
.func_end Func_80fa424

.thumb_func_start Func_80fa458
	push	{r4, r5, lr}
	ldr	r0, =8
	lsl	r0, #16
	lsr	r0, #16
	cmp	r0, #0
	beq	.Lfa476
	ldr	r5, =Data_fc624
	mov	r4, r0
.Lfa468:
	ldr	r0, [r5]
	bl	Func_80fab3c
	add	r5, #0xc
	sub	r4, #1
	cmp	r4, #0
	bne	.Lfa468
.Lfa476:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.func_end Func_80fa458

