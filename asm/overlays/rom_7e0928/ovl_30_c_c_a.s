	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_2008a44
	push	{r5, lr}
	mov	r0, #0x1e
	bl	__Func_8092054
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =0x19999
	mov	r1, #2
	str	r3, [r5, #0x34]
	str	r3, [r5, #0x30]
	bl	__Func_800c300
	mov	r0, r5
	ldr	r1, =.L4c48
	bl	__Func_800c2d8
	ldr	r0, =0x363
	bl	__Func_8079358
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008a44

.thumb_func_start OvlFunc_956_2008a84
	push	{r5, lr}
	mov	r0, #0x1c
	bl	__Func_809ad90
	ldr	r0, =0x361
	bl	__Func_8079358
	mov	r0, #0xa
	bl	__Func_80030f8
	ldr	r2, =.L5480
	ldr	r3, [r2]
	cmp	r3, #1
	beq	.Lab6
	cmp	r3, #3
	beq	.Lab6
	mov	r5, r2
.Laa6:
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r3, [r5]
	cmp	r3, #1
	beq	.Lab6
	cmp	r3, #3
	bne	.Laa6
.Lab6:
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r0, =OvlFunc_956_200804c
	bl	__Func_8004278
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008a84

.thumb_func_start OvlFunc_956_2008ad4
	push	{r5, r6, lr}
	ldr	r6, =ewram_2000240
	mov	r0, #0xfa
	lsl	r0, #1
	add	r6, r0
	ldr	r0, [r6]
	bl	__Func_8092054
	mov	r3, #0x80
	mov	r5, r0
	lsl	r3, #9
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r1, #0x81
	ldr	r0, [r6]
	lsl	r1, #1
	bl	__Func_8093874
	mov	r0, r5
	mov	r1, #5
	bl	__Func_800c300
	ldr	r3, [r5, #0x10]
	ldr	r2, =0xfff00000
	mov	r0, #0xc0
	and	r3, r2
	lsl	r0, #13
	add	r3, r0
	ldr	r1, [r5, #8]
	mov	r0, r5
	ldr	r2, [r5, #0xc]
	bl	__Func_800d14c
	mov	r0, r5
	bl	__Func_800ca6c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008ad4

.thumb_func_start OvlFunc_956_2008b30
	push	{r5, r6, lr}
	ldr	r3, =ewram_2000240
	mov	r0, #0xfa
	lsl	r0, #1
	add	r6, r3, r0
	ldr	r0, [r6]
	bl	__Func_8092054
	mov	r5, r0
	mov	r2, #0xa6
	ldr	r3, [r5, #8]
	lsl	r2, #18
	cmp	r3, r2
	ble	.Lb4e
	str	r2, [r5, #8]
.Lb4e:
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r0, r5
	mov	r1, #5
	bl	__Func_800c300
	ldr	r3, [r5, #0x10]
	ldr	r2, =0xfff00000
	mov	r0, #0xc0
	and	r3, r2
	lsl	r0, #12
	ldr	r2, [r5, #0xc]
	add	r3, r0
	ldr	r1, [r5, #8]
	mov	r0, r5
	bl	__Func_800d14c
	mov	r0, r5
	bl	__Func_800ca6c
	mov	r1, #0x81
	ldr	r0, [r6]
	lsl	r1, #1
	bl	__Func_8093874
	ldr	r0, [r6]
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092708
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008b30

