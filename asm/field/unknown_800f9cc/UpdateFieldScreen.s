	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start UpdateFieldScreen  @ 0x08010000
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r4, #0x82
	ldr	r1, [r3]
	mov	r8, r3
	lsl	r4, #1
	sub	sp, #8
	add	r4, r8
	cmp	r1, #0
	bne	.L10024
	b	.L101fe
.L10024:
	ldmia	r1!, {r3}
	ldr	r2, =0xff880000
	add	r7, r3, r2
	ldmia	r1!, {r2}
	ldr	r3, [r1]
	ldr	r1, =0xffa00000
	sub	r3, r2
	add	r6, r3, r1
	mov	r3, r8
	add	r3, #0xec
	mov	r2, r8
	ldr	r2, [r2, #4]
	ldr	r3, [r3]
	add	r0, r3, r2
	mov	r3, r8
	add	r3, #0xf4
	ldr	r3, [r3]
	mov	r12, r2
	sub	r3, r2
	ldr	r2, =0xff100000
	add	r1, r3, r2
	mov	r3, r8
	mov	r2, r8
	add	r3, #0xf0
	ldr	r5, [r2, #8]
	ldr	r3, [r3]
	add	r3, r5
	mov	r14, r3
	mov	r3, r8
	add	r3, #0xf8
	ldr	r3, [r3]
	ldr	r2, =0xff600000
	sub	r3, r5
	add	r3, r2
	cmp	r0, r1
	ble	.L1006e
	mov	r1, r0
.L1006e:
	cmp	r14, r3
	ble	.L10074
	mov	r3, r14
.L10074:
	cmp	r7, r0
	bge	.L1007a
	mov	r7, r0
.L1007a:
	cmp	r7, r1
	ble	.L10080
	mov	r7, r1
.L10080:
	cmp	r6, r14
	bge	.L10086
	mov	r6, r14
.L10086:
	cmp	r6, r3
	ble	.L1008c
	mov	r6, r3
.L1008c:
	mov	r3, r12
	cmp	r3, #0
	beq	.L100c4
	str	r4, [sp]
	bl	Random
	mov	r5, r0
	bl	Random
	mov	r2, r8
	ldr	r2, [r2, #4]
	mov	r1, r0
	mov	r14, r2
	ldr	r3, =Func_8000888
	mov	r0, r14
	sub	r1, r5, r1
	.call_via r3
	mov	r2, r8
	add	r7, r0
	ldr	r1, [r2, #0xc]
	mov	r0, r14
	.call_via r3
	mov	r3, r8
	str	r0, [r3, #4]
	ldr	r5, [r3, #8]
	ldr	r4, [sp]
.L100c4:
	cmp	r5, #0
	beq	.L100fa
	str	r4, [sp]
	bl	Random
	mov	r5, r0
	bl	Random
	mov	r2, r8
	ldr	r2, [r2, #8]
	mov	r1, r0
	mov	r14, r2
	ldr	r3, =Func_8000888
	mov	r0, r14
	sub	r1, r5, r1
	.call_via r3
	mov	r2, r8
	add	r6, r0
	ldr	r1, [r2, #0xc]
	mov	r0, r14
	.call_via r3
	mov	r3, r8
	str	r0, [r3, #8]
	ldr	r4, [sp]
.L100fa:
	mov	r1, r8
	add	r1, #0xe4
	mov	r2, #0xe8
	str	r1, [sp, #4]
	add	r2, r8
	str	r7, [r1]
	ldr	r1, =Func_8000888
	mov	r3, #0
	str	r6, [r2]
	mov	r11, r2
	mov	r10, r3
	mov	r9, r1
.L10112:
	ldr	r2, [sp, #4]
	ldr	r1, [r4, #0x10]
	ldr	r0, [r2]
	.call_via r9
	mov	r3, r11
	mov	r7, r0
	ldr	r1, [r4, #0x14]
	ldr	r0, [r3]
	.call_via r9
	ldr	r2, [r4, #0x18]
	mov	r6, r0
	cmp	r2, #0
	beq	.L10142
	ldr	r3, [r4, #0x20]
	add	r3, r2
	add	r7, r3
	str	r3, [r4, #0x20]
	ldrh	r3, [r4, #0x28]
	ldr	r2, =0x7ffff
	lsl	r3, #19
	orr	r3, r2
	and	r7, r3
.L10142:
	ldr	r2, [r4, #0x1c]
	cmp	r2, #0
	beq	.L1015a
	ldr	r3, [r4, #0x24]
	add	r3, r2
	add	r6, r3
	str	r3, [r4, #0x24]
	ldrh	r3, [r4, #0x2a]
	ldr	r2, =0x7ffff
	lsl	r3, #19
	orr	r3, r2
	and	r6, r3
.L1015a:
	ldr	r3, [r4, #8]
	add	r7, r3
	ldr	r3, [r4, #0xc]
	mov	r1, r7
	add	r6, r3
	cmp	r7, #0
	bge	.L1016c
	ldr	r2, =0x7ffff
	add	r1, r7, r2
.L1016c:
	asr	r1, #19
	mov	r8, r1
	mov	r2, r6
	cmp	r6, #0
	bge	.L1017a
	ldr	r3, =0x7ffff
	add	r2, r6, r3
.L1017a:
	ldr	r1, [r4]
	asr	r5, r2, #19
	mov	r3, r1
	mov	r2, #0x80
	eor	r3, r7
	lsl	r2, #12
	and	r3, r2
	cmp	r3, #0
	beq	.L101aa
	cmp	r1, r7
	bge	.L1019c
	mov	r1, r8
	add	r1, #0x1e
	mov	r0, r10
	mov	r2, r5
	str	r4, [sp]
	b	.L101a4
.L1019c:
	mov	r0, r10
	mov	r1, r8
	mov	r2, r5
	str	r4, [sp]
.L101a4:
	bl	UpdateScreenEdge_H
	ldr	r4, [sp]
.L101aa:
	ldr	r1, [r4, #4]
	mov	r2, #0x80
	mov	r3, r1
	eor	r3, r6
	lsl	r2, #13
	and	r3, r2
	cmp	r3, #0
	beq	.L101d8
	cmp	r1, r6
	bge	.L101ca
	mov	r2, r5
	add	r2, #0x14
	mov	r0, r10
	mov	r1, r8
	str	r4, [sp]
	b	.L101d2
.L101ca:
	mov	r0, r10
	mov	r1, r8
	mov	r2, r5
	str	r4, [sp]
.L101d2:
	bl	UpdateScreenEdge_V
	ldr	r4, [sp]
.L101d8:
	mov	r1, r10
	mov	r3, #3
	sub	r3, r1
	ldr	r1, =iwram_3001ad0
	lsl	r3, #2
	asr	r2, r7, #16
	strh	r2, [r1, r3]
	asr	r2, r6, #16
	add	r3, r1
	strh	r2, [r3, #2]
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	str	r7, [r4]
	str	r6, [r4, #4]
	add	r4, #0x30
	cmp	r3, #2
	bhi	.L101fe
	b	.L10112
.L101fe:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end UpdateFieldScreen
