	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_200b860
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x38
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x3a
	mov	r2, #0x46
	mov	r3, #0x22
	mov	r0, #0x4a
	bl	__CopyMapTiles
	add	r1, sp, #0x10
	mov	r3, #7
	str	r3, [r1, #4]
	mov	r3, #0x80
	lsl	r3, #8
	ldr	r2, =0xffff3334
	str	r3, [r1, #8]
	str	r3, [r1, #0xc]
	mov	r3, #1
	mov	r10, r1
	mov	r7, #0
	mov	r9, r2
	mov	r8, r3
.Lm924_3898:
	mov	r6, #0
.Lm924_389a:
	mov	r3, r6
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	beq	.Lm924_38fe
	bl	__Random
	lsl	r0, #3
	lsr	r0, #16
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r3, r5, #4
	add	r5, r3
	lsl	r3, r5, #8
	add	r5, r3
	bl	__Random
	lsl	r0, #3
	lsr	r0, #16
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r2, r3, #4
	add	r3, r2
	lsl	r2, r3, #8
	add	r3, r2
	add	r3, r9
	lsl	r1, r7, #4
	str	r3, [sp, #4]
	neg	r2, r6
	mov	r3, #0x90
	sub	r2, r1
	lsl	r3, #12
	mov	r1, #0x88
	lsl	r1, #18
	str	r3, [sp, #8]
	add	r5, r9
	mov	r3, r10
	lsl	r2, #16
	mov	r0, #0xd2
	add	r2, r1
	str	r3, [sp, #0xc]
	mov	r1, #0
	lsl	r0, #15
	mov	r3, r5
	str	r1, [sp]
	bl	OvlFunc_common0_10c
	mov	r0, #1
	bl	__CutsceneWait
.Lm924_38fe:
	add	r6, #1
	cmp	r6, #7
	bls	.Lm924_389a
	mov	r1, r8
	mov	r3, #0x22
	sub	r3, r7
	str	r1, [sp]
	str	r1, [sp, #4]
	mov	r0, #0x4a
	mov	r1, #0x3b
	mov	r2, #0x46
	bl	__CopyMapTiles
	mov	r2, r8
	mov	r3, #0x21
	sub	r3, r7
	str	r2, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x4a
	mov	r1, #0x3a
	mov	r2, #0x46
	add	r7, #1
	bl	__CopyMapTiles
	cmp	r7, #1
	bls	.Lm924_3898
	add	sp, #0x38
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200b860

