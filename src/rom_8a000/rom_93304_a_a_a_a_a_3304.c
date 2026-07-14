extern unsigned int iwram_3001e8c;
extern unsigned char gState[];
extern unsigned char L9fc28[] __asm__(".L9fc28");
extern int Func_8092ba8(unsigned int actor_id);
extern int GetSpriteVoice(int sprite);

void Func_8093304(int value) {
    unsigned int base = iwram_3001e8c;

    if (value == (int)0x80000000) {
        register unsigned int off1 asm("r2") = 0x12f4;
        register unsigned int off2 asm("r1") = 0x12f6;
        register unsigned short *addr asm("r3");
        unsigned short val;

        addr = (unsigned short *)(base + off1);
        val = 0;
        *addr = val;
        addr = (unsigned short *)(base + off2);
        *addr = val;
    } else {
        int voice = GetSpriteVoice(Func_8092ba8(value));
        unsigned short tableVal = L9fc28[gState[0x20c]];
        *(unsigned short *)(base + 0x12f4) = voice;
        *(unsigned short *)(base + 0x12f6) = tableVal;
    }
}
