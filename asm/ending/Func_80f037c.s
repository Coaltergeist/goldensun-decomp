	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f037c  @ 0x080f037c
	push	{lr}
	mov	r2, #0x80
	ldr	r1, =0x1ff01ff
	lsl	r2, #9
	mov	r3, #0x1f
.Lf0386:
	sub	r3, #1
	stmia	r0!, {r1}
	cmp	r3, #0
	bge	.Lf0386
	ldr	r4, =0x20002
	mov	r3, #0xef
.Lf0392:
	sub	r3, #1
	stmia	r0!, {r2}
	add	r2, r4
	cmp	r3, #0
	bge	.Lf0392
	mov	r3, #0x2f
.Lf039e:
	sub	r3, #1
	stmia	r0!, {r1}
	cmp	r3, #0
	bge	.Lf039e
	mov	r2, #0
	mov	r3, #0xbf
.Lf03aa:
	sub	r3, #1
	stmia	r0!, {r2}
	cmp	r3, #0
	bge	.Lf03aa
	pop	{r0}
	bx	r0
.func_end Func_80f037c

