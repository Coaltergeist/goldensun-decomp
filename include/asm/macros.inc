// macros.inc
#ifndef ASM_MACROS_INC
#define ASM_MACROS_INC

#include <gba/constants.h>

/// Global symbol
.macro global name
	.global \name
\name
.endm

/// ...
.macro reloc name
	.global \name
	.set \name, RELOC_DEST + (. - RELOC_BASE)
_reloc$\name
.endm

/// Hack to perform indirect calls slightly more efficiently.
/// Since ARMv4 lacks a `blx` instruction, agbcc implements indirect calls by emitting a `bl`
/// to a "trampoline" routine which immediately does a `bx` to the appropriate register.
/// However, there's a better way: the THUMB `bl` instruction is actually comprised of two 
/// separate opcodes, the second of which essentially functions as a `bl lr` instruction.
/// gscc automatically makes use of this optimization in compiled code.
.macro blr r
	mov lr, \r
	.2byte 0xF800 ; second opcode of a THUMB bl instruction
.endm

/// THUMB interwork prologue for ARM routines, allowing them to be called as both ARM and THUMB.
/// When interpreted as an ARM opcode, this becomes `andeq r4, r0, #0x1E00000` (`02004778`), 
/// which clobbers `r4` but otherwise has no side effects. Since r4 is caller-saved in GS, this is ok.
/// Note that there are better opcodes that could be used which don't clobber general purpose registers,
/// for instance `tst r0, #0x1E00000` (`E3104778`) which only clobbers `cpsr`.
.macro .arm_entry
.if !GS1
.thumb
	bx pc
	.2byte 0x0200 ; skipped over in THUMB mode
.arm
.endif
.endm

/// Placeholder undefined ARM instruction for self-modifying code, used in `SoundMain_Impl`.
.macro .dummy
	.4byte 0xFEDCBA98
.endm

#endif // ASM_MACROS_INC