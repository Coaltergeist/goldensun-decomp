	.include "macros.inc"
	.section .data
.LOvlFunc_926_data_base:
	.set .L51d8, .LOvlFunc_926_data_base + 0xba0
	.text

.thumb_func_start OvlFunc_926_200c140
	push	{r5, r6, r7, lr}
	mov	r0, #8
	sub	sp, #0x38
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r5, sp, #0x10
	str	r3, [r5]
	ldr	r3, =0x119
	strh	r3, [r5, #0x18]
	ldr	r3, =.L51d8
	str	r3, [r5, #0x1c]
	mov	r3, #0xe0
	lsl	r3, #10
	str	r3, [r5, #0x10]
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r5, #0x14]
	mov	r7, r0
	mov	r6, #0
.L4168:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r3, #1
	and	r3, r6
	cmp	r3, #0
	beq	.L417c
	mov	r0, #0x82
	bl	__PlaySound
.L417c:
	ldr	r2, [r7, #0x10]
	ldr	r3, =0xffe80000
	add	r2, r3
	ldr	r3, =0x9999
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	str	r3, [sp]
	mov	r3, #0
	str	r3, [sp, #4]
	ldr	r3, =0x360001
	add	r6, #1
	str	r3, [sp, #8]
	mov	r3, #0
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	cmp	r6, #7
	bls	.L4168
	mov	r0, #0x3c
	bl	__CutsceneWait
	add	sp, #0x38
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200c140
