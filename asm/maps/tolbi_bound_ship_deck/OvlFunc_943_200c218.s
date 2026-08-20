	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_200c218
	push	{lr}
	mov	r0, #0xe8
	mov	r1, #1
	mov	r2, #0xa9
	mov	r3, #0
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r1, #0xe8
	mov	r2, #0xa9
	lsl	r1, #16
	lsl	r2, #18
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r0, #1
	bl	__WaitFrames
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200c218

	.section .data
	.global ActorCmd_ARRAY_943__0200c464
	.global gScript_943__0200c49c
	.global gScript_943__0200c4d8
	.global gScript_943__0200c4ec
	.global gScript_943__0200c58c
	.global gScript_943__0200c628
	.global gScript_943__0200c764
	.global gScript_943__0200c7a8
	.global gScript_943__0200c7ec
	.global gScript_943__0200c80c
	.global gScript_943__0200c814
	.global gScript_943__0200c888
	.global gScript_943__0200c8b0
	.global gScript_943__0200c8c4
	.global gScript_943__0200c8d8
	.global gScript_943__0200c8e0
	.global gScript_943__0200c980
	.global .Lm943_4ba8
	.global .Lm943_4cf8
	.global .Lm943_4ef0
	.global .Lm943_5028
	.global .Lm943_5160
	.global .Lm943_5208
	.global .Lm943_5268
	.global .Lm943_5340
	.global .Lm943_5418
	.global gScript_968__0200d508
	.global .Lm943_5778
	.global .Lm943_5958
	.global .Lm943_59d0
	.global .Lm943_5a54
	.global .Lm943_5b08

ActorCmd_ARRAY_943__0200c464:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4464, (0x449c-0x4464)
gScript_943__0200c49c:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x449c, (0x44d8-0x449c)
gScript_943__0200c4d8:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x44d8, (0x44ec-0x44d8)
gScript_943__0200c4ec:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x44ec, (0x458c-0x44ec)
gScript_943__0200c58c:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x458c, (0x4628-0x458c)
gScript_943__0200c628:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4628, (0x4764-0x4628)
gScript_943__0200c764:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4764, (0x47a8-0x4764)
gScript_943__0200c7a8:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x47a8, (0x47ec-0x47a8)
gScript_943__0200c7ec:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x47ec, (0x480c-0x47ec)
gScript_943__0200c80c:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x480c, (0x4814-0x480c)
gScript_943__0200c814:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4814, (0x4888-0x4814)
gScript_943__0200c888:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4888, (0x48b0-0x4888)
gScript_943__0200c8b0:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x48b0, (0x48c4-0x48b0)
gScript_943__0200c8c4:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x48c4, (0x48d8-0x48c4)
gScript_943__0200c8d8:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x48d8, (0x48e0-0x48d8)
gScript_943__0200c8e0:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x48e0, (0x4918-0x48e0)
	.global gScript_943__0200c918
gScript_943__0200c918:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4918, (0x4980-0x4918)
gScript_943__0200c980:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4980, (0x4994-0x4980)
	.global gOvl_0200c994
gOvl_0200c994:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4994, (0x4b44-0x4994)
	.global gOvl_0200cb44
gOvl_0200cb44:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4b44, (0x4b64-0x4b44)
	.global gOvl_0200cb64
gOvl_0200cb64:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4b64, (0x4ba8-0x4b64)
.Lm943_4ba8:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4ba8, (0x4cf8-0x4ba8)
.Lm943_4cf8:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4cf8, (0x4ef0-0x4cf8)
.Lm943_4ef0:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x4ef0, (0x5028-0x4ef0)
.Lm943_5028:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5028, (0x5160-0x5028)
.Lm943_5160:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5160, (0x51d8-0x5160)
.Lm943_51d8:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x51d8, (0x5208-0x51d8)
.Lm943_5208:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5208, (0x5268-0x5208)
.Lm943_5268:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5268, (0x5340-0x5268)
.Lm943_5340:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5340, (0x5418-0x5340)
.Lm943_5418:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5418, (0x5508-0x5418)
gScript_968__0200d508:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5508, (0x5778-0x5508)
.Lm943_5778:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5778, (0x5958-0x5778)
.Lm943_5958:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5958, (0x59d0-0x5958)
.Lm943_59d0:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x59d0, (0x5a54-0x59d0)
.Lm943_5a54:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5a54, (0x5b08-0x5a54)
.Lm943_5b08:
	.incbin "overlays/rom_7c7b9c/orig.bin", 0x5b08

	.section .bss
	.global .Lm943_5b30
	.global .Lm943_5b38
	.global .Lm943_5b40
	.global .Lm943_5b50
	.global .Lm943_5b58
	.global .Lm943_5b60
	.global .Lm943_5b70
	.global .Lm943_5b90

	.lcomm	.Lm943_5b30, 8
	.lcomm	.Lm943_5b38, 4
	.lcomm	.Lm943_unused_5b3c, 4
	.lcomm	.Lm943_5b40, 0x10
	.lcomm	.Lm943_5b50, 8
	.lcomm	.Lm943_5b58, 4
	.lcomm	.Lm943_unused_5b5c, 4
	.lcomm	.Lm943_5b60, 8
	.lcomm	.Lm943_unused_5b68, 4
	.lcomm	.Lm943_unused_5b6c, 4
	.lcomm	.Lm943_5b70, 0x20
	.lcomm	.Lm943_5b90, 4
