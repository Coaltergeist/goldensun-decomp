	.include "macros.inc"

.thumb_func_start OvlFunc_923_2008fd8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0
	sub	sp, #0x38
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.Lff2
	ldr	r2, =0xfffff
	add	r3, r2
.Lff2:
	mov	r0, #0
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L1004
	ldr	r2, =0xfffff
	add	r3, r2
.L1004:
	asr	r3, #20
	cmp	r5, #0xc
	beq	.L100c
	b	.L111c
.L100c:
	cmp	r3, #0x20
	beq	.L1012
	b	.L111c
.L1012:
	bl	__CutsceneStart
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r1, #1
	ldr	r0, =0x10005
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r3, #0
	mov	r8, r3
	add	r7, sp, #0x10
	mov	r10, r3
.L1048:
	mov	r3, #1
	str	r3, [r7]
	mov	r3, #0x8f
	lsl	r3, #1
	strh	r3, [r7, #0x18]
	ldr	r3, =.L2f4c
	mov	r0, #0xf6
	str	r3, [r7, #0x1c]
	bl	__PlaySound
	bl	__Random
	lsl	r0, #4
	lsr	r0, #16
	mov	r6, #0xd0
	sub	r6, r0
	bl	__Random
	mov	r5, #0x8c
	lsl	r0, #4
	lsr	r0, #16
	lsl	r5, #2
	sub	r5, r0
	bl	__Random
	mov	r3, r0
	lsl	r3, #2
	lsr	r3, #16
	lsl	r0, r3, #4
	sub	r0, r3
	mov	r2, #0xf0
	lsl	r2, #14
	lsl	r0, #16
	add	r0, r2
	mov	r1, #0x64
	bl	_Func_8000af0
	mov	r3, r10
	str	r3, [sp, #4]
	ldr	r3, =0x320001
	lsl	r6, #16
	lsl	r5, #16
	str	r0, [sp]
	str	r3, [sp, #8]
	mov	r2, r5
	mov	r3, #0
	mov	r0, r6
	mov	r1, #0
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, #4
	bl	__CutsceneWait
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0xe
	bls	.L1048
	mov	r0, #0xdc
	bl	__PlaySound
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r0, =0x875
	bl	__SetFlag
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_923_2008d98
	bl	__StartTask
	mov	r3, #5
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x25
	mov	r1, #0x62
	mov	r2, #0xa
	mov	r3, #0x61
	bl	__CopyMapTiles
	mov	r3, #6
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #7
	mov	r2, #0xd
	mov	r0, #0x46
	mov	r1, #0x20
	bl	__Func_8010704
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__CutsceneWait
	bl	__Func_8091750
.L111c:
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_923_2008fd8

