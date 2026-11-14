/*
 * Handwritten assembly in original ROM (Nintendo MP2K / Sappy `m4a_1.s`,
 * duplicate of `src/lib/m4a/m4a0.s` SoundMainBTM: saves r4 in r12, clears 64
 * bytes via 4x `stmia r0!, {r1-r4}`, restores r4 from r12, and returns via bare
 * `bx lr` without `push {lr}`). Cannot be emitted by camelot-gcc Thumb codegen.
 */
void SoundMainBTM(unsigned int *words)
{
    unsigned int i;
    for (i = 0; i < 16; ++i) {
        words[i] = 0;
    }
}

