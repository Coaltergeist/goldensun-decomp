extern unsigned char gState[];
extern unsigned char Map_71[] asm("0x71");
extern unsigned char Map_7b[] asm("0x7b");
extern unsigned char Map_86[] asm("0x86");
extern unsigned char Map_7e[] asm("0x7e");
extern unsigned char gScript_911__0200b610[];
extern unsigned char Script_3718[] asm(".L3718");
extern unsigned char Script_3850[] asm(".L3850");
extern unsigned char gOvl_0200b5f8[];

void *OvlFunc_946_2008d48(void)
{
    register int address asm("r3") = (int)gState;
    register int offset asm("r1") = 0xe0;
    register int map asm("r2");
    register void *script asm("r0");

    asm volatile("" : "+r"(address), "+r"(offset));
    offset <<= 1;
    address += offset;
    offset = 0;
    asm volatile("" : "+r"(address), "+r"(offset));
    map = *(short *)(address + offset);

    address = (int)Map_71;
    asm volatile("" : "+r"(address), "+r"(map));
    if (map == address) {
        script = gScript_911__0200b610;
        goto done;
    }

    address = (int)Map_7b;
    asm volatile("" : "+r"(address), "+r"(map));
    if (map == address) {
        script = Script_3718;
        goto done;
    }

    address = (int)Map_86;
    asm volatile("" : "+r"(address), "+r"(map));
    if (map <= address) {
        address = (int)Map_7e;
        asm volatile("" : "+r"(address), "+r"(map));
        if (map >= address) {
            script = Script_3850;
            goto done;
        }
    }

    script = gOvl_0200b5f8;
done:
    asm volatile("" : "+r"(script));
    return script;
}
