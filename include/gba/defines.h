#ifndef GUARD_GBA_DEFINES_H
#define GUARD_GBA_DEFINES_H

// Section / attribute macros and the SoundInfo IWRAM pointer used by the
// stock m4a engine. Ported from the SA2 decomp's gba/defines.h. Golden Sun
// is GBA-only, so the non-GBA fallbacks are omitted.

#define EWRAM_DATA __attribute__((section("ewram_data")))
#define ALIGNED(n) __attribute__((aligned(n)))
#define UNUSED     __attribute__((unused))

// IWRAM pointer to the live SoundMixerState (set up by SoundInit).
#define SOUND_INFO_PTR (*(struct SoundMixerState **)0x3007FF0)

#endif // GUARD_GBA_DEFINES_H
