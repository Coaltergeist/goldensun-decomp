	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_916_2008c2c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	mov	r2, #0
	mov	r5, r0
	mov	r0, #0
	str	r2, [sp, #4]
	bl	__MapActor_GetActor
	mov	r7, r0
	ldrh	r3, [r7, #6]
	mov	r2, #0x80
	lsl	r2, #6
	add	r2, r3
	mov	r3, #0xc0
	lsl	r3, #8
	and	r2, r3
	ldr	r1, =0xfff00000
	ldr	r3, [r7, #8]
	mov	r8, r2
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r1
	add	r6, sp, #8
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	and	r3, r1
	add	r3, r2
	mov	r0, #0x80
	mov	r1, r8
	str	r3, [r6, #8]
	lsl	r0, #13
	mov	r2, r6
	bl	__vec3_translate
	ldr	r1, [r6]
	cmp	r1, #0
	bge	.Lm916_c8c
	ldr	r3, =0xfffff
	add	r1, r3
.Lm916_c8c:
	ldr	r2, [r6, #8]
	asr	r1, #20
	cmp	r2, #0
	bge	.Lm916_c98
	ldr	r3, =0xfffff
	add	r2, r3
.Lm916_c98:
	mov	r0, r5
	asr	r2, #20
	bl	OvlFunc_916_2008b8c
	mov	r5, r0
	cmp	r5, #0
	bne	.Lm916_ca8
	b	.Lm916_e2c
.Lm916_ca8:
	mov	r2, #0
	mov	r10, r2
	mov	r4, r6
.Lm916_cae:
	mov	r2, #2
	ldrsh	r3, [r5, r2]
	lsl	r3, #20
	str	r3, [r4]
	mov	r2, #4
	ldrsh	r3, [r5, r2]
	mov	r0, #0x80
	lsl	r3, #20
	str	r3, [r4, #8]
	lsl	r0, #13
	mov	r2, r4
	mov	r1, r8
	str	r4, [sp]
	bl	__vec3_translate
	ldr	r4, [sp]
	ldr	r0, [r4]
	cmp	r0, #0
	bge	.Lm916_cd8
	ldr	r3, =0xfffff
	add	r0, r3
.Lm916_cd8:
	ldr	r1, [r6, #8]
	asr	r0, #20
	cmp	r1, #0
	bge	.Lm916_ce4
	ldr	r2, =0xfffff
	add	r1, r2
.Lm916_ce4:
	asr	r1, #20
	mov	r3, #6
	ldrsh	r2, [r5, r3]
	str	r4, [sp]
	bl	OvlFunc_916_2008be4
	ldr	r4, [sp]
	cmp	r0, #0
	bne	.Lm916_d4e
	mov	r2, #1
	str	r2, [sp, #4]
	mov	r2, #6
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	bne	.Lm916_d14
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #14
	add	r2, r3
	mov	r11, r2
	ldr	r3, [r6, #8]
	mov	r2, #0x80
	lsl	r2, #12
	b	.Lm916_d24
.Lm916_d14:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #12
	add	r2, r3
	mov	r11, r2
	ldr	r3, [r6, #8]
	mov	r2, #0x80
	lsl	r2, #14
.Lm916_d24:
	add	r2, r3
	mov	r9, r2
	ldr	r3, [r6]
	cmp	r3, #0
	bge	.Lm916_d32
	ldr	r2, =0xfffff
	add	r3, r2
.Lm916_d32:
	asr	r3, #20
	strh	r3, [r5, #2]
	ldr	r3, [r6, #8]
	cmp	r3, #0
	bge	.Lm916_d40
	ldr	r2, =0xfffff
	add	r3, r2
.Lm916_d40:
	asr	r3, #20
	strh	r3, [r5, #4]
	mov	r3, #1
	add	r10, r3
	mov	r2, r10
	cmp	r2, #0xa
	ble	.Lm916_cae
.Lm916_d4e:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.Lm916_e2c
	ldr	r3, [r7, #8]
	ldr	r2, =0xfff00000
	mov	r0, #0x80
	lsl	r0, #12
	and	r3, r2
	add	r3, r0
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	and	r3, r2
	add	r3, r0
	mov	r1, r8
	str	r3, [r6, #8]
	mov	r2, r6
	bl	__vec3_translate
	mov	r1, r8
	ldr	r7, [r5, #8]
	cmp	r1, #0
	bge	.Lm916_d82
	ldr	r2, =0x3fff
	add	r1, r2
.Lm916_d82:
	asr	r5, r1, #14
	bl	__CutsceneStart
	mov	r1, #8
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__CutsceneWait
	ldr	r6, =0x3333
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r7, #0x30]
	mov	r0, #0xef
	str	r6, [r7, #0x34]
	bl	__PlaySound
	ldr	r3, =.Lm916_1164
	mov	r0, r7
	ldrb	r1, [r3, r5]
	bl	__Actor_SetAnim
	mov	r2, #0
	mov	r3, r9
	mov	r1, r11
	mov	r0, r7
	bl	__Actor_TravelTo
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	ldr	r1, =0xccc
	mov	r0, #0x1b
	bl	__galloc_ewram
	mov	r3, #0xf0
	lsl	r3, #1
	add	r0, r3
	ldr	r0, [r0]
	mov	r1, r7
	bl	__Camera_SetTarget
	mov	r0, #0
	ldr	r1, =0x4ccc
	mov	r2, r6
	bl	__MapActor_SetSpeed
	ldr	r3, =.Lm916_1168
	ldrsb	r1, [r3, r5]
	ldr	r3, =.Lm916_116c
	mov	r0, #0
	ldrsb	r2, [r3, r5]
	bl	__MapActor_TravelBy
	mov	r0, #0x18
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, r7
	bl	__Actor_WaitMovement
	mov	r1, #1
	mov	r0, r7
	bl	__Actor_SetAnim
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0xd5
	bl	__PlaySound
	mov	r0, #0xf
	bl	__CutsceneWait
	bl	__CutsceneEnd
.Lm916_e2c:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_916_2008c2c

