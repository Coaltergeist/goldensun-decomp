typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;
typedef signed int s32;

extern u8 *iwram_3001ebc;
extern u8 gState[];
extern int __GetFlag(unsigned int flagNo);

/* マップアクターの状態に合わせてイベント値を設定する。 */
void OvlFunc_common1_148(void) {
    register u8 *mapWork asm("r5");
    register u8 *address asm("r3");
    register unsigned int offset asm("r1");
    register s32 actorNo asm("r2");

    mapWork = iwram_3001ebc;
    offset = 0xfa;
    address = gState;
    asm volatile("" : "+r"(address));
    offset <<= 1;
    address += offset;
    asm volatile("" : "+r"(address));
    actorNo = *(s32 *)address;
    asm volatile("" : "+r"(mapWork), "+r"(offset), "+r"(actorNo));

    if (actorNo != 0) {
        offset -= 0x76;
        address = mapWork + offset;
        asm volatile("" : "+r"(address));
        if (((s16)*(u16 *)address >> 10) == actorNo &&
            __GetFlag(0x141)) {
            register u8 *storeAddress asm("r2");
            register unsigned int value asm("r3");

            value = 0xc1;
            value <<= 1;
            storeAddress = mapWork + value;
            asm volatile("" : "+r"(storeAddress), "+r"(value));
            value = 0x63;
            *(u16 *)storeAddress = value;
        }
    }
}
