	.include "macros.inc"

.thumb_func_start OvlFunc_965_2008cd0
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r5, #0x3c
.Lcd6:
	cmp	r5, #0
	beq	.Lce8
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, [r6, #0x28]
	sub	r5, #1
	cmp	r3, #0
	bne	.Lcd6
.Lce8:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_2008cd0

.thumb_func_start OvlFunc_965_2008cf0
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
	bl	_Func_8000af0
	sub	r5, r0
	str	r5, [r6, #0x44]
	mov	r3, r7
	cmp	r7, #0
	bge	.Ld20
	add	r3, #0xf
.Ld20:
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
.func_end OvlFunc_965_2008cf0

.thumb_func_start OvlFunc_965_2008d4c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x44
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x82
	lsl	r3, #16
	str	r3, [r0, #0xc]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r0, #0x48]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, #0
	str	r5, [r0, #0x44]
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	bl	__MapTransitionIn
	bl	__Func_8091e20
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xcc
	bl	__PlaySound
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0x18
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r10, r0
	add	r0, sp, #0x1c
	mov	r3, #7
	str	r3, [r0, #4]
	ldr	r3, =OvlFunc_965_2008cf0
	str	r3, [r0, #0x24]
	ldr	r3, =0xcccc
	str	r3, [r0, #8]
	str	r3, [r0, #0xc]
	mov	r8, r0
	mov	r7, #0
	add	r6, sp, #0x10
.Lde6:
	lsl	r5, r7, #12
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
	mov	r2, r10
	ldr	r5, [r2, #8]
	ldr	r1, [r2, #0xc]
	ldr	r4, [r6, #4]
	ldr	r2, [r2, #0x10]
	str	r0, [sp, #4]
	ldr	r0, =0x1090001
	str	r4, [sp]
	str	r0, [sp, #8]
	mov	r4, r8
	mov	r0, r5
	add	r7, #1
	str	r4, [sp, #0xc]
	bl	OvlFunc_965_2008ae8
	cmp	r7, #0x10
	bls	.Lde6
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
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Surprise
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x48]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r0, #0x44]
	bl	__Func_8091750
	add	sp, #0x44
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_2008d4c

.thumb_func_start OvlFunc_965_2008eac
	push	{r5, r6, lr}
	mov	r6, r0
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
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x82
	lsl	r3, #16
	str	r3, [r0, #0xc]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r0, #0x48]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, #0
	str	r5, [r0, #0x44]
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	bl	__MapTransitionIn
	bl	__Func_8091e20
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xcc
	bl	__PlaySound
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, =0xfffb0000
	str	r3, [r0, #0x28]
	mov	r0, #0
	bl	__MapActor_GetActor
	bl	OvlFunc_965_2008cd0
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, r6
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_2008eac

.thumb_func_start OvlFunc_965_2008f58
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb0
	cmp	r2, r3
	bne	.Lf70
	ldr	r0, =.L3270
	b	.Lf86
.Lf70:
	ldr	r3, =0xaf
	cmp	r2, r3
	bne	.Lf7a
	ldr	r0, =.L3330
	b	.Lf86
.Lf7a:
	ldr	r3, =0xae
	cmp	r2, r3
	bne	.Lf84
	ldr	r0, =.L34f8
	b	.Lf86
.Lf84:
	ldr	r0, =.L3558
.Lf86:
	pop	{r1}
	bx	r1
.func_end OvlFunc_965_2008f58

.thumb_func_start OvlFunc_965_2008fac
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb0
	mov	r0, #0
	cmp	r2, r3
	bne	.Lfc4
	ldr	r0, =.L35b8
.Lfc4:
	pop	{r1}
	bx	r1
.func_end OvlFunc_965_2008fac

