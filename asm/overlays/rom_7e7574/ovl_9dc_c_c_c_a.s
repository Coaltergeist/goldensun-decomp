	.include "macros.inc"

.thumb_func_start OvlFunc_959_200cd50
	push	{r5, lr}
	ldr	r5, =0x256c
	mov	r0, r5
	bl	__Func_8092b94
	ldr	r0, =0x800d
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xea
	bl	__Func_8078698
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L4d78
	add	r0, r5, #2
	mov	r1, #1
	bl	__Func_801776c
.L4d78:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200cd50

.thumb_func_start OvlFunc_959_200cd88
	push	{lr}
	ldr	r0, =0x256d
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200cd88

.thumb_func_start OvlFunc_959_200cda0
	push	{r5, r6, r7, lr}
	ldr	r5, =.L5fa4
	bl	__Func_8004458
	lsl	r3, r0, #3
	sub	r3, r0
	lsr	r3, #16
	ldr	r7, =ewram_2000240
	mov	r1, #0xe0
	str	r3, [r5]
	lsl	r1, #1
	add	r5, r7, r1
	mov	r3, #0
	ldrsh	r2, [r5, r3]
	ldr	r3, =0xa0
	ldrh	r1, [r5]
	cmp	r2, r3
	bne	.L4dd2
	mov	r0, #0xe0
	lsl	r0, #4
	bl	__Func_80108c4
	bl	OvlFunc_959_200cf60
	ldrh	r1, [r5]
.L4dd2:
	lsl	r3, r1, #16
	ldr	r2, =0xa1
	asr	r3, #16
	cmp	r3, r2
	bne	.L4de2
	bl	OvlFunc_959_200d0e4
	ldrh	r1, [r5]
.L4de2:
	lsl	r3, r1, #16
	ldr	r2, =0xa2
	asr	r3, #16
	cmp	r3, r2
	bne	.L4df2
	bl	OvlFunc_959_200d324
	ldrh	r1, [r5]
.L4df2:
	lsl	r3, r1, #16
	ldr	r2, =0xa3
	asr	r3, #16
	cmp	r3, r2
	beq	.L4dfe
	b	.L4f32
.L4dfe:
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	mov	r2, #0x81
	add	r3, r1
	lsl	r2, #2
	str	r2, [r3]
	mov	r0, #0xc
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_80924d4
	bl	OvlFunc_959_200d520
	mov	r0, #8
	bl	__Func_8092054
	mov	r5, r0
	cmp	r5, #0
	beq	.L4e42
	mov	r1, #0
	bl	__Func_800c528
.L4e42:
	mov	r3, r5
	add	r3, #0x23
	mov	r6, #2
	strb	r6, [r3]
	mov	r0, #9
	bl	__Func_8092054
	mov	r5, r0
	cmp	r5, #0
	beq	.L4e5c
	mov	r1, #0
	bl	__Func_800c528
.L4e5c:
	mov	r3, r5
	add	r3, #0x23
	strb	r6, [r3]
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r5, r0
	cmp	r5, #0
	beq	.L4e74
	mov	r1, #0
	bl	__Func_800c528
.L4e74:
	mov	r3, r5
	add	r3, #0x23
	mov	r0, #0xe0
	strb	r6, [r3]
	lsl	r0, #4
	bl	__Func_80108c4
	mov	r2, #0xe1
	lsl	r2, #1
	add	r5, r7, r2
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #4
	bne	.L4ea0
	mov	r0, #0xc0
	lsl	r0, #4
	bl	__Func_80108c4
	bl	OvlFunc_959_200b054
	ldrh	r2, [r5]
.L4ea0:
	lsl	r3, r2, #16
	mov	r2, #0xc0
	lsl	r2, #10
	cmp	r3, r2
	bne	.L4f14
	mov	r0, #0xc0
	lsl	r0, #4
	bl	__Func_80108c4
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L4f14
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r1, #0xd8
	mov	r2, #0xac
	mov	r0, #0x10
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xa0
	mov	r0, #0x10
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe4
	mov	r2, #0x90
	mov	r0, #0xd
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xa0
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe4
	mov	r2, #0xa0
	lsl	r1, #17
	mov	r0, #0x11
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r0, #0x11
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
.L4f14:
	mov	r0, #0xf
	bl	__Func_8092054
	mov	r5, r0
	cmp	r5, #0
	beq	.L4f26
	mov	r1, #0
	bl	__Func_800c528
.L4f26:
	mov	r2, r5
	mov	r3, #2
	add	r2, #0x23
	strb	r3, [r2]
	ldr	r3, =0xcccc
	str	r3, [r5, #0x18]
.L4f32:
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_959_200cda0

.thumb_func_start OvlFunc_959_200cf60
	push	{lr}
	sub	sp, #8
	bl	OvlFunc_959_200d470
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #2
	cmp	r3, #0x11
	bhi	.L5076
	ldr	r2, =.L4f84
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L4f84:
	.word	.L4fcc
	.word	.L4fcc
	.word	.L4fcc
	.word	.L4fcc
	.word	.L4fcc
	.word	.L4fcc
	.word	.L5076
	.word	.L5076
	.word	.L5076
	.word	.L5076
	.word	.L4ffa
	.word	.L505c
	.word	.L505c
	.word	.L505c
	.word	.L500c
	.word	.L500c
	.word	.L500c
	.word	.L4ffa
.L4fcc:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0xc8
	add	r2, #0x40
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_959_2009718
	bl	__Func_80041d8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_959_200975c
	bl	__Func_80041d8
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_959_20097bc
	lsl	r1, #4
	bl	__Func_80041d8
	b	.L5052
.L4ffa:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xc0
	add	r2, #0x49
	str	r2, [r3]
	b	.L5054
.L500c:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0xc8
	add	r2, #0x40
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_959_2009528
	bl	__Func_80041d8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_959_20099e8
	bl	__Func_80041d8
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	mov	r3, #0x6e
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x65
	mov	r1, #9
	mov	r2, #0xa
	mov	r3, #8
	bl	__Func_80105d4
.L5052:
	mov	r0, #0xe0
.L5054:
	lsl	r0, #4
	bl	__Func_80108c4
	b	.L508c
.L505c:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0xc8
	add	r2, #0x40
	str	r2, [r3]
	ldr	r0, =OvlFunc_959_200969c
	lsl	r1, #4
	bl	__Func_80041d8
	b	.L508c
.L5076:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xe0
	add	r2, #0x40
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_80108c4
.L508c:
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_8092950
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_8092950
	mov	r0, #1
	bl	__Func_80030f8
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200cf60

.thumb_func_start OvlFunc_959_200d0e4
	push	{r5, lr}
	bl	OvlFunc_959_200d4b0
	mov	r0, #9
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_8092950
	ldr	r0, =0x94c
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L5116
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.L5116:
	ldr	r0, =0x949
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L512a
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.L512a:
	ldr	r0, =0x94b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L513e
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.L513e:
	ldr	r0, =0xf2e
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L5152
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.L5152:
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0x1e
	bls	.L5166
	b	.L52b8
.L5166:
	ldr	r2, =.L5170
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L5170:
	.word	.L51ec
	.word	.L51ec
	.word	.L51ec
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L520a
	.word	.L527a
	.word	.L527a
	.word	.L520a
	.word	.L52ac
	.word	.L52ac
	.word	.L52ac
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L520a
	.word	.L5248
	.word	.L5248
	.word	.L520a
	.word	.L520a
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L5298
.L51ec:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xe0
	add	r2, #0x40
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_80108c4
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_959_2009150
	b	.L5264
.L520a:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xc0
	add	r2, #0x49
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_80108c4
	mov	r0, #0x18
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L52ce
	mov	r1, #0xda
	mov	r2, #0xf0
	mov	r0, #0x19
	lsl	r1, #18
	lsl	r2, #15
	bl	__Func_80923e4
	b	.L52ce
.L5248:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xe0
	add	r2, #0x40
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_80108c4
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_959_200938c
.L5264:
	bl	__Func_80041d8
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	b	.L52ce
.L527a:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	ldr	r0, =0x94a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L52ce
	bl	OvlFunc_959_200a06c
	b	.L52ce
.L5298:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	bl	OvlFunc_959_200a06c
	b	.L52ce
.L52ac:
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_959_2009a44
	lsl	r1, #4
	bl	__Func_80041d8
	b	.L52ce
.L52b8:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xe0
	add	r2, #0x40
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_80108c4
.L52ce:
	mov	r0, #8
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #8
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #8
	mov	r1, #1
	bl	__Func_8092b08
	mov	r3, #0xc0
	lsl	r3, #8
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200d0e4

.thumb_func_start OvlFunc_959_200d324
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	bl	OvlFunc_959_200d4dc
	ldr	r0, =0x943
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L5346
	bl	OvlFunc_959_2008c78
.L5346:
	ldr	r0, =0x217
	bl	__Func_8079358
	mov	r0, #0x86
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x944
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L536e
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	ldr	r0, =0x217
	bl	__Func_8079374
.L536e:
	ldr	r0, =0x945
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L5386
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	bl	OvlFunc_959_200a2d4
.L5386:
	ldr	r0, =0x946
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L53a2
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0x86
	lsl	r0, #2
	bl	__Func_8079374
.L53a2:
	ldr	r0, =0x947
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L53b0
	bl	OvlFunc_959_200a26c
.L53b0:
	ldr	r0, =0x948
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L53be
	bl	OvlFunc_959_200a2a0
.L53be:
	bl	__Func_80916b0
	mov	r0, #8
	bl	__Func_8092054
	mov	r5, r0
	cmp	r5, #0
	beq	.L53d6
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L53d6:
	mov	r0, #9
	bl	__Func_8092054
	mov	r5, r0
	cmp	r5, #0
	beq	.L53ea
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L53ea:
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r5, r0
	cmp	r5, #0
	beq	.L53fe
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L53fe:
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r5, r0
	cmp	r5, #0
	beq	.L5410
	mov	r1, #0
	bl	__Func_800c528
.L5410:
	mov	r3, r5
	add	r3, #0x23
	mov	r2, #2
	strb	r2, [r3]
	mov	r0, #0xc
	bl	__Func_8092054
	mov	r5, r0
	cmp	r5, #0
	beq	.L5430
	mov	r3, r5
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r1, #0x10
	orr	r2, r1
	strb	r2, [r3]
.L5430:
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	bl	__Func_8091750
	mov	r0, #0xe0
	lsl	r0, #4
	bl	__Func_80108c4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200d324

.thumb_func_start OvlFunc_959_200d470
	push	{lr}
	ldr	r0, =0x35a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L5482
	mov	r0, #0
	bl	OvlFunc_959_2008ee0
.L5482:
	ldr	r0, =0x35b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L5492
	mov	r0, #1
	bl	OvlFunc_959_2008ee0
.L5492:
	mov	r0, #0xd7
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L54a4
	mov	r0, #2
	bl	OvlFunc_959_2008ee0
.L54a4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200d470

