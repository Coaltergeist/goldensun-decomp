extern unsigned char gState[];
extern unsigned char MapScript_3e70[] asm(".L3e70");
extern unsigned char MapScript_4110[] asm(".L4110");
extern unsigned char MapScript_3e94[] asm(".L3e94");
extern unsigned char MapScript_3f60[] asm(".L3f60");
extern unsigned char MapScript_3e64[] asm(".L3e64");
extern unsigned char Value_8c[] asm("0x8c");
extern unsigned char Value_8d[] asm("0x8d");
extern unsigned char Value_8e[] asm("0x8e");

void *OvlFunc_953_2008238(void)
{
    /* Fixed registers retain gState across the second selector load. */
    register unsigned int state asm("r1") = (unsigned int)gState;
    register unsigned int offset asm("r0") = 0xe0;
    register unsigned int address asm("r3");
    register int mapId asm("r2");
    register void *result asm("r0");

    asm volatile("" : "+r"(state), "+r"(offset));
    offset <<= 1;
    address = state + offset;
    offset = 0;
    asm volatile("" : "+r"(state), "+r"(offset), "+r"(address));
    mapId = *(short *)(address + offset);

    address = (unsigned int)Value_8d;
    asm volatile("" : "+r"(state), "+r"(address), "+r"(mapId));
    if (mapId == address) {
        result = MapScript_3e70;
        goto done;
    }

    address = (unsigned int)Value_8c;
    asm volatile("" : "+r"(state), "+r"(address), "+r"(mapId));
    if (mapId == address) {
        mapId = 0xe1;
        mapId <<= 1;
        address = state + mapId;
        offset = 0;
        asm volatile("" : "+r"(address), "+r"(offset));
        address = *(short *)(address + offset);
        if (address == 0xc)
            result = MapScript_4110;
        else
            result = MapScript_3e94;
        goto done;
    }

    address = (unsigned int)Value_8e;
    asm volatile("" : "+r"(address), "+r"(mapId));
    if (mapId == address)
        result = MapScript_3f60;
    else
        result = MapScript_3e64;

done:
    asm volatile("" : "+r"(result));
    return result;
}
