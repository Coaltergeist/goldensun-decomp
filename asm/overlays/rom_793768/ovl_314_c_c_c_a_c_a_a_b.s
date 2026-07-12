	.include "macros.inc"

.thumb_func_start OvlFunc_898_2008ef4
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r1
	mov	r8, r2
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r5, r0
	lsl	r1, #8
	mov	r0, #0
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r2, r6
	mov	r0, #0
	mov	r1, r5
	bl	__Func_809218c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, r8
	bl	__Func_8091e9c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008ef4

.thumb_func_start OvlFunc_898_2008f3c
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L2828
	mov	r1, #0x38
	mov	r2, #0x13
	bl	__Func_8010560
	mov	r0, #0xcc
	mov	r1, #0xa0
	lsl	r0, #1
	lsl	r1, #1
	mov	r2, #5
	bl	OvlFunc_898_2008ef4
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008f3c

.thumb_func_start OvlFunc_898_2008f64
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L283e
	mov	r1, #0x32
	mov	r2, #0x12
	bl	__Func_8010560
	mov	r0, #0x9c
	mov	r1, #0x98
	lsl	r0, #1
	lsl	r1, #1
	mov	r2, #6
	bl	OvlFunc_898_2008ef4
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008f64

