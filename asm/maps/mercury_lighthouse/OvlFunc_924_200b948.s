	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_200b948
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #0x4a
	mov	r3, #0x26
	mov	r0, #0x4c
	mov	r1, #0x3d
	bl	__CopyMapTiles
	add	r2, sp, #0x10
	mov	r3, #5
	str	r3, [r2, #4]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r8, r2
	mov	r2, #0x90
	mov	r3, #1
	lsl	r2, #12
	mov	r7, #0
	mov	r9, r3
	mov	r11, r2
.Lm924_3986:
	ldr	r3, =0xfffe0000
	mov	r6, #1
	mov	r10, r3
.Lm924_398c:
	mov	r3, r6
	mov	r2, r9
	and	r3, r2
	cmp	r3, #0
	beq	.Lm924_3a0c
	mov	r5, #2
	and	r5, r6
	cmp	r5, #0
	beq	.Lm924_39d2
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #16
	mov	r0, #0x69
	sub	r0, r3
	lsl	r2, r7, #19
	mov	r3, r10
	sub	r2, r3, r2
	ldr	r3, =0x22e0000
	add	r2, r3
	mov	r3, #0
	str	r3, [sp]
	ldr	r3, =0xffffc000
	str	r3, [sp, #4]
	mov	r3, r11
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	lsl	r0, #16
	mov	r1, #0
	mov	r3, #0
	bl	OvlFunc_common0_10c
	b	.Lm924_3a06
.Lm924_39d2:
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	mov	r2, #0x9b
	lsr	r3, #16
	lsl	r2, #2
	lsl	r0, r7, #2
	sub	r2, r3
	add	r0, r6
	mov	r3, #0xb7
	lsl	r3, #16
	lsl	r0, #17
	add	r0, r3
	mov	r3, r11
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	mov	r3, #0x80
	lsl	r2, #16
	mov	r1, #0
	lsl	r3, #7
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	OvlFunc_common0_10c
.Lm924_3a06:
	mov	r0, #1
	bl	__CutsceneWait
.Lm924_3a0c:
	ldr	r2, =0xfffe0000
	add	r6, #1
	add	r10, r2
	cmp	r6, #7
	bls	.Lm924_398c
	mov	r2, r9
	mov	r3, #0x22
	sub	r3, r7
	str	r2, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x47
	mov	r1, #0x3b
	mov	r2, #0x46
	bl	__CopyMapTiles
	mov	r3, r9
	mov	r2, r7
	str	r3, [sp]
	str	r3, [sp, #4]
	add	r2, #0x4b
	mov	r0, #0x47
	mov	r1, #0x3b
	mov	r3, #0x26
	add	r7, #1
	bl	__CopyMapTiles
	cmp	r7, #2
	bls	.Lm924_3986
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200b948

