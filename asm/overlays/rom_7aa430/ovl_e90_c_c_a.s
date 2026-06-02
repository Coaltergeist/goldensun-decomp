	.include "macros.inc"

.thumb_func_start OvlFunc_923_2008eac
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	ldr	r0, =0x1632
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_923_2008eac

.thumb_func_start OvlFunc_923_2008ed0
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r0, #0
	bl	__Func_8092054
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, #0xe4
	bl	__Func_80f9080
	ldr	r3, =OvlFunc_923_2008cc0
	str	r3, [r5, #0x6c]
	ldr	r3, =0x3333
	mov	r0, #0
	str	r3, [r5, #0x30]
	mov	r1, #2
	bl	__Func_80924d4
	mov	r2, #6
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r3, #0
	str	r3, [r5, #0x6c]
	mov	r0, #0x1e
	bl	__Func_809163c
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, r6
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_923_2008ed0

.thumb_func_start OvlFunc_923_2008f48
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, #0xe4
	bl	__Func_80f9080
	ldr	r2, =0x3333
	mov	r0, #0
	ldr	r1, =0x6666
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #2
	bl	__Func_8092b08
	mov	r2, #8
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #8
	bl	__Func_809163c
	mov	r3, #0x80
	lsl	r3, #12
	lsl	r5, #19
	add	r5, r3
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0x1e
	bl	__Func_809163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_923_2008f48

.thumb_func_start OvlFunc_923_2008fac
	push	{lr}
	mov	r0, #0x11
	bl	OvlFunc_923_2008ed0
	pop	{r0}
	bx	r0
.func_end OvlFunc_923_2008fac

.thumb_func_start OvlFunc_923_2008fb8
	push	{lr}
	mov	r0, #0x12
	bl	OvlFunc_923_2008ed0
	pop	{r0}
	bx	r0
.func_end OvlFunc_923_2008fb8

.thumb_func_start OvlFunc_923_2008fc4
	push	{lr}
	mov	r0, #0x13
	bl	OvlFunc_923_2008ed0
	pop	{r0}
	bx	r0
.func_end OvlFunc_923_2008fc4

