	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_933_2009054
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r5, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r5, r2
	ldr	r0, [r3]
	sub	sp, #0x38
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001ebc
	mov	r6, r0
	ldr	r1, [r3]
	mov	r2, #0x80
	ldr	r3, [r6, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	beq	.Lm933_1156
	ldr	r3, =0x232
	add	r2, r5, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x1e
	beq	.Lm933_1156
	mov	r2, #0x80
	ldr	r3, [r6, #0x30]
	lsl	r2, #9
	cmp	r3, r2
	bgt	.Lm933_1106
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.Lm933_1156
	mov	r5, #0x80
	add	r7, sp, #0x10
	lsl	r5, #8
	mov	r3, #0
	str	r5, [r7, #8]
	str	r5, [r7, #0xc]
	mov	r8, r3
	bl	__Random
	mov	r2, #0xf8
	lsl	r0, #12
	lsr	r0, #16
	lsl	r2, #8
	ldrh	r3, [r6, #6]
	add	r0, r2
	strh	r0, [r7, #0x22]
	cmp	r3, #0
	beq	.Lm933_10e8
	cmp	r3, r5
	beq	.Lm933_10e8
	ldr	r4, [r6, #0x10]
	mov	r3, #1
	asr	r2, r4, #20
	and	r2, r3
	lsl	r3, r2, #2
	add	r3, r2
	mov	r2, #0x80
	lsl	r3, #16
	lsl	r2, #10
	sub	r2, r3
	mov	r8, r2
	b	.Lm933_10ea
.Lm933_10e8:
	ldr	r4, [r6, #0x10]
.Lm933_10ea:
	mov	r3, #0
	ldr	r0, [r6, #8]
	ldr	r1, [r6, #0xc]
	str	r3, [sp]
	str	r3, [sp, #4]
	ldr	r3, =0x880001
	add	r0, r8
	str	r3, [sp, #8]
	mov	r2, r4
	mov	r3, #0
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	b	.Lm933_1156
.Lm933_1106:
	ldr	r2, =iwram_3001e40
	ldr	r7, [r2]
	mov	r3, #7
	and	r7, r3
	cmp	r7, #0
	bne	.Lm933_1156
	ldr	r3, [r2]
	ldr	r3, =0xcccc
	add	r5, sp, #0x10
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	bl	__Random
	mov	r3, #0xf8
	lsl	r0, #12
	lsl	r3, #8
	lsr	r0, #16
	add	r0, r3
	strh	r0, [r5, #0x22]
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r2, =0x1999
	lsr	r3, #16
	mul	r3, r2
	ldr	r1, [r6, #0xc]
	mov	r2, #0x80
	lsl	r2, #10
	ldr	r0, [r6, #8]
	add	r1, r2
	ldr	r2, [r6, #0x10]
	str	r3, [sp]
	ldr	r3, =0x880001
	str	r3, [sp, #8]
	mov	r3, #0
	str	r7, [sp, #4]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
.Lm933_1156:
	add	sp, #0x38
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_933_2009054

