	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8096ab0  @ 0x08096ab0
	push	{r5, lr}
	ldr	r3, =iwram_3001f30
	ldr	r5, [r3]
	mov	r1, #0x1e
	ldrsh	r3, [r5, r1]
	cmp	r3, #2
	bne	.L96adc
	bl	Func_8097608
	ldr	r2, =0x24a
	ldr	r3, =gState
	add	r3, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	mov	r1, #0x1a
	ldrsh	r3, [r5, r1]
	cmp	r2, r3
	beq	.L96adc
	ldr	r3, [r5, #0x14]
	mov	r2, #0
	add	r3, #0x5b
	strb	r2, [r3]
.L96adc:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8096ab0

