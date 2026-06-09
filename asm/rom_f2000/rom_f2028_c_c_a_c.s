	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f3804  @ 0x080f3804
	push	{lr}
	ldr	r3, =iwram_3001ed0
	mov	r4, r1
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.Lf381c
	mov	r3, #0x80
	lsl	r3, #5
	add	r2, r1, r3
	mov	r3, r4
	bl	Func_80f3078
.Lf381c:
	pop	{r0}
	bx	r0
.func_end Func_80f3804

.thumb_func_start Func_80f3824  @ 0x080f3824
	push	{lr}
	ldr	r3, =iwram_3001ed0
	mov	r4, r1
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.Lf383c
	mov	r3, #0x80
	lsl	r3, #3
	add	r2, r1, r3
	mov	r3, r4
	bl	Func_80f3078
.Lf383c:
	pop	{r0}
	bx	r0
.func_end Func_80f3824

