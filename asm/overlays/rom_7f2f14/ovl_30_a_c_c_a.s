	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_200896c
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r5, [r6, #0x44]
	ldr	r3, [r6, #8]
	add	r3, r5
	str	r3, [r6, #8]
	ldr	r2, [r6, #0x48]
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r7, [r6, #0x4c]
	ldr	r3, [r6, #0x10]
	mov	r0, r5
	add	r3, r7
	mov	r1, #0x12
	str	r3, [r6, #0x10]
	bl	_divsi3_RAM
	sub	r5, r0
	str	r5, [r6, #0x44]
	mov	r3, r7
	cmp	r7, #0
	bge	.L99c
	add	r3, #0xf
.L99c:
	asr	r3, #4
	sub	r3, r7, r3
	str	r3, [r6, #0x4c]
	ldr	r2, [r6, #0x30]
	ldr	r3, [r6, #0x18]
	add	r3, r2
	str	r3, [r6, #0x18]
	ldr	r2, [r6, #0x34]
	ldr	r3, [r6, #0x1c]
	add	r3, r2
	str	r3, [r6, #0x1c]
	ldr	r1, [r6, #0x50]
	mov	r2, r6
	add	r2, #0x64
	ldrh	r3, [r1, #0x1e]
	ldrh	r2, [r2]
	add	r3, r2
	strh	r3, [r1, #0x1e]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200896c

.thumb_func_start OvlFunc_968_20089c8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0
	sub	sp, #0x44
	bl	__MapActor_GetActor
	mov	r7, r0
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	neg	r1, r1
	mov	r3, #0
	neg	r0, r0
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #0x82
	lsl	r3, #16
	str	r3, [r7, #0xc]
	mov	r3, #0x80
	lsl	r3, #8
	mov	r5, r7
	str	r3, [r7, #0x48]
	add	r5, #0x55
	mov	r3, #0
	str	r3, [r7, #0x44]
	strb	r3, [r5]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xcc
	bl	__PlaySound
	mov	r3, #3
	strb	r3, [r5]
	mov	r0, #0x18
	bl	__CutsceneWait
	add	r0, sp, #0x1c
	mov	r3, #7
	str	r3, [r0, #4]
	ldr	r3, =OvlFunc_968_200896c
	str	r3, [r0, #0x24]
	ldr	r3, =0xcccc
	mov	r2, #0
	str	r3, [r0, #8]
	str	r3, [r0, #0xc]
	mov	r10, r0
	mov	r8, r2
	add	r6, sp, #0x10
.La46:
	mov	r3, r8
	lsl	r5, r3, #12
	mov	r0, r5
	bl	__cos
	mov	r3, #0
	str	r0, [r6]
	mov	r0, r5
	str	r3, [r6, #4]
	bl	__sin
	ldr	r3, [r6]
	lsr	r2, r3, #31
	add	r2, r3, r2
	asr	r2, #1
	add	r3, r2
	str	r0, [r6, #8]
	str	r3, [r6]
	ldr	r5, [r7, #8]
	ldr	r2, [r7, #0x10]
	ldr	r1, [r7, #0xc]
	ldr	r4, [r6, #4]
	str	r0, [sp, #4]
	ldr	r0, =0x1090001
	str	r0, [sp, #8]
	mov	r0, r10
	str	r0, [sp, #0xc]
	mov	r0, r5
	str	r4, [sp]
	bl	OvlFunc_968_2008118
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0x10
	bls	.La46
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #0
	ldr	r1, =0x101
	bl	__MapActor_Surprise
	mov	r0, #0
	mov	r1, #0x16
	bl	__MapActor_SetAnim
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r0, r0
	neg	r1, r1
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	bl	__MapActor_PlayPendingSound
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x48]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r7, #0x44]
	bl	__CutsceneEnd
	add	sp, #0x44
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_20089c8

.thumb_func_start OvlFunc_968_2008b08
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x44
	bl	__MapActor_GetActor
	add	r2, sp, #0x10
	mov	r3, #1
	str	r3, [r2]
	mov	r3, #7
	str	r3, [r2, #4]
	ldr	r3, =OvlFunc_968_200896c
	str	r3, [r2, #0x24]
	mov	r3, #0
	mov	r10, r0
	mov	r9, r2
	mov	r8, r3
	add	r7, sp, #0x38
.Lb30:
	mov	r2, r8
	lsl	r5, r2, #12
	mov	r0, r5
	bl	__cos
	mov	r3, #0
	str	r3, [r7, #4]
	str	r0, [r7]
	mov	r0, r5
	bl	__sin
	ldr	r5, [r7]
	mov	r6, r0
	mov	r1, #3
	mov	r0, r5
	str	r6, [r7, #8]
	bl	_divsi3_RAM
	add	r5, r0
	str	r5, [r7]
	mov	r3, r10
	ldr	r2, [r3, #0x10]
	ldr	r0, [r3, #8]
	ldr	r1, [r3, #0xc]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	ldr	r3, =0x1030001
	str	r3, [sp, #8]
	mov	r3, r9
	str	r3, [sp, #0xc]
	mov	r3, r5
	str	r6, [sp, #4]
	bl	OvlFunc_968_2008118
	mov	r2, #2
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0x10
	bls	.Lb30
	add	sp, #0x44
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2008b08

.thumb_func_start OvlFunc_968_2008b98
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	mov	r7, r0
	sub	sp, #0x38
	mov	r0, #0
	cmp	r3, #0
	bne	.Lc3e
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	cmp	r3, #0
	bne	.Lbd6
	mov	r3, #0x80
	ldr	r2, [r7, #0x38]
	lsl	r3, #24
	cmp	r2, r3
	bne	.Lbd0
	ldr	r3, [r7, #0x40]
	cmp	r3, r2
	beq	.Lbd6
.Lbd0:
	mov	r0, #0xf6
	bl	__PlaySound
.Lbd6:
	mov	r3, #0
	mov	r8, r3
	mov	r3, #0x8f
	add	r5, sp, #0x10
	lsl	r3, #1
	strh	r3, [r5, #0x18]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	ldr	r3, =0xfffffeb9
	str	r3, [r5, #0x10]
	str	r3, [r5, #0x14]
	bl	__Random
	mov	r3, r0
	lsl	r0, r3, #3
	add	r0, r3
	lsr	r0, #16
	sub	r0, #4
	mov	r1, #0xa
	lsl	r0, #16
	bl	_divsi3_RAM
	mov	r6, r0
	bl	__Random
	mov	r3, r0
	lsl	r0, r3, #3
	add	r0, r3
	lsr	r0, #16
	sub	r0, #4
	mov	r1, #0xa
	lsl	r0, #16
	bl	_divsi3_RAM
	ldr	r2, [r7, #0x10]
	ldr	r3, =0xffff0000
	add	r2, r3
	mov	r3, r8
	ldr	r4, [r7, #8]
	ldr	r1, [r7, #0xc]
	str	r3, [sp]
	ldr	r3, =0x1c0001
	str	r0, [sp, #4]
	str	r3, [sp, #8]
	mov	r0, r4
	mov	r3, r6
	str	r5, [sp, #0xc]
	bl	OvlFunc_968_2008118
	mov	r0, #0
.Lc3e:
	add	sp, #0x38
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_2008b98

