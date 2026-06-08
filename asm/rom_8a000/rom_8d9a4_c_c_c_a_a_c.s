	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8091200  @ 0x08091200
	push	{lr}
	ldr	r3, =iwram_3001ed0
	mov	r4, r1
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L91218
	mov	r3, #0xe0
	lsl	r3, #4
	add	r2, r1, r3
	mov	r3, r4
	bl	Func_8090a5c
.L91218:
	pop	{r0}
	bx	r0
.func_end Func_8091200

.thumb_func_start Func_8091220  @ 0x08091220
	push	{lr}
	ldr	r3, =iwram_3001ed0
	mov	r4, r1
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L91238
	mov	r3, #0xe0
	lsl	r3, #2
	add	r2, r1, r3
	mov	r3, r4
	bl	Func_8090a5c
.L91238:
	pop	{r0}
	bx	r0
.func_end Func_8091220

