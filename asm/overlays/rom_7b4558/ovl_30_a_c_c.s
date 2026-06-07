	.include "macros.inc"

.thumb_func_start OvlFunc_927_2008d90
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r6, r0
	mov	r10, r2
	mov	r9, r3
	mov	r8, r1
	bl	__MapActor_GetActor
	mov	r1, #1
	mov	r5, r0
	mov	r0, r6
	bl	__Func_8092b08
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r2, #9
	mov	r0, r6
	lsl	r1, #10
	bl	__Func_8092064
	mov	r0, #0x98
	bl	__Func_80f9080
	mov	r3, r9
	str	r3, [r5, #0x28]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r5, #0x48]
	mov	r3, #0
	str	r3, [r5, #0x44]
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, r6
	mov	r1, r8
	mov	r2, r10
	bl	__Func_8092158
	mov	r3, r8
	lsl	r3, #16
	mov	r8, r3
	mov	r3, r10
	lsl	r3, #16
	mov	r10, r3
	mov	r0, r6
	mov	r1, r8
	mov	r2, r10
	bl	__Func_80923e4
	mov	r0, r5
	mov	r1, #1
	bl	__Func_800c528
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x48]
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2008d90

.thumb_func_start OvlFunc_927_2008e18
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x44
	bl	__MapActor_GetActor
	mov	r10, r0
	mov	r0, #0xbc
	bl	__Func_80f9080
	add	r1, sp, #0x10
	mov	r3, #1
	mov	r2, #0
	str	r3, [r1]
	mov	r9, r1
	mov	r8, r2
	add	r7, sp, #0x38
.Le3e:
	mov	r3, r8
	lsl	r5, r3, #12
	mov	r0, r5
	bl	__Func_800231c
	mov	r3, #0
	str	r3, [r7, #4]
	str	r0, [r7]
	mov	r0, r5
	bl	__Func_8002322
	ldr	r5, [r7]
	mov	r6, r0
	mov	r1, #3
	mov	r0, r5
	str	r6, [r7, #8]
	bl	_Func_8000af0
	add	r5, r0
	str	r5, [r7]
	mov	r1, r10
	ldr	r2, [r1, #0x10]
	ldr	r0, [r1, #8]
	ldr	r3, [r7, #4]
	ldr	r1, =0x1999
	add	r3, r1
	str	r3, [sp]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [sp, #8]
	mov	r1, #0x80
	mov	r3, r9
	str	r3, [sp, #0xc]
	lsl	r1, #13
	mov	r3, r5
	str	r6, [sp, #4]
	bl	OvlFunc_927_2008ae8
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0x10
	bls	.Le3e
	add	sp, #0x44
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2008e18

.thumb_func_start OvlFunc_927_2008ea8
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r1, #1
	mov	r0, r5
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r5
	bl	OvlFunc_927_2008e18
	mov	r0, r5
	mov	r1, r6
	bl	__Func_8092950
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2008ea8

.thumb_func_start OvlFunc_927_2008ee0
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x44
	cmp	r2, r3
	bne	.Lef8
	ldr	r0, =.L30f4
	b	.Lf0e
.Lef8:
	ldr	r3, =0x45
	cmp	r2, r3
	bne	.Lf02
	ldr	r0, =.L31e4
	b	.Lf0e
.Lf02:
	ldr	r3, =0x46
	cmp	r2, r3
	bne	.Lf0c
	ldr	r0, =.L3334
	b	.Lf0e
.Lf0c:
	ldr	r0, =.L34b4
.Lf0e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_927_2008ee0

