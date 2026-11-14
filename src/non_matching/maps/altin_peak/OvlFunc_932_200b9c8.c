/* Matches 100% byte-for-byte under -fstrict-aliasing (GAIA_CFLAGS).
 * Under -fno-strict-aliasing, strh for Lm932_5260++ has a false alias dependency
 * with ldrsb s8_ARRAY_932__0200bd28[...], preventing sched2 from moving strh
 * from +0x18 to +0x22.
 */
extern short Lm932_5260 __asm__(".Lm932_5260");
extern short Lm932_525c __asm__(".Lm932_525c");
extern signed char s8_ARRAY_932__0200bd28[];
extern unsigned char *iwram_3001ed0;

void OvlFunc_932_200b9c8(void)
{
    unsigned char *base = iwram_3001ed0;
    int v;

    if (Lm932_525c <= 0) {
    retry:
        v = s8_ARRAY_932__0200bd28[Lm932_5260++];
        if (v == -1) {
            Lm932_5260 = 0;
            goto retry;
        }
        Lm932_525c = s8_ARRAY_932__0200bd28[Lm932_5260++];
        DMA3_COPY16(base + (v << 1), (void *)0x5000006, 0x24);
    }
    Lm932_525c--;
}
