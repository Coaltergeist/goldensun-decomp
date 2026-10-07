	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_20096c4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	mov	r0, #0xdb
	sub	sp, #8
	bl	__PlaySound
	mov	r1, #6
	mov	r10, r1
	mov	r3, #0x29
	mov	r1, #2
	mov	r5, #0
	mov	r8, r3
	mov	r6, #0x28
	mov	r9, r1
.Lm924_16e8:
	mov	r3, #3
	sub	r3, r5
	str	r3, [sp]
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r1, #0x20
	mov	r2, r8
	mov	r3, #0x20
	bl	__CopyMapTiles
	mov	r3, #1
	mov	r1, r10
	str	r3, [sp]
	str	r1, [sp, #4]
	mov	r0, #0x27
	mov	r1, #0x33
	mov	r2, r6
	mov	r3, #0x20
	bl	__CopyMapTiles
	mov	r3, #4
	mov	r1, r9
	mov	r2, r5
	str	r1, [sp]
	str	r3, [sp, #4]
	add	r2, #0x6a
	mov	r0, #0x69
	mov	r1, #0x33
	mov	r3, #0x20
	bl	__CopyMapTiles
	cmp	r7, #0
	beq	.Lm924_1750
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r0, r7
	bl	__CutsceneWait
.Lm924_1750:
	mov	r3, #2
	add	r5, #1
	add	r8, r3
	add	r6, #2
	cmp	r5, #2
	bls	.Lm924_16e8
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r3, #0x2a
	mov	r2, #0x21
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6a
	mov	r1, #0x21
	mov	r2, #4
	mov	r3, #5
	bl	__Func_8010704
	bl	__Func_8012350
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_20096c4

