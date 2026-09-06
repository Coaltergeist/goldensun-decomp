	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_1814
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f3c
	mov	r10, r0
	ldr	r0, =0x211
	mov	r8, r1
	ldr	r5, [r3]
	bl	__GetFlag
	ldr	r3, =gState
	mov	r7, r0
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	bl	__MapActor_GetActor
	mov	r3, r5
	mov	r6, r0
	add	r3, #0xe8
	ldr	r2, [r3]
	mov	r0, #0xc0
	ldr	r3, [r6, #8]
	lsl	r0, #12
	add	r1, r2, r0
	cmp	r2, r3
	blt	.Lc1_1852
	ldr	r3, =0xfff40000
	add	r1, r2, r3
.Lc1_1852:
	cmp	r7, #0
	beq	.Lc1_1868
	mov	r3, r5
	add	r3, #0xec
	ldr	r3, [r3]
	mov	r0, #0x80
	lsl	r0, #13
	add	r4, r3, r0
	mov	r3, r5
	add	r3, #0xe4
	b	.Lc1_1876
.Lc1_1868:
	mov	r3, r5
	add	r3, #0xec
	ldr	r3, [r3]
	ldr	r2, =0xfff00000
	add	r4, r3, r2
	mov	r3, r5
	add	r3, #0xe2
.Lc1_1876:
	ldrh	r3, [r3]
	mov	r5, r6
	add	r5, #0x64
	strh	r3, [r5]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r6, #0x34]
	mov	r3, #0x80
	lsl	r3, #9
	mov	r2, #0
	str	r3, [r6, #0x30]
	mov	r0, r6
	mov	r3, r4
	bl	__Actor_TravelTo
	ldr	r0, =0x211
	bl	__SetFlag
	mov	r0, r6
	ldr	r1, =.Lc1_16
	bl	__Actor_SetScript
	mov	r0, #0
	ldrsh	r3, [r5, r0]
	cmp	r3, #0
	beq	.Lc1_18b8
.Lc1_18aa:
	mov	r0, #1
	bl	__WaitFrames
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	bne	.Lc1_18aa
.Lc1_18b8:
	cmp	r7, #0
	bne	.Lc1_18ce
	mov	r1, r10
	mov	r0, #0
	bl	OvlFunc_common1_850
	mov	r0, r10
	mov	r1, #2
	bl	__Func_8019908
	b	.Lc1_18de
.Lc1_18ce:
	mov	r1, r8
	mov	r0, #0
	bl	OvlFunc_common1_850
	mov	r0, r8
	mov	r1, #2
	bl	__Func_8019908
.Lc1_18de:
	ldr	r3, =gState
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	mov	r1, #1
	bl	__Func_8019908
	mov	r1, #3
	ldr	r0, =0x96a
	bl	__Func_801776c
	mov	r0, r6
	bl	__Actor_WaitScript
	mov	r0, r7
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_common1_1814

