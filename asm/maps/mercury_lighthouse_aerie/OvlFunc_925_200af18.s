	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_925_200af18
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0x16
	sub	sp, #0x38
	bl	__MapActor_GetActor
	mov	r9, r0
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r10, r0
	mov	r0, #0xbe
	bl	__PlaySound
	mov	r1, #0x80
	mov	r0, #0x16
	lsl	r1, #1
	bl	__Func_8092950
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0x18
	bl	__Func_8092950
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, #1
	add	r7, sp, #0x10
	str	r3, [r7]
	mov	r3, #5
	str	r3, [r7, #4]
	mov	r3, #0x8e
	lsl	r3, #1
	strh	r3, [r7, #0x18]
	ldr	r3, =0x6666
	str	r3, [r7, #8]
	mov	r3, #0xc0
	lsl	r3, #10
	mov	r2, #0
	str	r3, [r7, #0xc]
	mov	r8, r2
.Lm925_2f84:
	mov	r0, #1
	bl	__CutsceneWait
	mov	r6, #1
	mov	r3, r8
	and	r6, r3
	cmp	r6, #0
	beq	.Lm925_2fde
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	mov	r2, r9
	lsl	r3, #3
	ldr	r5, [r2, #8]
	lsr	r3, #16
	lsl	r3, #16
	add	r5, r3
	ldr	r3, =0xfff40000
	add	r5, r3
	bl	__Random
	mov	r2, r9
	lsl	r0, #5
	ldr	r1, [r2, #0xc]
	lsr	r0, #16
	lsl	r0, #16
	ldr	r3, =0xfff00000
	add	r1, r0
	add	r1, r3
	mov	r3, #0x80
	lsl	r3, #11
	ldr	r2, [r2, #0x10]
	str	r3, [sp]
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r3, #0xd8
	lsl	r3, #13
	str	r3, [sp, #8]
	mov	r0, r5
	mov	r3, #0
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	b	.Lm925_3024
.Lm925_2fde:
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	mov	r2, r10
	lsl	r3, #3
	ldr	r5, [r2, #8]
	lsr	r3, #16
	lsl	r3, #16
	add	r5, r3
	ldr	r3, =0xfff40000
	add	r5, r3
	bl	__Random
	mov	r2, r10
	lsl	r0, #5
	ldr	r1, [r2, #0xc]
	lsr	r0, #16
	lsl	r0, #16
	ldr	r3, =0xfff00000
	add	r1, r0
	add	r1, r3
	mov	r3, #0x80
	lsl	r3, #11
	ldr	r2, [r2, #0x10]
	str	r3, [sp]
	mov	r3, #0xd8
	lsl	r3, #13
	str	r3, [sp, #8]
	mov	r0, r5
	mov	r3, #0
	str	r6, [sp, #4]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
.Lm925_3024:
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0x1f
	bls	.Lm925_2f84
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	add	sp, #0x38
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_925_200af18

