// fakematch
/* Cluster OvlFunc_939_20089d4..OvlFunc_939_20089d4 extracted from goldensun/asm/overlays/rom_7c460c/ovl_314_a_c_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c460c/ovl_314_a_c_c_a_a_a.o and asm/overlays/rom_7c460c/ovl_314_a_c_c_a_a_c.o in
 * goldensun/overlays/rom_7c460c/overlay.ld.
 */
extern int __GetFlag(int);
extern int __MessageID(int);
extern void __ActorMessage(int, int);
extern void __SetFlag(int);
extern void __Func_8097608(void);
extern void __Func_809280c(int, int, int);
extern void __Func_809259c(int, int);
extern void __MapActor_Emote(int, int, int);
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned int iwram_3001ebc;

void OvlFunc_939_20089d4(void) {
    unsigned int r3;
    unsigned int r2;
    int x;
    unsigned long long t;
    unsigned int v;

    r3 = (unsigned int)&gState;
    r2 = 0x93;
    r2 <<= 2;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0 && __GetFlag(0x941) && !__GetFlag(0x94d)) {
        x = 0x9af;
        __asm__("" : "+r"(x));
        x = __GetFlag(x);
        if (!x) {
            *(unsigned short *)(iwram_3001ebc + (0xbf << 1)) = x;
            __Func_8097608();
            __Func_809280c(8, 0, 0);
            v = 8;
            __asm__ __volatile__("" : "+r"(v));
            __MapActor_Emote(v, 0x101, 0x3c);
            __MessageID(0x24db);
            __SetFlag(0x9af);
        } else {
            __MessageID(0x24e7);
        }
        __ActorMessage(8, 0);
        __Func_809259c(8, 1);
        __MessageID(0x24dc);
    } else {
        __MessageID(0x1bbf);
    }
    __ActorMessage(8, 0);
}
