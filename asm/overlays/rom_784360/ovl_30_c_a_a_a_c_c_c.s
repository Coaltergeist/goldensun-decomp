	.include "macros.inc"

.thumb_func_start OvlFunc_884_2008750
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L3eb4
	mov	r1, #0x2c
	mov	r2, #7
	bl	__Func_8010560
	mov	r0, #0
	mov	r1, #0xf8
	ldr	r2, =0x117
	bl	__Func_809218c
	mov	r0, #1
	bl	OvlFunc_884_2008714
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_2008750

.thumb_func_start OvlFunc_884_2008780
	push	{r5, lr}
	mov	r0, #0xbc
	sub	sp, #8
	bl	__PlaySound
	mov	r5, #2
	mov	r1, #0x3f
	mov	r2, #0x33
	mov	r3, #8
	mov	r0, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r3, #8
	mov	r1, #0x3f
	mov	r2, #0x33
	mov	r0, #2
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r1, #0xb0
	mov	r2, #0x99
	lsl	r2, #1
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092b08
	mov	r1, #0xb0
	mov	r2, #0x94
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #2
	bl	OvlFunc_884_2008714
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_2008780

.thumb_func_start OvlFunc_884_20087ec
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L3eb4
	mov	r1, #0x2b
	mov	r2, #0xf
	bl	__Func_8010560
	mov	r0, #0
	mov	r1, #0xe6
	ldr	r2, =0x197
	bl	__Func_809218c
	mov	r0, #3
	bl	OvlFunc_884_2008714
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_20087ec

.thumb_func_start OvlFunc_884_200881c
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L3eb4
	mov	r1, #0x34
	mov	r2, #0x12
	bl	__Func_8010560
	mov	r1, #0xbb
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x1a3
	bl	__Func_809218c
	mov	r0, #4
	bl	OvlFunc_884_2008714
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_200881c

.thumb_func_start OvlFunc_884_200884c
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L3eb4
	mov	r1, #0x29
	mov	r2, #0x20
	bl	__Func_8010560
	mov	r0, #0
	mov	r1, #0xc8
	ldr	r2, =0x222
	bl	__Func_809218c
	mov	r0, #5
	bl	OvlFunc_884_2008714
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_200884c

.thumb_func_start OvlFunc_884_200887c
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L3eb4
	mov	r1, #0x23
	mov	r2, #0x24
	bl	__Func_8010560
	mov	r0, #0
	mov	r1, #0x66
	ldr	r2, =0x263
	bl	__Func_809218c
	mov	r0, #6
	bl	OvlFunc_884_2008714
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_200887c

.thumb_func_start OvlFunc_884_20088ac
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L3eb4
	mov	r1, #0x33
	mov	r2, #0x27
	bl	__Func_8010560
	mov	r1, #0xb3
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x29e
	bl	__Func_809218c
	mov	r0, #7
	bl	OvlFunc_884_2008714
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_20088ac

