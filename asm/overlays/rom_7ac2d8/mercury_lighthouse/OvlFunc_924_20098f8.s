	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_20098f8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x38
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #0x6e
	mov	r3, #0x24
	mov	r0, #0x4e
	mov	r1, #0x3a
	bl	__CopyMapTiles
	add	r2, sp, #0x10
	mov	r3, #5
	str	r3, [r2, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r3, #1
	mov	r8, r2
	mov	r7, #0
	mov	r10, r3
.Lm924_192a:
	ldr	r6, =0xfffe0000
	mov	r5, #1
.Lm924_192e:
	mov	r3, r5
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.Lm924_1972
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	mov	r2, #0x92
	lsr	r3, #16
	lsl	r2, #2
	sub	r2, r3
	lsl	r0, r7, #19
	mov	r3, #0xb6
	lsl	r3, #18
	sub	r0, r6, r0
	add	r0, r3
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	lsl	r2, #16
	mov	r1, #0
	ldr	r3, =0xffffc000
	bl	OvlFunc_common0_10c
	mov	r0, #1
	bl	__CutsceneWait
.Lm924_1972:
	ldr	r2, =0xfffe0000
	add	r5, #1
	add	r6, r2
	cmp	r5, #7
	bls	.Lm924_192e
	mov	r3, r10
	mov	r2, #0x6d
	sub	r2, r7
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x6f
	mov	r1, #0x23
	mov	r3, #0x24
	add	r7, #1
	bl	__CopyMapTiles
	cmp	r7, #2
	bls	.Lm924_192a
	ldr	r0, =OvlFunc_924_2009790
	bl	__StopTask
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_20098f8

