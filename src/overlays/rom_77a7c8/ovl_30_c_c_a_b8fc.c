extern void __SetRegAnimDest(unsigned int reg, unsigned short value);
extern unsigned int iwram_3001e40;
extern unsigned short iwram_67a0 asm(".L67a0");

#define REG_BLDCNT 0x04000050
#define REG_BLDALPHA 0x04000052

void OvlFunc_881_200b8fc(void)
{
    __SetRegAnimDest(REG_BLDCNT, 0x3f41);
    if (iwram_3001e40 & 2) {
        __SetRegAnimDest(REG_BLDALPHA, 0xc | iwram_67a0);
    } else {
        __SetRegAnimDest(REG_BLDALPHA, 0x10 | iwram_67a0);
    }
}
