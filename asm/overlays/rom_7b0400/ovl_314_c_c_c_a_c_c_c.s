	.include "macros.inc"

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
.L2f84:
	mov	r0, #1
	bl	__CutsceneWait
	mov	r6, #1
	mov	r3, r8
	and	r6, r3
	cmp	r6, #0
	beq	.L2fde
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
	b	.L3024
.L2fde:
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
.L3024:
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0x1f
	bls	.L2f84
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

.thumb_func_start OvlFunc_925_200b060
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
.L30b8:
	mov	r0, #1
	bl	__CutsceneWait
	mov	r6, #1
	mov	r3, r8
	and	r6, r3
	cmp	r6, #0
	beq	.L3112
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
	mov	r3, #0x80
	add	r1, r0
	lsl	r3, #14
	add	r1, r3
	ldr	r3, =0xfffc0000
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
	b	.L3158
.L3112:
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
	mov	r3, #0x80
	add	r1, r0
	lsl	r3, #14
	add	r1, r3
	ldr	r3, =0xfffc0000
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
.L3158:
	mov	r2, r8
	cmp	r2, #0x14
	bne	.L3172
	mov	r1, #0x80
	mov	r0, #0x16
	lsl	r1, #1
	bl	__Func_8092950
	mov	r1, #0x80
	mov	r0, #0x18
	lsl	r1, #1
	bl	__Func_8092950
.L3172:
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0x1f
	bls	.L30b8
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_8092950
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_8092950
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	add	sp, #0x38
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_925_200b060

.thumb_func_start OvlFunc_925_200b1c0
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, r1
	asr	r2, #20
	ldr	r1, [r3]
	mov	r3, #0x40
	sub	r2, r3, r2
	mov	r6, r2
	mov	r5, r2
	mov	r4, #0
	add	r6, #8
	add	r5, #0xb
	add	r1, #0x14
.L31da:
	ldmia	r1!, {r3}
	cmp	r3, #0
	beq	.L31f8
	ldr	r2, [r3, #8]
	ldr	r3, [r3, #0x10]
	asr	r2, #20
	sub	r2, #4
	asr	r3, #20
	cmp	r2, #4
	bhi	.L31f8
	cmp	r6, r3
	bgt	.L31f8
	cmp	r3, r5
	bge	.L31f8
	stmia	r0!, {r4}
.L31f8:
	add	r4, #1
	cmp	r4, #0x41
	bls	.L31da
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_925_200b1c0

.thumb_func_start OvlFunc_925_200b208
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	mov	r1, #0xb2
	ldr	r3, [r3]
	lsl	r1, #1
	add	r1, r3
	sub	sp, #0x18
	mov	r11, r1
	mov	r1, #4
	ldr	r2, =0x1999
	add	r1, sp
	mov	r3, #0
	mov	r8, r1
	mov	r10, r2
	mov	r9, r3
	mov	r2, #0
	mov	r1, #0x42
	mov	r3, r8
.L3238:
	add	r2, #1
	stmia	r3!, {r1}
	cmp	r2, #4
	bls	.L3238
	mov	r2, r11
	ldr	r1, [r2, #0xc]
	mov	r0, r8
	bl	OvlFunc_925_200b1c0
	mov	r1, r8
	ldr	r3, [r1]
	mov	r2, #0
	cmp	r3, #0x42
	beq	.L327c
	mov	r6, #0
	mov	r5, #0
.L3258:
	mov	r3, r8
	ldr	r0, [r5, r3]
	str	r2, [sp]
	bl	__MapActor_GetActor
	ldr	r2, [sp]
	add	r0, #0x55
	mov	r1, #1
	add	r2, #1
	strb	r6, [r0]
	add	r9, r1
	add	r5, #4
	cmp	r2, #4
	bhi	.L327c
	mov	r1, r8
	ldr	r3, [r5, r1]
	cmp	r3, #0x42
	bne	.L3258
.L327c:
	mov	r0, #0xdf
	bl	__PlaySound
	mov	r2, #0
.L3284:
	mov	r1, r11
	ldr	r3, [r1, #0xc]
	mov	r1, r10
	sub	r3, r1
	mov	r7, #0
	mov	r1, r11
	str	r3, [r1, #0xc]
	cmp	r7, r9
	bcs	.L32c0
	mov	r6, r8
.L3298:
	ldr	r0, [r6]
	str	r2, [sp]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	add	r3, r10
	str	r3, [r0, #0x10]
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	mov	r5, r0
	ldmia	r6!, {r0}
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	add	r7, #1
	str	r3, [r5, #0x40]
	ldr	r2, [sp]
	cmp	r7, r9
	bcc	.L3298
.L32c0:
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	bne	.L32cc
	ldr	r3, =0x1999
	add	r10, r3
.L32cc:
	ldr	r1, =0x17fff
	cmp	r10, r1
	ble	.L32d8
	mov	r3, #0xc0
	lsl	r3, #9
	mov	r10, r3
.L32d8:
	mov	r0, #1
	str	r2, [sp]
	bl	__WaitFrames
	ldr	r2, [sp]
	add	r2, #1
	cmp	r2, #0xe3
	bls	.L3284
	mov	r2, #0
	cmp	r2, r9
	bcs	.L3306
	mov	r6, #0
	mov	r5, r8
.L32f2:
	ldmia	r5!, {r0}
	str	r2, [sp]
	bl	__MapActor_GetActor
	ldr	r2, [sp]
	add	r0, #0x55
	add	r2, #1
	strb	r6, [r0]
	cmp	r2, r9
	bcc	.L32f2
.L3306:
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_925_200b208

.thumb_func_start OvlFunc_925_200b324
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	mov	r1, #0xb2
	ldr	r3, [r3]
	lsl	r1, #1
	add	r1, r3
	sub	sp, #0x18
	mov	r11, r1
	add	r1, sp, #4
	mov	r2, #0xc0
	lsl	r2, #9
	mov	r3, #0
	mov	r8, r1
	mov	r10, r2
	mov	r9, r3
	mov	r2, #0
	mov	r1, #0x42
	mov	r3, r8
.L3354:
	add	r2, #1
	stmia	r3!, {r1}
	cmp	r2, #4
	bls	.L3354
	mov	r2, r11
	ldr	r1, [r2, #0xc]
	mov	r0, r8
	bl	OvlFunc_925_200b1c0
	mov	r1, r8
	ldr	r3, [r1]
	mov	r2, #0
	cmp	r3, #0x42
	beq	.L3398
	mov	r6, #0
	mov	r5, #0
.L3374:
	mov	r3, r8
	ldr	r0, [r5, r3]
	str	r2, [sp]
	bl	__MapActor_GetActor
	ldr	r2, [sp]
	add	r0, #0x55
	mov	r1, #1
	add	r2, #1
	strb	r6, [r0]
	add	r9, r1
	add	r5, #4
	cmp	r2, #4
	bhi	.L3398
	mov	r1, r8
	ldr	r3, [r5, r1]
	cmp	r3, #0x42
	bne	.L3374
.L3398:
	mov	r0, #0xdf
	bl	__PlaySound
	mov	r2, #0
.L33a0:
	mov	r1, r11
	ldr	r3, [r1, #0xc]
	mov	r7, #0
	add	r3, r10
	str	r3, [r1, #0xc]
	cmp	r7, r9
	bcs	.L33da
	mov	r6, r8
.L33b0:
	ldr	r0, [r6]
	str	r2, [sp]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r1, r10
	sub	r3, r1
	str	r3, [r0, #0x10]
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	mov	r5, r0
	ldmia	r6!, {r0}
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	add	r7, #1
	str	r3, [r5, #0x40]
	ldr	r2, [sp]
	cmp	r7, r9
	bcc	.L33b0
.L33da:
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	bne	.L33ea
	cmp	r2, #0x4b
	bls	.L33ea
	ldr	r3, =0xffffcccd
	add	r10, r3
.L33ea:
	ldr	r1, =0xccb
	cmp	r10, r1
	bgt	.L33f4
	ldr	r3, =0xccc
	mov	r10, r3
.L33f4:
	mov	r0, #1
	str	r2, [sp]
	bl	__WaitFrames
	ldr	r2, [sp]
	add	r2, #1
	cmp	r2, #0x55
	bls	.L33a0
	mov	r3, #0x80
	lsl	r3, #19
	mov	r1, r11
	str	r3, [r1, #0xc]
	bl	__Func_800fe9c
	mov	r0, #2
	bl	__WaitFrames
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_925_200b324

