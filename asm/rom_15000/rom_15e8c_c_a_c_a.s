	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80173ac  @ 0x080173ac
	ldr	r3, =iwram_3001e8c
	ldr	r2, [r3]
	ldr	r3, =0xeae
	add	r1, r2, r3
	mov	r3, #0xf
	strh	r3, [r1]
	ldr	r3, =0xea8
	add	r1, r2, r3
	mov	r3, #0xa
	strh	r3, [r1]
	ldr	r3, =0x12b0
	add	r1, r2, r3
	mov	r3, #9
	strh	r3, [r1]
	ldr	r1, =0xeac
	mov	r0, #0
	add	r3, r2, r1
	strh	r0, [r3]
	ldr	r3, =0xeaa
	add	r2, r3
	mov	r3, #1
	strh	r3, [r2]
	bx	lr
.func_end Func_80173ac

.thumb_func_start Func_80173f4  @ 0x080173f4
	push	{r5, lr}
	ldr	r3, =iwram_3001e8c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0x5f
	ldr	r5, [r3]
	bl	UploadSpriteGFX
	ldr	r2, =0x12b8
	add	r3, r5, r2
	strh	r0, [r3]
	ldr	r3, =0x12b0
	add	r2, r5, r3
	mov	r3, #9
	strh	r3, [r2]
	ldr	r3, =0xea8
	add	r2, r5, r3
	mov	r3, #0xa
	strh	r3, [r2]
	ldr	r2, =0xeac
	mov	r1, #0
	add	r3, r5, r2
	strh	r1, [r3]
	ldr	r3, =0xeae
	add	r2, r5, r3
	mov	r3, #0xf
	strh	r3, [r2]
	ldr	r2, =0x12b2
	add	r5, r2
	strh	r1, [r5]
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_801789c
	bl	StartTask
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80173f4

.thumb_func_start Func_8017464  @ 0x08017464
	push	{r5, lr}
	ldr	r3, =iwram_3001e8c
	ldr	r5, [r3]
	cmp	r0, #0
	beq	.L17480
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x5f
	bl	UploadSpriteGFX
	ldr	r2, =0x12b8
	add	r3, r5, r2
	strh	r0, [r3]
.L17480:
	ldr	r3, =0x12b0
	add	r2, r5, r3
	mov	r3, #9
	strh	r3, [r2]
	ldr	r3, =0xea8
	add	r2, r5, r3
	mov	r3, #0xa
	strh	r3, [r2]
	ldr	r2, =0xeac
	mov	r1, #0
	add	r3, r5, r2
	strh	r1, [r3]
	ldr	r3, =0xeae
	add	r2, r5, r3
	mov	r3, #0xf
	strh	r3, [r2]
	ldr	r2, =0x12b2
	add	r3, r5, r2
	strh	r1, [r3]
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_801789c
	bl	StartTask
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8017464

