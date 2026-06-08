	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_957_2008d58
	push	{r5, lr}
	ldr	r3, =iwram_3001f30
	mov	r0, #0xb
	sub	sp, #0xc
	ldr	r5, [r3]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r1, sp
	str	r3, [r1]
	ldr	r3, [r0, #0xc]
	str	r3, [r1, #4]
	ldr	r3, [r0, #0x10]
	str	r3, [r1, #8]
	bl	__TestCollision
	cmp	r0, #0
	ble	.Ld84
	mov	r2, r5
	add	r2, #0x35
	mov	r3, #1
	strb	r3, [r2]
.Ld84:
	add	sp, #0xc
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008d58

.thumb_func_start OvlFunc_957_2008d90
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f30
	mov	r0, #0xb
	ldr	r5, [r3]
	sub	sp, #8
	bl	__MapActor_GetActor
	add	r5, #0x35
	ldrb	r5, [r5]
	lsl	r5, #24
	asr	r5, #24
	mov	r6, r0
	cmp	r5, #0
	bne	.Ldd8
	mov	r3, #0x49
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x4c
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Ldd2
	mov	r2, r6
	mov	r3, #2
	add	r2, #0x55
	strb	r3, [r2]
	mov	r3, r6
	add	r3, #0x23
	strb	r5, [r3]
.Ldd2:
	ldr	r0, =0x211
	bl	__SetFlag
.Ldd8:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008d90

.thumb_func_start OvlFunc_957_2008de8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r7, r5
	add	r7, #0x55
	ldrb	r3, [r7]
	mov	r8, r3
	ldr	r3, [r5, #8]
	mov	r6, sp
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	str	r3, [r6, #8]
	mov	r1, #0xf0
	ldrh	r3, [r5, #6]
	lsl	r1, #8
	mov	r0, #0x80
	and	r1, r3
	lsl	r0, #14
	mov	r2, r6
	bl	__vec3_translate
	mov	r0, r5
	mov	r1, r6
	bl	__TestCollision
	cmp	r0, #0
	bne	.Le9c
	bl	__CutsceneStart
	mov	r1, #6
	mov	r0, r5
	bl	__Actor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, r5
	mov	r1, #7
	bl	__Actor_SetAnim
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	ldrb	r2, [r7]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r7]
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r2, #2
	ldrsh	r1, [r6, r2]
	mov	r0, #0
	mov	r3, #0xa
	ldrsh	r2, [r6, r3]
	bl	__Func_8092158
	mov	r0, r5
	mov	r1, #6
	bl	__Actor_SetAnim
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r2, r8
	strb	r2, [r7]
	bl	__CutsceneEnd
.Le9c:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008de8

.thumb_func_start OvlFunc_957_2008eac
	push	{r5, lr}
	sub	sp, #0x20
	bl	__CutsceneStart
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_957_2008474
	cmp	r0, #0
	beq	.Led4
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0xc]
	bl	OvlFunc_957_2008608
.Led4:
	bl	__CutsceneEnd
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008eac

.thumb_func_start OvlFunc_957_2008ee0
	mov	r1, r0
	add	r1, #0x64
	ldrh	r3, [r1]
	ldr	r2, =3
	lsl	r3, #16
	asr	r3, #18
	ldr	r4, =.L4468
	and	r3, r2
	lsl	r3, #2
	ldr	r3, [r4, r3]
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	ldrh	r3, [r1]
	mov	r2, #0xf
	add	r3, #1
	and	r3, r2
	strh	r3, [r1]
	b	.Lf0c

	.pool_aligned

.Lf0c:
	bx	lr
.func_end OvlFunc_957_2008ee0

.thumb_func_start OvlFunc_957_2008f10
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r3, #0xfc
	lsl	r3, #17
	mov	r8, r3
	mov	r3, #0xc0
	lsl	r3, #13
	sub	sp, #0xc
	mov	r9, r1
	mov	r11, r2
	mov	r10, r3
	bl	__MapActor_GetActor
	mov	r3, r8
	mov	r5, sp
	mov	r6, r0
	str	r3, [r5]
	mov	r0, r9
	mov	r3, r10
	mov	r1, r11
	mov	r2, r5
	str	r3, [r5, #8]
	bl	__vec3_translate
	ldr	r3, [r5]
	str	r3, [r6, #8]
	mov	r7, #0x90
	ldr	r3, [r5, #8]
	lsl	r7, #16
	str	r3, [r6, #0xc]
	str	r7, [r6, #0x10]
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008f10

