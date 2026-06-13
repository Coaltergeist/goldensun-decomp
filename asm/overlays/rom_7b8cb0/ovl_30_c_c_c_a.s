	.include "macros.inc"

.thumb_func_start OvlFunc_931_20081d0
	push	{r5, r6, lr}
	bl	__CutsceneStart
	ldr	r0, =0x909
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1f0
	ldr	r0, =0x191f
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8093054
	b	.L27e
.L1f0:
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_SetAnim
	ldr	r0, =0x18c7
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	ldr	r0, =0x8ff
	bl	__GetFlag
	mov	r6, r0
	cmp	r6, #0
	bne	.L276
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Func_8093554
	add	r0, #0x55
	strb	r6, [r0]
	mov	r1, #0x80
	mov	r0, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r3, #1
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	ldr	r2, [r5, #0x10]
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_8092adc
	bl	__Func_8093530
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	ldr	r1, [r0, #0xc]
	ldr	r2, [r0, #0x10]
	mov	r0, r3
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
.L276:
	mov	r0, #0xe
	mov	r1, #4
	bl	__MapActor_DoAnim
.L27e:
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_20081d0

