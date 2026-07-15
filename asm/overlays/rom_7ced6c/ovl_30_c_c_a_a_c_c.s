	.include "macros.inc"

.thumb_func_start OvlFunc_946_2008f70
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r2, #1
	lsl	r3, #2
	ldr	r6, =gState
	str	r3, [r1, r2]
	add	r2, r6
	mov	r1, #0
	ldrsh	r7, [r2, r1]
	ldr	r3, =0x7b
	sub	sp, #8
	mov	r8, r2
	cmp	r7, r3
	bne	.Lf9c
	bl	OvlFunc_946_200991c
	b	.L11cc
.Lf9c:
	ldr	r3, =0x7d
	cmp	r7, r3
	bne	.L102e
	ldr	r0, =0xef7
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lfe0
	mov	r3, #0xd
	str	r3, [sp]
	mov	r5, #0x28
	mov	r0, #0
	mov	r1, #3
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xf
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #2
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r1, #0xd8
	mov	r2, #0xa2
	mov	r0, #0x65
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_808edac
.Lfe0:
	mov	r1, r8
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	cmp	r3, r7
	bne	.L102e
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #5
	beq	.L1004
	ldr	r0, =0x8d1
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1004
	b	.L11cc
.L1004:
	ldr	r0, =0x8d1
	bl	__SetFlag
	mov	r3, #0xd
	mov	r2, #0x1e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r1, #0xd8
	mov	r2, #0xf4
	mov	r0, #0x64
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_808edac
	b	.L11cc
.L102e:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x71
	cmp	r2, r3
	beq	.L1040
	b	.L1170
.L1040:
	bl	OvlFunc_946_200967c
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0x81
	lsl	r3, #16
	str	r3, [r0, #0x38]
	mov	r0, #9
	bl	OvlFunc_946_20088c0
	mov	r0, #0xa
	bl	OvlFunc_946_20088c0
	mov	r0, #0x90
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L109a
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L108a
	mov	r2, r5
	add	r2, #0x59
	mov	r3, #0
	mov	r1, #4
	strb	r3, [r2]
	bl	__Actor_SetAnim
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.L108a:
	mov	r1, #0x98
	mov	r2, #0xb8
	mov	r0, #0
	lsl	r1, #17
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_8012078
.L109a:
	ldr	r0, =0x241
	bl	__GetFlag
	cmp	r0, #0
	beq	.L10d6
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L10c6
	mov	r2, r5
	add	r2, #0x59
	mov	r3, #0
	mov	r1, #4
	strb	r3, [r2]
	bl	__Actor_SetAnim
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.L10c6:
	mov	r1, #0xa0
	mov	r2, #0xb8
	mov	r0, #0
	lsl	r1, #15
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_8012078
.L10d6:
	ldr	r0, =0x242
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1112
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L1102
	mov	r2, r5
	add	r2, #0x59
	mov	r3, #0
	mov	r1, #4
	strb	r3, [r2]
	bl	__Actor_SetAnim
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.L1102:
	mov	r1, #0xc0
	mov	r2, #0xa8
	mov	r0, #0
	lsl	r1, #15
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_8012078
.L1112:
	ldr	r0, =0x243
	bl	__GetFlag
	cmp	r0, #0
	beq	.L115e
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L113e
	mov	r2, r5
	add	r2, #0x59
	mov	r3, #0
	mov	r1, #4
	strb	r3, [r2]
	bl	__Actor_SetAnim
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.L113e:
	mov	r1, #0x90
	mov	r2, #0xa0
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_8012078
	mov	r1, #0xbc
	mov	r2, #0xa0
	mov	r0, #0
	lsl	r1, #18
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_8012078
.L115e:
	ldr	r0, =0xfd7
	bl	__GetFlag
	cmp	r0, #0
	bne	.L11cc
	mov	r0, #8
	bl	OvlFunc_946_200aed8
	b	.L11cc
.L1170:
	ldr	r5, =0x7e
	cmp	r2, r5
	bne	.L11a2
	ldr	r0, =0xef4
	bl	__GetFlag
	cmp	r0, #0
	bne	.L11a2
	mov	r3, #0x25
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r1, #0x96
	mov	r2, #0xa8
	mov	r0, #0x64
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_808edac
.L11a2:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	cmp	r2, r5
	blt	.L11cc
	ldr	r3, =0x86
	cmp	r2, r3
	bgt	.L11cc
	bl	OvlFunc_946_2009214
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #5
	bne	.L11cc
	bl	OvlFunc_946_2009494
.L11cc:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_946_2008f70

	.section .text.after_9214, "ax", %progbits

.thumb_func_start OvlFunc_946_20092b4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r3, #20
	mov	r8, r3
	cmp	r3, #0x28
	bne	.L1356
	ldr	r3, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r2, r3
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	mov	r9, r2
	ldr	r3, =0x7e
	ldr	r2, =0x8d2
	sub	r2, r3
	mov	r10, r2
	add	r0, r10
	bl	__GetFlag
	mov	r7, r0
	cmp	r7, #0
	bne	.L1356
	mov	r6, r5
	mov	r3, #3
	add	r6, #0x55
	strb	r3, [r6]
	mov	r0, #8
	bl	__CutsceneWait
	mov	r0, #8
	bl	OvlFunc_946_2008e00
	mov	r0, #0x88
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092b08
	strb	r7, [r6]
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	mov	r2, r8
	mov	r3, #0xa
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x2a
	mov	r2, #1
	mov	r3, #1
	mov	r1, #0xa
	bl	__Func_8010704
	mov	r2, r9
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	add	r0, r10
	bl	__SetFlag
.L1356:
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_20092b4

