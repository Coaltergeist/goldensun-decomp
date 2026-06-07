	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_919_200805c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	mov	r2, #0xfa
	mov	r8, r3
	ldr	r3, =ewram_2000240
	lsl	r2, #1
	add	r3, r2
	mov	r6, r0
	ldr	r0, [r3]
	mov	r7, r1
	bl	__MapActor_GetActor
	mov	r5, r0
	lsl	r6, #20
	lsl	r7, #20
	cmp	r5, #0
	beq	.L9e
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	add	r1, r6
	add	r2, r7
	str	r1, [r5, #8]
	str	r2, [r5, #0x10]
	mov	r3, r5
	add	r3, #0x22
	ldrb	r0, [r3]
	bl	__Func_8011f54
	str	r0, [r5, #0xc]
	str	r0, [r5, #0x14]
.L9e:
	mov	r3, #0xf0
	lsl	r3, #1
	add	r3, r8
	ldr	r5, [r3]
	cmp	r5, #0
	beq	.Lc4
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	add	r1, r6
	add	r2, r7
	str	r1, [r5, #8]
	str	r2, [r5, #0x10]
	mov	r3, r5
	add	r3, #0x22
	ldrb	r0, [r3]
	bl	__Func_8011f54
	str	r0, [r5, #0xc]
	str	r0, [r5, #0x14]
.Lc4:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_919_200805c

