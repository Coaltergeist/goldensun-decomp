	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bfba4  @ 0x080bfba4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x20
	str	r0, [sp, #0xc]
	ldrb	r0, [r0]
	mov	r1, #0
	mov	r8, r0
	str	r1, [sp, #4]
	bl	_GetUnit
	mov	r2, r8
	str	r0, [sp, #8]
	mov	r0, #0
	cmp	r2, #7
	bls	.Lbfbce
	mov	r0, #1
.Lbfbce:
	bl	_Func_8077330
	mov	r3, r0
	mov	r0, #0x84
	lsl	r0, #1
	mov	r6, r3
	add	r3, r0
	ldr	r3, [r3]
	ldr	r1, [sp, #4]
	add	r6, #8
	mov	r7, #0
	cmp	r1, r3
	bge	.Lbfc18
	mov	r2, #1
	neg	r2, r2
	mov	r10, r2
	mov	r5, r6
.Lbfbf0:
	ldrb	r3, [r5, #2]
	cmp	r3, r8
	bne	.Lbfc08
	mov	r3, #3
	ldrsb	r3, [r5, r3]
	cmp	r3, r10
	bne	.Lbfc08
	ldrb	r1, [r5]
	ldrb	r2, [r5, #1]
	mov	r0, r8
	bl	_Func_807a350
.Lbfc08:
	mov	r0, #0x80
	lsl	r0, #1
	add	r3, r6, r0
	ldr	r3, [r3]
	add	r7, #1
	add	r5, #4
	cmp	r7, r3
	blt	.Lbfbf0
.Lbfc18:
	mov	r0, #1
	mov	r1, #0
	bl	Func_80b6b40
	cmp	r0, #0
	beq	.Lbfc34
	mov	r0, #2
	mov	r1, #0
	bl	Func_80b6b40
	cmp	r0, #0
	beq	.Lbfc34
	mov	r1, #1
	str	r1, [sp, #4]
.Lbfc34:
	mov	r2, r8
	mov	r0, #0
	cmp	r2, #7
	bls	.Lbfc3e
	mov	r0, #1
.Lbfc3e:
	bl	_Func_8077330
	mov	r3, sp
	add	r3, #0x10
	str	r3, [sp]
	mov	r6, r0
	ldr	r0, [sp]
	add	r6, #8
	mov	r2, #0
	add	r3, sp, #0x1c
	mov	r12, r0
.Lbfc54:
	str	r2, [r3]
	sub	r3, #4
	cmp	r3, r12
	bge	.Lbfc54
	mov	r3, #0x80
	lsl	r3, #1
	mov	r1, #2
	add	r7, r6, r3
	neg	r1, r1
	mov	r9, r1
	mov	r11, r7
.Lbfc6a:
	mov	r2, #1
	ldr	r3, [r7]
	neg	r2, r2
	mov	r4, #0
	mov	r12, r2
	cmp	r4, r3
	bge	.Lbfc9e
	mov	r3, #3
	ldrsb	r3, [r6, r3]
	cmp	r3, r9
	bne	.Lbfc86
	ldrb	r3, [r6, #2]
	mov	r12, r3
	b	.Lbfc9e
.Lbfc86:
	ldr	r3, [r7]
	add	r4, #1
	cmp	r4, r3
	bge	.Lbfc9e
	lsl	r3, r4, #2
	add	r2, r6, r3
	mov	r3, #3
	ldrsb	r3, [r2, r3]
	cmp	r3, r9
	bne	.Lbfc86
	ldrb	r2, [r2, #2]
	mov	r12, r2
.Lbfc9e:
	mov	r3, #1
	neg	r3, r3
	cmp	r12, r3
	beq	.Lbfd18
	mov	r5, r3
	ldr	r3, [r7]
	cmp	r3, #0
	ble	.Lbfccc
	mov	r0, r11
	ldr	r4, [r0]
	mov	r2, r6
.Lbfcb4:
	ldrb	r3, [r2, #2]
	cmp	r3, r12
	bne	.Lbfcc4
	mov	r3, #3
	ldrsb	r3, [r2, r3]
	cmp	r3, r5
	ble	.Lbfcc4
	mov	r5, r3
.Lbfcc4:
	sub	r4, #1
	add	r2, #4
	cmp	r4, #0
	bne	.Lbfcb4
.Lbfccc:
	add	r5, #1
	cmp	r5, #1
	bgt	.Lbfcd4
	mov	r5, #2
.Lbfcd4:
	ldr	r3, [r7]
	mov	r4, #0
	cmp	r4, r3
	bge	.Lbfc6a
	mov	r2, #0x80
	mov	r1, #2
	lsl	r2, #1
	neg	r1, r1
	add	r2, r6
	ldr	r0, [sp]
	mov	r10, r1
	mov	r14, r2
	mov	r1, r6
.Lbfcee:
	ldrb	r3, [r1, #2]
	cmp	r3, r12
	bne	.Lbfd0a
	mov	r3, #3
	ldrsb	r3, [r1, r3]
	cmp	r3, r10
	bne	.Lbfd0a
	ldrb	r2, [r1]
	strb	r5, [r1, #3]
	lsl	r2, #2
	ldr	r3, [r0, r2]
	add	r3, #1
	str	r3, [r0, r2]
	add	r5, #1
.Lbfd0a:
	mov	r2, r14
	ldr	r3, [r2]
	add	r4, #1
	add	r1, #4
	cmp	r4, r3
	blt	.Lbfcee
	b	.Lbfc6a
.Lbfd18:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.Lbfd20
	b	.Lbff78
.Lbfd20:
	mov	r5, #0xa6
	mov	r0, #0
	lsl	r5, #1
	mov	r10, r0
	mov	r0, r5
	bl	alloc_ewram
	mov	r2, r5
	ldr	r3, =Func_8001af8
	ldr	r1, [sp, #8]
	mov	r9, r0
	bl	_call_via_r3
	mov	r7, #1
	ldr	r2, [sp]
	neg	r7, r7
	mov	r6, #0
.Lbfd42:
	ldmia	r2!, {r3}
	cmp	r3, r10
	ble	.Lbfd4c
	mov	r10, r3
	mov	r7, r6
.Lbfd4c:
	add	r6, #1
	cmp	r6, #3
	ble	.Lbfd42
	cmp	r7, #0
	blt	.Lbfd68
	mov	r1, #0x96
	lsl	r1, #1
	ldr	r0, [sp, #8]
	add	r2, r7, r1
	ldrsb	r3, [r0, r2]
	cmp	r3, r10
	bge	.Lbfd68
	mov	r1, r10
	strb	r1, [r0, r2]
.Lbfd68:
	mov	r0, r8
	bl	_CalcStats
	mov	r6, #0
	mov	r7, #0x48
.Lbfd72:
	ldr	r3, [sp, #8]
	mov	r1, r9
	ldrsh	r2, [r7, r3]
	ldrsh	r3, [r7, r1]
	sub	r5, r2, r3
	cmp	r5, #0
	ble	.Lbfde8
	bl	Func_80bdfec
	mov	r0, #0x19
	bl	Func_80bd808
	mov	r1, r8
	mov	r0, #0
	bl	Func_80bbabc
	mov	r1, r5
	mov	r0, #1
	bl	Func_80bbabc
	mov	r1, #0xaf
	mov	r0, #0xe
	bl	Func_80bbabc
	ldr	r1, =0x879
	mov	r0, #4
	add	r1, r6, r1
	bl	Func_80bbabc
	mov	r1, r8
	mov	r0, #0xb
	bl	Func_80bbabc
	mov	r0, #0xd4
	bl	_PlaySound
	mov	r0, r8
	bl	GetBattleActor
	mov	r1, #3
	ldr	r0, [r0]
	bl	_Actor_SetAnim
	mov	r0, r8
	bl	GetBattleActor
	mov	r1, #0x20
	ldr	r0, [r0]
	bl	_Actor_SetAnimSpeed
	mov	r3, r10
	mov	r1, r6
	mov	r2, #2
	sub	r3, #1
	mov	r0, r8
	bl	Anim_MoveIntro
	bl	Func_80be02c
.Lbfde8:
	add	r6, #1
	add	r7, #4
	cmp	r6, #3
	ble	.Lbfd72
	mov	r0, r9
	bl	free
	ldr	r1, [sp, #4]
	cmp	r1, #0
	bne	.Lbfdfe
	b	.Lbff78
.Lbfdfe:
	bl	Func_80bdfec
	ldr	r2, [sp, #0xc]
	ldr	r3, [r2, #0x60]
	cmp	r3, #0
	beq	.Lbfe68
	mov	r1, r8
	mov	r0, #8
	bl	Func_80bbabc
	mov	r1, r8
	mov	r0, #0
	bl	Func_80bbabc
	ldr	r3, [sp, #0xc]
	mov	r0, #1
	ldr	r1, [r3, #0x60]
	bl	Func_80bbabc
	ldr	r1, =0x84b
	mov	r0, #4
	bl	Func_80bbabc
	ldr	r0, [sp, #0xc]
	ldr	r1, [r0, #0x60]
	mov	r0, r8
	neg	r1, r1
	bl	_ModifyHP
	cmp	r0, #0
	bne	.Lbfe60
	mov	r1, r8
	mov	r0, #9
	bl	Func_80bbabc
	mov	r1, r8
	mov	r0, #0
	bl	Func_80bbabc
	mov	r1, r8
	cmp	r1, #7
	bhi	.Lbfe56
	ldr	r1, =0x825
	b	.Lbfe58
.Lbfe56:
	ldr	r1, =0x82b
.Lbfe58:
	mov	r0, #4
	bl	Func_80bbabc
	b	.Lbfe68
.Lbfe60:
	mov	r0, #0xb
	mov	r1, r8
	bl	Func_80bbabc
.Lbfe68:
	bl	Func_80bb938
	bl	Func_80bdfec
	ldr	r3, =0x131
	ldr	r2, [sp, #8]
	add	r6, r2, r3
	mov	r0, #0
	ldrsb	r0, [r6, r0]
	cmp	r0, #0
	beq	.Lbff04
	mov	r1, #0x34
	ldrsh	r3, [r2, r1]
	mov	r1, #0xa
	mul	r0, r3
	bl	__divsi3
	ldr	r3, =iwram_3001e74
	mov	r7, r0
	mov	r1, r8
	mov	r0, #8
	ldr	r5, [r3]
	bl	Func_80bbabc
	mov	r1, r8
	mov	r0, #0
	bl	Func_80bbabc
	mov	r1, r7
	mov	r0, #1
	bl	Func_80bbabc
	ldr	r1, =0x851
	mov	r0, #4
	bl	Func_80bbabc
	mov	r3, #0
	ldrsb	r3, [r6, r3]
	cmp	r3, #0
	beq	.Lbfec2
	mov	r3, #0x82
	lsl	r3, #4
	add	r2, r5, r3
	mov	r3, #0x86
	b	.Lbfeca
.Lbfec2:
	mov	r0, #0x82
	lsl	r0, #4
	add	r2, r5, r0
	mov	r3, #0x85
.Lbfeca:
	str	r3, [r2]
	neg	r1, r7
	mov	r0, r8
	bl	_ModifyHP
	cmp	r0, #0
	bne	.Lbfefc
	mov	r1, r8
	mov	r0, #9
	bl	Func_80bbabc
	mov	r1, r8
	mov	r0, #0
	bl	Func_80bbabc
	mov	r1, r8
	cmp	r1, #7
	bhi	.Lbfef2
	ldr	r1, =0x825
	b	.Lbfef4
.Lbfef2:
	ldr	r1, =0x82b
.Lbfef4:
	mov	r0, #4
	bl	Func_80bbabc
	b	.Lbff04
.Lbfefc:
	mov	r0, #0xb
	mov	r1, r8
	bl	Func_80bbabc
.Lbff04:
	bl	Func_80bb938
	bl	Func_80bdfec
	ldr	r3, =0x141
	ldr	r2, [sp, #8]
	add	r1, r2, r3
	ldrb	r2, [r1]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbff74
	add	r3, #0xff
	strb	r3, [r1]
	lsl	r3, #24
	cmp	r3, #0
	bne	.Lbff74
	mov	r1, #0xc0
	lsl	r1, #24
	mov	r0, r8
	bl	_ModifyHP
	cmp	r0, #0
	bne	.Lbff74
	mov	r1, r8
	mov	r0, #0
	bl	Func_80bbabc
	ldr	r5, =0x828
	mov	r0, #4
	mov	r1, r5
	bl	Func_80bbabc
	mov	r1, r8
	mov	r0, #8
	bl	Func_80bbabc
	mov	r1, r8
	mov	r0, #9
	bl	Func_80bbabc
	mov	r0, #0
	mov	r1, r8
	bl	Func_80bbabc
	mov	r0, r8
	cmp	r0, #7
	bhi	.Lbff6c
	sub	r1, r5, #3
	mov	r0, #4
	bl	Func_80bbabc
	b	.Lbff74
.Lbff6c:
	add	r1, r5, #3
	mov	r0, #4
	bl	Func_80bbabc
.Lbff74:
	bl	Func_80bb938
.Lbff78:
	mov	r0, r8
	bl	_CalcStats
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80bfba4
