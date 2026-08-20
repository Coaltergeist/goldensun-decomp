	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_20097a8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x3c
	mov	r5, #1
	str	r0, [sp, #0x10]
	mov	r1, #0x3b
	mov	r0, #0x4e
	mov	r2, #0x6e
	mov	r3, #0x24
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r2, #0x6d
	mov	r3, #0x24
	mov	r0, #0x4c
	mov	r1, #0x3b
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	add	r2, sp, #0x14
	mov	r3, #7
	str	r3, [r2, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r3, #0
	mov	r11, r2
	mov	r10, r3
.Lm924_17f0:
	mov	r2, r10
	lsl	r2, #4
	mov	r9, r2
	mov	r2, r10
	lsl	r3, r2, #20
	mov	r2, #0xb6
	neg	r3, r3
	lsl	r2, #18
	add	r2, r3
	mov	r7, #0
	mov	r8, r2
.Lm924_1806:
	mov	r3, r7
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lm924_1868
	bl	__Random
	lsl	r0, #3
	lsr	r0, #16
	lsl	r5, r0, #1
	add	r5, r0
	lsl	r3, r5, #4
	add	r5, r3
	lsl	r3, r5, #8
	add	r5, r3
	ldr	r3, =0xffff3334
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
	ldr	r2, =0xffff3334
	add	r3, r2
	str	r3, [sp, #4]
	mov	r3, #0x90
	mov	r2, #0
	lsl	r3, #12
	str	r2, [sp]
	str	r3, [sp, #8]
	mov	r2, #0x92
	mov	r3, r11
	str	r3, [sp, #0xc]
	mov	r0, r8
	mov	r1, #0
	lsl	r2, #18
	mov	r3, r5
	bl	OvlFunc_common0_10c
	mov	r0, #1
	neg	r6, r7
	bl	__CutsceneWait
	b	.Lm924_186a
.Lm924_1868:
	neg	r6, r7
.Lm924_186a:
	mov	r2, r9
	sub	r0, r6, r2
	mov	r3, #0xb6
	lsl	r3, #18
	lsl	r0, #16
	mov	r2, #0x92
	lsl	r2, #18
	add	r0, r3
	mov	r1, #0
	bl	OvlFunc_924_200bb24
	ldr	r2, =0xffff0000
	add	r7, #1
	add	r8, r2
	cmp	r7, #7
	bls	.Lm924_1806
	mov	r3, r10
	mov	r2, #0x6c
	sub	r2, r3
	mov	r3, #2
	str	r3, [sp]
	mov	r3, #1
	str	r3, [sp, #4]
	mov	r0, #0x4c
	mov	r1, #0x3b
	mov	r3, #0x24
	bl	__CopyMapTiles
	mov	r5, r10
	add	r5, #1
	mov	r1, r10
	ldr	r0, [sp, #0x10]
	mov	r2, r5
	bl	OvlFunc_924_20095e0
	mov	r10, r5
	cmp	r5, #1
	bls	.Lm924_17f0
	ldr	r0, [sp, #0x10]
	bl	__CutsceneWait
	add	r2, r5, #1
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_924_20095e0
	mov	r0, #0xd3
	bl	__PlaySound
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_924_2009790
	bl	__StartTask
	bl	__Func_8012350
	add	sp, #0x3c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_20097a8

