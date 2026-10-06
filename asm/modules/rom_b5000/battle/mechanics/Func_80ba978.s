	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80ba978  @ 0x080ba978
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f00
	mov	r7, r0
	ldr	r5, [r3]
	mov	r2, #0x80
	ldr	r3, [r7, #0x58]
	lsl	r2, #11
	and	r3, r2
	sub	sp, #0x58
	mov	r10, r1
	cmp	r3, #0
	beq	.Lba9aa
	ldrb	r3, [r7]
	ldr	r2, =0xffffe000
	cmp	r3, #7
	bls	.Lba9a2
	mov	r2, #0xa0
	lsl	r2, #7
.Lba9a2:
	mov	r3, #0x3c
	str	r2, [r5]
	str	r3, [r5, #4]
	b	.Lbaa28
.Lba9aa:
	ldrb	r0, [r7]
	bl	GetBattleActor
	ldr	r3, [r0]
	ldr	r1, [r3, #0x10]
	ldr	r0, [r3, #8]
	bl	atan2
	ldrb	r4, [r7]
	lsl	r0, #16
	ldr	r2, =0xffffe800
	lsr	r0, #16
	mov	r3, r4
	add	r1, r0, r2
	cmp	r3, #7
	bls	.Lba9d0
	mov	r3, #0xc0
	lsl	r3, #5
	add	r1, r0, r3
.Lba9d0:
	lsl	r3, r1, #16
	asr	r1, r3, #16
	mov	r3, r4
	cmp	r3, #7
	bhi	.Lba9e0
	mov	r3, #0x80
	lsl	r3, #6
	b	.Lba9e2
.Lba9e0:
	ldr	r3, =0xffffe000
.Lba9e2:
	sub	r3, r1
	lsl	r2, r3, #1
	add	r2, r3
	cmp	r2, #0
	bge	.Lba9ee
	add	r2, #3
.Lba9ee:
	asr	r3, r2, #2
	add	r1, r3
	ldrb	r3, [r7, #2]
	mov	r2, r4
	cmp	r3, #7
	bhi	.Lbaa08
	mov	r3, #0
	cmp	r2, #7
	bhi	.Lbaa02
	mov	r3, #1
.Lbaa02:
	cmp	r3, #0
	bne	.Lbaa14
	b	.Lbaa20
.Lbaa08:
	mov	r3, #0
	cmp	r2, #7
	bls	.Lbaa10
	mov	r3, #1
.Lbaa10:
	cmp	r3, #0
	beq	.Lbaa20
.Lbaa14:
	mov	r1, #0x90
	mov	r3, r4
	lsl	r1, #6
	cmp	r3, #7
	bls	.Lbaa20
	ldr	r1, =0xffffdc00
.Lbaa20:
	ldr	r3, [r5]
	cmp	r3, r1
	beq	.Lbaa28
	str	r1, [r5]
.Lbaa28:
	ldr	r3, [r7, #0x58]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r2
	cmp	r3, #0
	beq	.Lbaa46
	ldrb	r3, [r7]
	ldr	r2, =0xffffe000
	cmp	r3, #7
	bls	.Lbaa40
	mov	r2, #0x80
	lsl	r2, #6
.Lbaa40:
	mov	r3, #0x3c
	str	r2, [r5]
	str	r3, [r5, #4]
.Lbaa46:
	add	r5, sp, #4
	mov	r0, r7
	mov	r1, r5
	bl	InitAnimContext
	mov	r6, r10
	mov	r3, #1
	and	r6, r3
	cmp	r6, #0
	beq	.Lbaa5c
	str	r3, [r5, #0x1c]
.Lbaa5c:
	mov	r1, #0
	mov	r0, #0
	bl	Func_80c10e8
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	add	r3, #0x41
	ldrb	r0, [r3]
	mov	r3, #2
	neg	r3, r3
	and	r0, r3
	bl	_Func_801f200
	ldr	r0, [r5, #8]
	bl	GetBattleActor
	ldr	r0, [r0]
	mov	r1, #3
	mov	r8, r0
	bl	_Actor_SetAnim
	mov	r1, #0x10
	mov	r0, r8
	bl	_Actor_SetAnimSpeed
	mov	r0, #0x9a
	bl	_PlaySound
	mov	r3, #2
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.Lbaaac
	ldr	r0, [r5, #8]
	ldr	r1, [r7, #0x50]
	mov	r2, #1
	mov	r3, #0
	bl	Anim_MoveIntro
	b	.Lbaabc
.Lbaaac:
	cmp	r6, #0
	bne	.Lbaabc
	ldr	r0, [r5, #8]
	ldr	r1, [r7, #0x50]
	mov	r2, #0
	mov	r3, #0
	bl	Anim_MoveIntro
.Lbaabc:
	ldrb	r3, [r7, #2]
	cmp	r3, #7
	bhi	.Lbaac6
	mov	r3, #1
	b	.Lbaac8
.Lbaac6:
	mov	r3, #0
.Lbaac8:
	str	r3, [r5, #4]
	ldr	r3, [r5, #0x14]
	mov	r4, #0
	mov	r2, r5
	cmp	r3, #0
	beq	.Lbab1e
	mov	r6, #0
.Lbaad6:
	lsl	r3, r4, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	str	r4, [sp]
	bl	GetBattleActor
	mov	r1, #0
	ldr	r0, [r0]
	bl	Func_80b7f70
	mov	r3, r0
	add	r3, #0x27
	ldrb	r3, [r3]
	sub	r3, #1
	mov	r1, #0
	ldr	r4, [sp]
	cmp	r3, #0
	beq	.Lbab12
	mov	r12, r3
	add	r3, r6, r5
	mov	r2, r3
	add	r2, #0x34
	add	r0, #0x28
.Lbab04:
	ldmia	r0!, {r3}
	ldrb	r3, [r3, #5]
	add	r1, #1
	strb	r3, [r2]
	add	r2, #1
	cmp	r1, r12
	bne	.Lbab04
.Lbab12:
	ldr	r3, [r5, #0x14]
	add	r4, #1
	add	r6, #4
	mov	r2, r5
	cmp	r4, r3
	bne	.Lbaad6
.Lbab1e:
	ldr	r3, [r7, #0x5c]
	cmp	r3, #0
	beq	.Lbab4c
	cmp	r3, #1
	bne	.Lbab3a
	ldrb	r1, [r7]
	mov	r0, #0
	bl	Func_80bbabc
	ldr	r1, =0x856
	mov	r0, #4
	bl	Func_80bbabc
	b	.Lbab42
.Lbab3a:
	ldr	r1, =0x855
	mov	r0, #4
	bl	Func_80bbabc
.Lbab42:
	bl	Func_80bb938
	bl	Func_80c1a14
	b	.Lbabaa
.Lbab4c:
	mov	r1, #0xc8
	ldr	r0, =Func_80bd898
	lsl	r1, #4
	bl	StartTask
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lbab78
	ldr	r3, [r7, #0x58]
	mov	r2, #0x80
	lsl	r2, #7
	and	r3, r2
	cmp	r3, #0
	beq	.Lbab70
	mov	r0, r5
	bl	_Anim_Attack
	b	.Lbab7c
.Lbab70:
	mov	r0, r5
	bl	_Anim_Func
	b	.Lbab7c
.Lbab78:
	bl	Func_80c1a14
.Lbab7c:
	bl	Func_80be02c
	mov	r6, r5
	mov	r0, r8
	mov	r1, #1
	bl	_Actor_SetAnim
	ldr	r3, [r6, #0x14]
	mov	r4, #0
	cmp	r3, #0
	beq	.Lbabaa
	mov	r7, #0x24
.Lbab94:
	ldrsh	r0, [r6, r7]
	str	r4, [sp]
	bl	Func_80b8000
	mov	r5, r6
	ldr	r4, [sp]
	ldr	r3, [r5, #0x14]
	add	r4, #1
	add	r7, #2
	cmp	r4, r3
	bne	.Lbab94
.Lbabaa:
	mov	r0, #0
	add	sp, #0x58
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80ba978
