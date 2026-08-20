	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_933_2008344
	push	{r5, r6, r7, lr}
	ldr	r5, =iwram_3001e40
	ldr	r3, [r5]
	mov	r2, #7
	and	r3, r2
	sub	sp, #0x38
	mov	r7, r0
	cmp	r3, #0
	bne	.Lm933_35c
	mov	r0, #0x76
	bl	__PlaySound
.Lm933_35c:
	ldr	r6, [r5]
	mov	r3, #0xf
	and	r6, r3
	mov	r0, #0
	cmp	r6, #0
	bne	.Lm933_398
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
	ldr	r3, =0x880001
	strh	r0, [r5, #0x22]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	ldr	r2, [r7, #0x10]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r6, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, #0
.Lm933_398:
	add	sp, #0x38
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_933_2008344

