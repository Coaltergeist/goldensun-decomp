	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_UnleashIntro  @ 0x080ccaec
	push	{r5, r6, lr}
	ldr	r1, =0x782c
	mov	r6, r0
	mov	r0, #0x27
	bl	galloc_iwram
	mov	r1, #0x80
	mov	r5, r0
	lsl	r1, #7
	mov	r0, #0x28
	bl	galloc_iwram
	mov	r0, #0
	bl	AnimStart
	ldr	r3, =0x77b4
	add	r2, r5, r3
	mov	r3, #0x18
	str	r3, [r2]
	ldr	r2, =REG_BG2PA
	ldr	r3, .Lccb48	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Lccb4c	@ 0x1010
	add	r2, #0x32
	strh	r3, [r2]
	cmp	r6, #4
	bhi	.Lccb70
	ldr	r2, =.Lccb2c
	lsl	r3, r6, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lccb2c:
	.word	.Lccb40
	.word	.Lccb44
	.word	.Lccb68
	.word	.Lccb6c
	.word	.Lccb70
.Lccb40:
	ldr	r0, =_FILE_c8
	b	.Lccb72
.Lccb44:
	ldr	r0, =_FILE_cf
	b	.Lccb72

	.align	2, 0
.Lccb48:
	.word	0x100
.Lccb4c:
	.word	0x1010
	.pool

.Lccb68:
	ldr	r0, =_FILE_b4
	b	.Lccb72
.Lccb6c:
	ldr	r0, =_FILE_cb
	b	.Lccb72
.Lccb70:
	ldr	r0, =_FILE_be
.Lccb72:
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	ldr	r3, =0x778c
	add	r2, r5, r3
	mov	r3, #0
	str	r3, [r2]
	mov	r3, #0xef
	lsl	r3, #7
	add	r2, r5, r3
	mov	r3, #3
	str	r3, [r2]
	ldr	r3, =0x7784
	add	r2, r5, r3
	ldr	r3, =0x6060606
	mov	r1, #0xc8
	str	r3, [r2]
	lsl	r1, #4
	ldr	r0, =Task_Anim_UnleashIntro
	bl	StartTask
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Anim_UnleashIntro
