	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_951_2008e5c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r0, =.L2070
	mov	r9, r0
	mov	r1, #3
	mov	r2, r9
	sub	sp, #0x18
	mov	r8, r1
	add	r2, #0x1c
.Le74:
	ldr	r3, [r2]
	str	r3, [r2, #0xc]
	ldr	r3, [r2, #4]
	str	r3, [r2, #0x10]
	ldr	r3, [r2, #8]
	str	r3, [r2, #0x14]
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r4, r8
	sub	r2, #0xc
	cmp	r4, #0
	bne	.Le74
	mov	r1, r9
	mov	r0, #2
	ldrsh	r3, [r1, r0]
	cmp	r3, #0x1f
	bgt	.Le9a
	b	.L1224
.Le9a:
	ldr	r3, [r1, #4]
	ldr	r2, [r1, #0x40]
	add	r3, r2
	str	r3, [r1, #4]
	mov	r2, r9
	ldr	r1, [r1, #8]
	ldr	r0, [r2, #0x44]
	add	r1, r0
	ldr	r3, [r2, #0xc]
	str	r1, [r2, #8]
	ldr	r2, [r2, #0x48]
	mov	r4, r9
	add	r3, r2
	str	r3, [r4, #0xc]
	cmp	r1, #0
	ble	.Lebc
	b	.L121c
.Lebc:
	mov	r1, r8
	str	r1, [r4, #8]
	cmp	r0, #0
	beq	.Lee8
	str	r1, [r4, #0x44]
	ldr	r3, =.L20c0
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.Ledc
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetAnim
	b	.Lee8
.Ledc:
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetAnim
.Lee8:
	mov	r2, r9
	ldr	r3, [r2, #0x4c]
	cmp	r3, #0
	ble	.Lf72
	ldr	r3, [r2, #4]
	mov	r2, #0xf0
	lsl	r2, #15
	sub	r3, r2, r3
	mov	r4, r9
	asr	r7, r3, #8
	mov	r6, #0x8e
	ldr	r3, [r4, #0xc]
	lsl	r6, #15
	sub	r6, r3
	asr	r6, #8
	mov	r0, r7
	mul	r0, r7
	mov	r3, r6
	mul	r3, r6
	add	r0, r3
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	mov	r10, r0
	ldr	r0, =0x1999
	mov	r8, r0
	mov	r0, r8
	mul	r0, r7
	mov	r1, r10
	bl	_divsi3_RAM
	mov	r1, r9
	ldr	r3, [r1, #0x40]
	add	r7, r3, r0
	str	r7, [r1, #0x40]
	mov	r0, r8
	mul	r0, r6
	mov	r1, r10
	bl	_divsi3_RAM
	mov	r2, r9
	ldr	r3, [r2, #0x48]
	add	r2, r3, r0
	mov	r3, r9
	str	r2, [r3, #0x48]
	lsl	r3, r7, #6
	sub	r3, r7
	lsl	r3, #2
	add	r3, r7
	cmp	r3, #0
	bge	.Lf50
	add	r3, #0xff
.Lf50:
	asr	r3, #8
	mov	r4, r9
	str	r3, [r4, #0x40]
	lsl	r3, r2, #6
	sub	r3, r2
	lsl	r3, #2
	add	r3, r2
	cmp	r3, #0
	bge	.Lf64
	add	r3, #0xff
.Lf64:
	mov	r0, r9
	asr	r3, #8
	str	r3, [r0, #0x48]
	ldr	r3, [r0, #0x4c]
	sub	r3, #1
	str	r3, [r0, #0x4c]
	b	.L109a
.Lf72:
	mov	r1, r9
	ldr	r3, [r1, #0x40]
	mov	r1, #0xdc
	mul	r3, r1
	cmp	r3, #0
	bge	.Lf80
	add	r3, #0xff
.Lf80:
	asr	r2, r3, #8
	mov	r3, r9
	str	r2, [r3, #0x40]
	ldr	r3, [r3, #0x48]
	mul	r3, r1
	cmp	r3, #0
	bge	.Lf90
	add	r3, #0xff
.Lf90:
	ldr	r0, =0x3ff
	asr	r3, #8
	mov	r4, r9
	str	r3, [r4, #0x48]
	add	r3, r2, r0
	ldr	r2, =0x7fe
	cmp	r3, r2
	bhi	.Lfa4
	mov	r3, #0
	str	r3, [r4, #0x40]
.Lfa4:
	mov	r1, r9
	ldr	r3, [r1, #0x48]
	ldr	r4, =0x3ff
	add	r3, r4
	cmp	r3, r2
	bhi	.Lfb4
	mov	r3, #0
	str	r3, [r1, #0x48]
.Lfb4:
	mov	r0, r9
	ldr	r3, [r0, #0x40]
	cmp	r3, #0
	bne	.L109a
	ldr	r3, [r0, #0x48]
	cmp	r3, #0
	bne	.L109a
	ldr	r3, =.L20c0
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.Lff0
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r1, #2
	bl	__Actor_SetAnim
	mov	r0, #0xf
	mov	r1, #0
	bl	OvlFunc_951_2008e44
	mov	r0, #0xe
	mov	r1, #0
	bl	OvlFunc_951_2008e44
	mov	r0, #0xd
	mov	r1, #0
	bl	OvlFunc_951_2008e44
	b	.L1014
.Lff0:
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #2
	bl	__Actor_SetAnim
	mov	r0, #0xa
	mov	r1, #0
	bl	OvlFunc_951_2008e44
	mov	r0, #9
	mov	r1, #0
	bl	OvlFunc_951_2008e44
	mov	r0, #8
	mov	r1, #0
	bl	OvlFunc_951_2008e44
.L1014:
	mov	r1, r9
	ldr	r3, [r1, #4]
	mov	r2, #0xf0
	lsl	r2, #15
	ldr	r1, [r1, #0xc]
	sub	r2, r3
	mov	r3, #0x8e
	lsl	r3, #15
	sub	r3, r1
	asr	r2, #16
	asr	r3, #16
	mov	r4, r2
	mul	r4, r2
	mov	r0, r3
	mul	r0, r3
	mov	r2, r4
	mov	r3, r0
	add	r2, r3
	ldr	r3, =.L2134
	mov	r1, #1
	str	r1, [r3]
	cmp	r2, #0xe0
	bgt	.L1048
	ldr	r2, =.L2138
	mov	r3, #0
	b	.L1098
.L1048:
	mov	r3, #0x9c
	lsl	r3, #2
	cmp	r2, r3
	bgt	.L1056
	ldr	r3, =.L2138
	str	r1, [r3]
	b	.L109a
.L1056:
	mov	r4, #0x88
	lsl	r4, #3
	cmp	r2, r4
	bgt	.L1064
	ldr	r2, =.L2138
	mov	r3, #2
	b	.L1098
.L1064:
	mov	r0, #0xd2
	lsl	r0, #3
	cmp	r2, r0
	bgt	.L1094
	ldr	r2, =.L2138
	mov	r3, #3
	b	.L1098

	.pool_aligned

.L1094:
	ldr	r2, =.L2138
	mov	r3, #4
.L1098:
	str	r3, [r2]
.L109a:
	mov	r2, #0xf0
	lsl	r2, #15
	mov	r3, r9
	mov	r1, #0xc0
	mov	r10, r2
	mov	r0, #0xa8
	ldr	r2, [r3, #0xc]
	mov	r7, #0xc0
	lsl	r1, #16
	mov	r4, #0xc0
	lsl	r0, #14
	lsl	r7, #14
	mov	r8, r1
	lsl	r4, #13
	mov	r5, r2
	cmp	r2, r0
	bge	.L10f2
	mov	r3, #0xa8
	lsl	r3, #14
	sub	r3, r2
	mov	r2, #0x2a
	mov	r0, r3
	mul	r0, r2
	mov	r1, #0x12
	str	r4, [sp, #4]
	bl	_divsi3_RAM
	mov	r1, #0xc0
	lsl	r1, #14
	mov	r3, #0xb4
	add	r7, r0, r1
	lsl	r3, #15
	ldr	r4, [sp, #4]
	cmp	r7, r3
	ble	.L10e2
	mov	r7, r3
.L10e2:
	mov	r2, r8
	sub	r2, r0
	mov	r3, #0x96
	mov	r8, r2
	lsl	r3, #16
	cmp	r8, r3
	bge	.L10f2
	mov	r8, r3
.L10f2:
	mov	r0, #0xcc
	lsl	r0, #15
	cmp	r5, r0
	ble	.L1130
	mov	r3, #0x2a
	mov	r0, r5
	mul	r0, r3
	ldr	r1, =0xef440000
	add	r0, r1
	mov	r1, #0x12
	str	r4, [sp, #4]
	bl	_divsi3_RAM
	mov	r2, #0xc0
	lsl	r2, #14
	mov	r3, #0xb4
	add	r7, r0, r2
	lsl	r3, #15
	ldr	r4, [sp, #4]
	cmp	r7, r3
	ble	.L111e
	mov	r7, r3
.L111e:
	mov	r3, #0xc0
	lsl	r3, #16
	sub	r3, r0
	mov	r8, r3
	mov	r3, #0x96
	lsl	r3, #16
	cmp	r8, r3
	bge	.L1130
	mov	r8, r3
.L1130:
	mov	r0, r9
	ldr	r5, [r0, #4]
	mov	r1, #0xb4
	lsl	r1, #15
	mov	r6, r5
	cmp	r5, r1
	bge	.L1172
	mov	r3, #0xb4
	lsl	r3, #15
	sub	r3, r5
	lsl	r0, r3, #3
	add	r0, r3
	lsl	r0, #1
	mov	r1, #0x2a
	bl	_divsi3_RAM
	mov	r2, #0xc0
	lsl	r2, #13
	mov	r3, #0xa8
	add	r4, r0, r2
	lsl	r3, #14
	cmp	r4, r3
	ble	.L1160
	mov	r4, r3
.L1160:
	mov	r3, #0xf0
	lsl	r3, #15
	sub	r3, r0
	mov	r10, r3
	mov	r3, #0xcc
	lsl	r3, #15
	cmp	r10, r3
	bge	.L1172
	mov	r10, r3
.L1172:
	mov	r0, #0x96
	lsl	r0, #16
	cmp	r6, r0
	ble	.L11ac
	lsl	r0, r6, #3
	ldr	r1, =0xf5740000
	add	r0, r6
	lsl	r0, #1
	add	r0, r1
	mov	r1, #0x2a
	bl	_divsi3_RAM
	mov	r2, #0xc0
	lsl	r2, #13
	mov	r3, #0xa8
	add	r4, r0, r2
	lsl	r3, #14
	cmp	r4, r3
	ble	.L119a
	mov	r4, r3
.L119a:
	mov	r3, #0xf0
	lsl	r3, #15
	sub	r3, r0
	mov	r10, r3
	mov	r3, #0xcc
	lsl	r3, #15
	cmp	r10, r3
	bge	.L11ac
	mov	r10, r3
.L11ac:
	cmp	r6, r7
	bge	.L11c6
	mov	r0, r9
	ldr	r3, [r0, #0x40]
	str	r7, [r0, #4]
	cmp	r3, #0
	bge	.L11c4
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r0, #0x40]
.L11c4:
	mov	r5, r7
.L11c6:
	cmp	r5, r8
	ble	.L11e2
	mov	r2, r9
	ldr	r3, [r2, #0x40]
	mov	r1, r8
	str	r1, [r2, #4]
	cmp	r3, #0
	ble	.L11e2
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r0, r9
	str	r3, [r0, #0x40]
.L11e2:
	mov	r1, r9
	ldr	r2, [r1, #0xc]
	cmp	r2, r4
	bge	.L11fe
	ldr	r3, [r1, #0x48]
	str	r4, [r1, #0xc]
	cmp	r3, #0
	bge	.L11fc
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r1, #0x48]
.L11fc:
	mov	r2, r4
.L11fe:
	cmp	r2, r10
	ble	.L1224
	mov	r3, r9
	mov	r2, r10
	str	r2, [r3, #0xc]
	ldr	r3, [r3, #0x48]
	cmp	r3, #0
	ble	.L1224
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r4, r9
	str	r3, [r4, #0x48]
	b	.L1224
.L121c:
	ldr	r1, =0xffffc000
	mov	r2, r9
	add	r3, r0, r1
	str	r3, [r2, #0x44]
.L1224:
	mov	r3, #0
	mov	r8, r3
.L1228:
	mov	r4, r8
	lsl	r3, r4, #1
	ldr	r2, =.L20d0
	add	r3, r8
	lsl	r3, #3
	add	r6, r3, r2
	mov	r0, #0x12
	ldrsh	r3, [r6, r0]
	ldrh	r2, [r6, #0x12]
	cmp	r3, #0
	ble	.L1242
	sub	r3, r2, #1
	strh	r3, [r6, #0x12]
.L1242:
	mov	r1, #0x14
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6, #0x14]
	cmp	r3, #0
	ble	.L1250
	sub	r3, r2, #1
	strh	r3, [r6, #0x14]
.L1250:
	mov	r2, r8
	cmp	r2, #1
	bgt	.L12f4
	mov	r4, #0x10
	ldrsh	r3, [r6, r4]
	mov	r5, #0x80
	lsl	r5, #9
	cmp	r3, #1
	bne	.L1264
	lsl	r5, #1
.L1264:
	cmp	r3, #2
	bne	.L126c
	lsl	r3, r5, #1
	add	r5, r3, r5
.L126c:
	mov	r0, #0x12
	ldrsh	r3, [r6, r0]
	cmp	r3, #0
	ble	.L1282
	mov	r1, r8
	cmp	r1, #0
	bne	.L127e
	mov	r0, #0x12
	b	.L131a
.L127e:
	mov	r0, #0x13
	b	.L131a
.L1282:
	mov	r2, r8
	cmp	r2, #0
	bne	.L1296
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetAnim
	b	.L12a2
.L1296:
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetAnim
.L12a2:
	mov	r4, #0xe
	ldrsh	r3, [r6, r4]
	ldrh	r2, [r6, #0xe]
	cmp	r3, #0
	bne	.L12f0
	mov	r0, #0xc
	ldrsh	r3, [r6, r0]
	cmp	r3, #0
	bne	.L12ba
	ldr	r3, [r6]
	add	r3, r5
	b	.L12be
.L12ba:
	ldr	r3, [r6]
	sub	r3, r5
.L12be:
	str	r3, [r6]
	mov	r1, #0x80
	ldr	r2, [r6]
	lsl	r1, #15
	cmp	r2, r1
	bgt	.L12d8
	mov	r3, #0
	strh	r3, [r6, #0xc]
	mov	r3, r8
	cmp	r3, #1
	bne	.L12d8
	mov	r3, #0x1e
	strh	r3, [r6, #0xe]
.L12d8:
	ldr	r4, =0xafffff
	cmp	r2, r4
	bgt	.L12e0
	b	.L1410
.L12e0:
	mov	r3, #1
	mov	r0, r8
	strh	r3, [r6, #0xc]
	cmp	r0, #1
	beq	.L12ec
	b	.L1410
.L12ec:
	mov	r3, #0x1e
	b	.L140e
.L12f0:
	sub	r3, r2, #1
	b	.L140e
.L12f4:
	mov	r1, r8
	cmp	r1, #2
	bne	.L1384
	mov	r2, #0x10
	ldrsh	r3, [r6, r2]
	mov	r5, #0x40
	neg	r5, r5
	cmp	r3, #1
	bne	.L1308
	lsl	r5, #1
.L1308:
	cmp	r3, #2
	bne	.L1310
	lsl	r3, r5, #1
	add	r5, r3, r5
.L1310:
	mov	r4, #0x12
	ldrsh	r3, [r6, r4]
	cmp	r3, #0
	ble	.L1326
	mov	r0, #0x14
.L131a:
	bl	__MapActor_GetActor
	mov	r1, #3
	bl	__Actor_SetAnim
	b	.L1410
.L1326:
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r1, #2
	bl	__Actor_SetAnim
	mov	r1, #0xc
	ldrsh	r0, [r6, r1]
	bl	__sin
	lsl	r3, r0, #1
	add	r3, r0
	mov	r2, #0xe0
	lsl	r2, #15
	lsl	r3, #4
	add	r3, r2
	str	r3, [r6]
	mov	r3, #0xc
	ldrsh	r0, [r6, r3]
	bl	__cos
	lsl	r3, r0, #2
	add	r3, r0
	mov	r4, #0x90
	lsl	r3, #3
	lsl	r4, #15
	add	r3, r4
	str	r3, [r6, #8]
	ldrh	r3, [r6, #0xc]
	add	r2, r3, r5
	ldrh	r3, [r6, #0xe]
	add	r3, #1
	strh	r2, [r6, #0xc]
	b	.L140e

	.pool_aligned

.L1384:
	ldr	r3, =0x1ff
	ldrh	r2, [r6, #0xe]
	and	r2, r3
	mov	r0, #0x10
	ldrsh	r3, [r6, r0]
	mov	r5, #0x40
	cmp	r3, #1
	bne	.L1396
	mov	r5, #0x80
.L1396:
	cmp	r3, #2
	bne	.L13a4
	lsl	r3, r5, #1
	add	r5, r3, r5
	b	.L13a4

	.pool_aligned

.L13a4:
	mov	r1, #0x12
	ldrsh	r3, [r6, r1]
	cmp	r3, #0
	ble	.L13ba
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #3
	bl	__Actor_SetAnim
	b	.L140a
.L13ba:
	ldr	r3, =0x17f
	cmp	r2, r3
	bgt	.L13fe
	mov	r4, #0xc
	ldrsh	r0, [r6, r4]
	bl	__sin
	mov	r3, #0x34
	mul	r3, r0
	mov	r0, #0xe0
	lsl	r0, #15
	add	r3, r0
	str	r3, [r6]
	mov	r1, #0xc
	ldrsh	r0, [r6, r1]
	bl	__cos
	lsl	r3, r0, #1
	add	r3, r0
	mov	r2, #0x90
	lsl	r2, #15
	lsl	r3, #3
	add	r3, r2
	str	r3, [r6, #8]
	ldrh	r3, [r6, #0xc]
	add	r3, r5
	strh	r3, [r6, #0xc]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #2
	bl	__Actor_SetAnim
	b	.L140a
.L13fe:
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #3
	bl	__Actor_SetAnim
.L140a:
	ldrh	r3, [r6, #0xe]
	add	r3, #1
.L140e:
	strh	r3, [r6, #0xe]
.L1410:
	mov	r4, #0x14
	ldrsh	r3, [r6, r4]
	cmp	r3, #0
	bne	.L14ce
	mov	r0, r9
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bne	.L14ce
	ldr	r2, [r0, #4]
	ldr	r3, [r6]
	sub	r3, r2
	asr	r7, r3, #16
	ldr	r2, [r0, #0xc]
	ldr	r3, [r6, #8]
	sub	r3, r2
	asr	r5, r3, #16
	mov	r2, r7
	mul	r2, r7
	mov	r3, r5
	mul	r3, r5
	add	r0, r2, r3
	cmp	r0, #0x77
	bgt	.L14ce
	mov	r2, r9
	ldr	r1, [r2, #0x4c]
	cmp	r1, #0x1e
	ble	.L14ce
	mov	r4, #0xc0
	mov	r3, r8
	lsl	r4, #10
	cmp	r3, #1
	bgt	.L147a
	mov	r0, #0xc
	ldrsh	r3, [r6, r0]
	cmp	r3, #0
	bne	.L1466
	ldr	r3, [r2, #0x40]
	cmp	r3, r4
	bge	.L14b2
	mov	r3, r1
	sub	r3, #0x64
	str	r4, [r2, #0x40]
	b	.L14b0
.L1466:
	neg	r2, r4
	mov	r4, r9
	ldr	r3, [r4, #0x40]
	cmp	r3, r2
	ble	.L14b2
	mov	r3, r1
	sub	r3, #0x64
	str	r2, [r4, #0x40]
	str	r3, [r4, #0x4c]
	b	.L14b2
.L147a:
	str	r4, [sp, #4]
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	ldr	r4, [sp, #4]
	mov	r2, r0
	neg	r3, r7
	mov	r0, r3
	mul	r0, r4
	mov	r1, r2
	str	r2, [sp, #8]
	bl	_divsi3_RAM
	ldr	r2, [sp, #8]
	ldr	r4, [sp, #4]
	neg	r3, r5
	mov	r1, r9
	str	r0, [r1, #0x40]
	mov	r0, r3
	mul	r0, r4
	mov	r1, r2
	bl	_divsi3_RAM
	mov	r2, r9
	ldr	r3, [r2, #0x4c]
	sub	r3, #0x64
	str	r0, [r2, #0x48]
.L14b0:
	str	r3, [r2, #0x4c]
.L14b2:
	ldr	r0, =0x12d
	bl	__PlaySound
	mov	r3, #0x10
	ldrsh	r0, [r6, r3]
	mov	r1, #3
	add	r0, #1
	bl	_modsi3_RAM
	mov	r3, #0x24
	strh	r3, [r6, #0x12]
	mov	r3, #0x1e
	strh	r0, [r6, #0x10]
	strh	r3, [r6, #0x14]
.L14ce:
	mov	r4, r8
	cmp	r4, #1
	beq	.L14fc
	cmp	r4, #1
	bgt	.L14de
	cmp	r4, #0
	beq	.L14ea
	b	.L1556
.L14de:
	mov	r0, r8
	cmp	r0, #2
	beq	.L1516
	cmp	r0, #3
	beq	.L1538
	b	.L1556
.L14ea:
	mov	r1, #0x10
	ldrsh	r2, [r6, r1]
	ldr	r3, =.L2054
	ldrb	r3, [r3, r2]
	lsl	r2, #4
	add	r2, #0x10
	str	r2, [sp]
	mov	r0, #0x12
	b	.L150c
.L14fc:
	mov	r4, #0x10
	ldrsh	r2, [r6, r4]
	ldr	r3, =.L2054
	ldrb	r3, [r3, r2]
	lsl	r2, #4
	add	r2, #0x10
	str	r2, [sp]
	mov	r0, #0x13
.L150c:
	mov	r1, r6
	mov	r2, #0
	bl	OvlFunc_951_2008dd0
	b	.L1556
.L1516:
	mov	r0, #0xc
	ldrsh	r3, [r6, r0]
	mov	r2, #0x80
	lsl	r2, #8
	mov	r4, #0x10
	ldrsh	r1, [r6, r4]
	sub	r2, r3
	ldr	r3, =.L2057
	ldrb	r3, [r3, r1]
	lsl	r1, #4
	add	r1, #0x10
	str	r1, [sp]
	mov	r0, #0x14
	mov	r1, r6
	bl	OvlFunc_951_2008dd0
	b	.L1556
.L1538:
	mov	r0, #0xc
	ldrsh	r3, [r6, r0]
	ldr	r2, =0xffff
	mov	r4, #0x10
	ldrsh	r1, [r6, r4]
	sub	r2, r3
	ldr	r3, =.L2057
	ldrb	r3, [r3, r1]
	lsl	r1, #4
	add	r1, #0x10
	str	r1, [sp]
	mov	r0, #0x15
	mov	r1, r6
	bl	OvlFunc_951_2008dd0
.L1556:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	cmp	r1, #4
	beq	.L1562
	b	.L1228
.L1562:
	mov	r2, r9
	ldr	r3, [r2, #4]
	str	r3, [r2, #0x34]
	mov	r3, #0
	str	r3, [r2, #0x38]
	ldr	r3, [r2, #0xc]
	str	r3, [r2, #0x3c]
	ldr	r3, =.L20c0
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L15f0
	mov	r1, r9
	mov	r6, #0x10
	add	r1, #4
	mov	r0, #0x11
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_951_2008dd0
	mov	r1, r9
	add	r1, #0x34
	mov	r0, #0x10
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_951_2008dd0
	mov	r1, r9
	add	r1, #0x10
	mov	r0, #0xf
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_951_2008dd0
	mov	r1, r9
	add	r1, #0x1c
	mov	r0, #0xe
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_951_2008dd0
	mov	r1, r9
	mov	r2, #0
	mov	r3, #0
	add	r1, #0x28
	mov	r0, #0xd
	str	r6, [sp]
	bl	OvlFunc_951_2008dd0
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r1, #4
	bl	__Actor_SetAnim
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #4
	bl	__Actor_SetAnim
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r1, #4
	bl	__Actor_SetAnim
	b	.L1666
.L15f0:
	mov	r1, r9
	mov	r6, #0x10
	add	r1, #4
	mov	r0, #0xc
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_951_2008dd0
	mov	r1, r9
	add	r1, #0x34
	mov	r0, #0xb
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_951_2008dd0
	mov	r1, r9
	add	r1, #0x10
	mov	r0, #0xa
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_951_2008dd0
	mov	r1, r9
	add	r1, #0x1c
	mov	r0, #9
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_951_2008dd0
	mov	r1, r9
	mov	r2, #0
	mov	r3, #0
	add	r1, #0x28
	mov	r0, #8
	str	r6, [sp]
	bl	OvlFunc_951_2008dd0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #4
	bl	__Actor_SetAnim
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #4
	bl	__Actor_SetAnim
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #4
	bl	__Actor_SetAnim
.L1666:
	mov	r3, r9
	ldrh	r2, [r3, #2]
	mov	r0, #1
	mov	r4, #2
	ldrsh	r3, [r3, r4]
	neg	r0, r0
	cmp	r3, r0
	beq	.L167c
	add	r3, r2, #1
	mov	r1, r9
	strh	r3, [r1, #2]
.L167c:
	add	sp, #0x18
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_2008e5c

.thumb_func_start OvlFunc_951_20096a8
	push	{r5, r6, r7, lr}
	ldr	r0, =.L2070
	ldr	r6, =.L205a
	ldr	r2, =.L20d0
	ldr	r5, =.L2062
	ldr	r4, =.L205e
	mov	r7, #0
	mov	r1, #0
.L16b8:
	ldrb	r3, [r6]
	lsl	r3, #16
	str	r3, [r2]
	ldrb	r3, [r4]
	lsl	r3, #16
	str	r3, [r2, #8]
	ldrh	r3, [r5]
	add	r7, #1
	str	r1, [r2, #4]
	strh	r3, [r2, #0xc]
	strh	r1, [r2, #0xe]
	strh	r1, [r2, #0x10]
	strh	r1, [r2, #0x12]
	strh	r1, [r2, #0x14]
	add	r6, #1
	add	r4, #1
	add	r5, #2
	add	r2, #0x18
	cmp	r7, #4
	bne	.L16b8
	ldr	r3, =0xffe20000
	str	r3, [r0, #4]
	mov	r3, #0xc8
	mov	r2, #0
	lsl	r3, #15
	str	r2, [r0, #8]
	str	r3, [r0, #0xc]
	str	r2, [r0, #0x40]
	str	r2, [r0, #0x44]
	str	r2, [r0, #0x48]
	str	r2, [r0, #0x4c]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r1, #2
	bl	__Actor_SetAnim
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #2
	bl	__Actor_SetAnim
	ldr	r1, =0xc83
	ldr	r0, =OvlFunc_951_2008e5c
	bl	__StartTask
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_20096a8

.thumb_func_start OvlFunc_951_200973c
	push	{r5, r6, r7, lr}
	ldr	r5, =.L2070
	ldr	r3, =.L20c0
	mov	r2, #0
	str	r2, [r5, #8]
	str	r2, [r5, #0x14]
	str	r2, [r5, #0x20]
	str	r2, [r5, #0x2c]
	str	r0, [r3]
	ldr	r3, =.L2134
	str	r2, [r3]
	ldr	r3, =0xffff
	strh	r3, [r5, #2]
	ldr	r3, =.L2130
	ldr	r7, =ewram_2000434
	mov	r6, r3
	str	r2, [r3]
	b	.L1766
.L1760:
	ldr	r3, [r6]
	add	r3, #1
	str	r3, [r6]
.L1766:
	ldr	r3, [r6]
	cmp	r3, #0x32
	bne	.L1776
	mov	r0, #0x96
	lsl	r0, #1
	bl	__PlaySound
	ldr	r3, [r6]
.L1776:
	cmp	r3, #0x10
	bne	.L1816
	ldr	r0, [r7]
	mov	r1, #0x1d
	bl	__MapActor_SetAnim
	mov	r3, #0
	strh	r3, [r5, #2]
	ldr	r3, =0x14ccc
	str	r3, [r5, #0x40]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x44]
	ldr	r3, =0xfffe0000
	str	r3, [r5, #0x48]
	mov	r3, #0xf0
	lsl	r3, #15
	str	r3, [r5, #4]
	mov	r3, #0x80
	lsl	r3, #13
	str	r3, [r5, #8]
	mov	r3, #0x98
	lsl	r3, #16
	str	r3, [r5, #0xc]
	mov	r3, #0x96
	lsl	r3, #1
	str	r3, [r5, #0x4c]
	ldr	r3, =.L20c0
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L17e6
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r1, #3
	bl	__Actor_SetAnim
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetAnim
	mov	r0, #0xf
	mov	r1, #1
	bl	OvlFunc_951_2008e44
	mov	r0, #0xe
	mov	r1, #1
	bl	OvlFunc_951_2008e44
	mov	r0, #0xd
	mov	r1, #1
	bl	OvlFunc_951_2008e44
	b	.L1816
.L17e6:
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #3
	bl	__Actor_SetAnim
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetAnim
	mov	r0, #0xa
	mov	r1, #1
	bl	OvlFunc_951_2008e44
	mov	r0, #9
	mov	r1, #1
	bl	OvlFunc_951_2008e44
	mov	r0, #8
	mov	r1, #1
	bl	OvlFunc_951_2008e44
.L1816:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, =.L2134
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L1760
	ldr	r3, =.L2138
	ldr	r0, [r3]
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_951_200973c

	.section .data
	.global Events_GameBuildings
	.global Events_TolbiSpring
	.global .L1fc0
	.global gLuckyFountainPrizes
	.global .L200c
	.global .L2018
	.global .L1aec
	.global .L1cfc
	.global gOvl_02009a08
	.global MapEntrance_ARRAY_951__02009a08
gOvl_02009a08:
MapEntrance_ARRAY_951__02009a08:
	.incbin "overlays/rom_7d6418/orig.bin", 0x1a08, (0x1ac8-0x1a08)
	.global gOvl_02009ac8
gOvl_02009ac8:
	.incbin "overlays/rom_7d6418/orig.bin", 0x1ac8, (0x1aec-0x1ac8)
.L1aec:
	.incbin "overlays/rom_7d6418/orig.bin", 0x1aec, (0x1cfc-0x1aec)
.L1cfc:
	.incbin "overlays/rom_7d6418/orig.bin", 0x1cfc, (0x1e1c-0x1cfc)
Events_GameBuildings:
	.incbin "overlays/rom_7d6418/orig.bin", 0x1e1c, (0x1f30-0x1e1c)
Events_TolbiSpring:
	.incbin "overlays/rom_7d6418/orig.bin", 0x1f30, (0x1fc0-0x1f30)
.L1fc0:
	.incbin "overlays/rom_7d6418/orig.bin", 0x1fc0, (0x1fd0-0x1fc0)
gLuckyFountainPrizes:
	.incbin "overlays/rom_7d6418/orig.bin", 0x1fd0, (0x200c-0x1fd0)
.L200c:
	.incbin "overlays/rom_7d6418/orig.bin", 0x200c, (0x2018-0x200c)
.L2018:
	.incbin "overlays/rom_7d6418/orig.bin", 0x2018, (0x2054-0x2018)
.L2054:
	.incbin "overlays/rom_7d6418/orig.bin", 0x2054, (0x2057-0x2054)
.L2057:
	.incbin "overlays/rom_7d6418/orig.bin", 0x2057, (0x205a-0x2057)
.L205a:
	.incbin "overlays/rom_7d6418/orig.bin", 0x205a, (0x205e-0x205a)
.L205e:
	.incbin "overlays/rom_7d6418/orig.bin", 0x205e, (0x2062-0x205e)
.L2062:
	.incbin "overlays/rom_7d6418/orig.bin", 0x2062

	.section .bss

	.lcomm	.L2070, 0x50
	.lcomm	.L20c0, 0x10
	.lcomm	.L20d0, 0x60
	.lcomm	.L2130, 4
	.lcomm	.L2134, 4
	.lcomm	.L2138, 4
