	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f9a98  @ 0x080f9a98
	ldrb	r3, [r2]
.Lf9a9a:
	push	{r0}
	lsr	r0, r2, #25
	bne	.Lf9aac
	ldr	r0, .Lf9ab0	@ .Lfb7a0
	cmp	r2, r0
	bcc	.Lf9aaa
	lsr	r0, r2, #14
	beq	.Lf9aac
.Lf9aaa:
	mov	r3, #0
.Lf9aac:
	pop	{r0}
	bx	lr
.func_end Func_80f9a98

.Lf9ab0:
	.word	.Lfb7a0

