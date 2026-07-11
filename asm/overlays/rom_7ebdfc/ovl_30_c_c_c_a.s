	.include "macros.inc"

.thumb_func_start OvlFunc_961_2008120
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r1, =iwram_3001ebc
	mov	r2, #0xb6
	ldr	r3, [r1]
	lsl	r2, #1
	add	r3, r2
	mov	r8, r1
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	ldr	r2, =.L5d0
	lsl	r3, r1, #2
	mov	r10, r1
	ldrsh	r6, [r2, r3]
	add	r3, #2
	ldrsh	r5, [r2, r3]
	lsl	r6, #16
	lsl	r5, #16
	mov	r0, #0x9e
	lsr	r6, #16
	lsr	r5, #16
	bl	__PlaySound
	mov	r1, r6
	mov	r2, r5
	ldr	r0, =.L5e8
	bl	__Func_8010560
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_80922c4
	mov	r2, r8
	ldr	r3, [r2]
	mov	r1, #0xe4
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, r10
	bl	__Func_8091e9c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_961_2008120

.thumb_func_start OvlFunc_961_2008194
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r1, =iwram_3001ebc
	mov	r2, #0xb6
	ldr	r3, [r1]
	lsl	r2, #1
	add	r3, r2
	mov	r8, r1
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	ldr	r2, =.L5d0
	lsl	r3, r1, #2
	mov	r10, r1
	ldrsh	r6, [r2, r3]
	add	r3, #2
	ldrsh	r5, [r2, r3]
	lsl	r6, #16
	lsl	r5, #16
	mov	r0, #0x9e
	lsr	r6, #16
	lsr	r5, #16
	bl	__PlaySound
	mov	r1, r6
	mov	r2, r5
	ldr	r0, =.L5fe
	bl	__Func_8010560
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_80922c4
	mov	r2, r8
	ldr	r3, [r2]
	mov	r1, #0xe4
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, r10
	bl	__Func_8091e9c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_961_2008194

