	.include "macros.inc"

.thumb_func_start ActorCmd_Player_Climb  @ 0x0800f7f4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r4, #0x80
	mov	r3, #0x80
	mov	r6, r0
	lsl	r3, #7
	lsl	r4, #8
	str	r3, [r6, #0x34]
	str	r4, [r6, #0x30]
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	mov	r2, #0xf
	lsr	r3, #4
	and	r3, r2
	ldr	r1, =.L13254
	lsl	r3, #1
	ldrsh	r3, [r1, r3]
	mov	r0, #0xc
	lsl	r1, r3, #16
	ldr	r2, =0xffff
	mov	r9, r0
	mov	r3, #4
	lsr	r0, r1, #16
	sub	sp, #0x50
	mov	r10, r3
	cmp	r0, r2
	bne	.Lf832
	b	.Lf93a
.Lf832:
	mov	r2, #0xf0
	lsl	r2, #8
	mov	r3, #0xe
	and	r2, r0
	mov	r9, r3
	cmp	r2, #0
	beq	.Lf84c
	mov	r0, #0xf
	mov	r9, r0
	cmp	r2, r4
	beq	.Lf84c
	mov	r2, #0xa
	mov	r9, r2
.Lf84c:
	add	r5, sp, #0x44
	mov	r0, #0x80
	mov	r3, #0
	mov	r2, r5
	lsl	r0, #12
	lsr	r1, #16
	mov	r10, r3
	str	r3, [r5]
	str	r3, [r5, #4]
	str	r3, [r5, #8]
	bl	vec3_translate
	ldr	r3, [r5]
	ldr	r2, [r6, #8]
	add	r3, r2
	ldr	r2, [r5, #8]
	str	r3, [r5]
	cmp	r2, #0
	bge	.Lf878
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r6, #6]
.Lf878:
	cmp	r2, #0
	ble	.Lf882
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r6, #6]
.Lf882:
	ldr	r2, [r5, #8]
	ldr	r3, [r6, #0xc]
	sub	r3, r2
	str	r3, [r5, #4]
	ldr	r2, [r6, #0x10]
	ldr	r3, [r6, #8]
	str	r2, [r5, #8]
	cmp	r3, #0
	bge	.Lf898
	ldr	r0, =0xfffff
	add	r3, r0
.Lf898:
	asr	r0, r3, #20
	mov	r3, r2
	cmp	r2, #0
	bge	.Lf8a4
	ldr	r1, =0xfffff
	add	r3, r2, r1
.Lf8a4:
	asr	r3, #20
	lsl	r1, r3, #7
	add	r3, r0, r1
	ldr	r0, =gBuffer
	lsl	r3, #2
	add	r0, r3
	ldr	r3, [r5]
	mov	r8, r0
	cmp	r3, #0
	bge	.Lf8bc
	ldr	r0, =0xfffff
	add	r3, r0
.Lf8bc:
	asr	r3, #20
	add	r3, r1
	ldr	r1, =gBuffer
	lsl	r3, #2
	mov	r0, r5
	add	r7, r3, r1
	bl	Func_801219c
	cmp	r0, #0
	bne	.Lf8da
	mov	r3, r8
	ldrb	r2, [r3, #2]
	ldrb	r3, [r7, #2]
	cmp	r2, r3
	beq	.Lf8e4
.Lf8da:
	mov	r0, #4
	mov	r1, #0xc
	mov	r10, r0
	mov	r9, r1
	b	.Lf93a
.Lf8e4:
	ldr	r1, =gKeyHeld
	ldr	r3, [r1]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lf910
	mov	r3, r6
	add	r3, #0x22
	ldrb	r0, [r3]
	ldr	r2, [r5, #8]
	ldr	r3, =0xfff00000
	ldr	r1, [r5]
	add	r2, r3
	bl	Func_8011f54
	ldr	r3, [r6, #0xc]
	sub	r3, r0, r3
	mov	r0, #0x80
	lsl	r0, #13
	cmp	r3, r0
	bge	.Lf93a
	b	.Lf932
.Lf910:
	ldr	r3, [r1]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lf93a
	mov	r3, r6
	add	r3, #0x22
	ldrb	r0, [r3]
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	bl	Func_8011f54
	ldr	r3, [r6, #0xc]
	ldr	r1, =0xfff80000
	sub	r3, r0, r3
	cmp	r3, r1
	ble	.Lf93a
.Lf932:
	mov	r2, #1
	mov	r3, #0xc
	mov	r10, r2
	mov	r9, r3
.Lf93a:
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lf962
	mov	r2, #3
	mov	r0, r10
	and	r2, r0
	cmp	r2, #0
	beq	.Lf95a
	mov	r1, #0xce
	lsl	r1, #1
	add	r2, r3, r1
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lf962
.Lf95a:
	mov	r0, #0xce
	lsl	r0, #1
	add	r3, r0
	strh	r2, [r3]
.Lf962:
	mov	r1, r9
	mov	r0, r6
	bl	Actor_SetAnim
	mov	r1, r10
	cmp	r1, #0
	beq	.Lf984
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x3c]
	str	r3, [r6, #0x40]
	mov	r3, #0
	str	r3, [r6, #0x24]
	str	r3, [r6, #0x28]
	str	r3, [r6, #0x2c]
	b	.Lf992
.Lf984:
	add	r3, sp, #0x44
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	mov	r0, r6
	ldr	r3, [r3, #8]
	bl	Actor_TravelTo
.Lf992:
	ldrh	r3, [r6, #4]
	add	r3, #1
	mov	r0, #1
	strh	r3, [r6, #4]
	add	sp, #0x50
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end ActorCmd_Player_Climb

	.section .rodata
	.global .L13254
	.global .L13274
	.global .L13280
	.global .L1328c

.L13254:
	.incrom 0x13254, 0x13274
.L13274:
	.incrom 0x13274, 0x13280
.L13280:
	.incrom 0x13280, 0x1328c
.L1328c:
	.incrom 0x1328c, 0x132cc
