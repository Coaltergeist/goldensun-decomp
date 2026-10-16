#include "gba/types.h"

// The one Flash function built with gcc-2.96 rather than old_agbcc. Wraps the
// RAM-copied VerifyEraseSector_Core, returning 0x8004 if it reports a non-erased
// byte. Must link immediately after agb_flash_mx.o (ROM 0x6f6c) so
// ProgramFlashSector_MX's copy size is correct.
u16 VerifyEraseSector(u8 *addr, u32 (*verify)(u8 *))
{
    if (verify(addr) == 0)
        return 0;

    return 0x8004;
}
