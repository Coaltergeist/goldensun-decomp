#include "gba/types.h"

// The one flash function that needs Camelot's gcc-2.96 (its committed
// asm was in gcc-2.96 output format, and old_agbcc -O produces a larger,
// non-matching body). Wraps the RAM-copied VerifyEraseSector_Core, returning
// 0x8004 if it reports a non-erased byte. The `verify(addr)` indirect call
// lowers to `bl _call_via_r1`. Built by the default %.o:%.c gcc296 rule; must
// link immediately after agb_flash_mx.o (ROM 0x6f6c, right after
// VerifyEraseSector_Core) so ProgramFlashSector_MX's copy-size is correct.
u16 VerifyEraseSector(u8 *addr, u32 (*verify)(u8 *))
{
    if (verify(addr) == 0)
        return 0;

    return 0x8004;
}
