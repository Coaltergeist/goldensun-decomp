/* Remaining diff: 1-instruction sched2 order swap at +0xa (`strh r1, [r3]` vs `lsl/asr r2, #24`
 * priority 2 vs 3 tie at clock 8 in BB0); all instructions, registers, `adds r3, #2`, and pool match 1:1. */
extern unsigned char ewram_2001004[];

static inline void SetBldCnt957(int v)
{
    REG_BLDCNT = v;
}

static inline void SetBldAlpha957(int v)
{
    REG_BLDALPHA = v;
}

void OvlFunc_957_2008a54(void)
{
    unsigned char raw = ewram_2001004[0];
    int level;

    SetBldCnt957(0x3f42);
    level = (signed char)raw;
    if (level == 0)
        SetBldAlpha957(0x1000);
    else if (level == 1)
        SetBldAlpha957(0xe00);
    else if (level == 2)
        SetBldAlpha957(0xc00);
    else if (level == 3)
        SetBldAlpha957(0xa00);
    else if (level == 4)
        SetBldAlpha957(0x800);
    else
        SetBldAlpha957(0x600);
}
