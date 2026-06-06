	.include "macros.inc"

.thumb_func_start Func_801a910
	push	{lr}
	ldr	r3, =iwram_3001e98
	ldr	r4, [r3]
	cmp	r0, #0
	beq	.L1a940
	mov	r3, #0xef
	lsl	r3, #1
	mov	r1, #0
	add	r2, r4, r3
	mov	r0, #0
.L1a924:
	ldrh	r3, [r2]
	cmp	r3, #0
	bne	.L1a934
	mov	r3, #0xea
	add	r0, r4, r0
	lsl	r3, #1
	add	r0, r3
	b	.L1a960
.L1a934:
	add	r1, #1
	add	r2, #0x34
	add	r0, #0x34
	cmp	r1, #5
	bne	.L1a924
	b	.L1a95e
.L1a940:
	mov	r2, r4
	mov	r0, r4
	mov	r1, #0
	add	r2, #0x68
	add	r0, #0x72
.L1a94a:
	ldrh	r3, [r0]
	add	r0, #0x34
	cmp	r3, #0
	bne	.L1a956
	mov	r0, r2
	b	.L1a960
.L1a956:
	add	r1, #1
	add	r2, #0x34
	cmp	r1, #7
	bne	.L1a94a
.L1a95e:
	mov	r0, #0
.L1a960:
	pop	{r1}
	bx	r1
.func_end Func_801a910

.thumb_func_start Func_801a968
	push	{lr}
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_801a98c
	bl	Func_80041d8
	pop	{r0}
	bx	r0
.func_end Func_801a968

