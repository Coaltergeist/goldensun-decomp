typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;
typedef signed int s32;
typedef unsigned int u32;

extern u8 *__galloc_ewram(u32, u32);
extern void *__Func_8004970(u32);
extern u8 *__MapActor_GetActor(u32);
extern int __GetFlag(u32);
extern void __DecompressLZ(const void *, void *);
extern int __AllocSpriteSlot(void);
extern u32 __UploadSpriteGFX(u32 slot, u32 size, void *gfx);
extern void __StartTask(void (*)(void), u32);
extern void __free(void *);
extern void OvlFunc_common1_1b08(void);
extern const u8 gCommon1SpriteGfxLz[];

void OvlFunc_common1_1ecc(u32 actor1, u32 actor2, u32 actor3, u32 value1,
                          u32 value2, u32 half1, u32 half2)
{
    u8 *state;
    void *gfx;
    u8 *source;
    u8 *destination;
    u32 slot;

    state = __galloc_ewram(0x3b, 0x7170);
    gfx = __Func_8004970(0x200);

    *(u16 *)(state + 0xde) = actor1;
    *(u16 *)(state + 0xe0) = actor2;
    *(u16 *)(state + 0xe2) = half1;
    *(u16 *)(state + 0xe4) = half2;
    *(u16 *)(state + 0xe6) = actor3;
    *(u32 *)(state + 0xe8) = value1;
    *(u32 *)(state + 0xec) = value2;

    source = __MapActor_GetActor(actor1);
    destination = __MapActor_GetActor(actor2);
    if (__GetFlag(0x109) == 0) {
        *(u32 *)(destination + 8) = value1 * 2 - *(u32 *)(source + 8);
        *(u32 *)(destination + 0x10) = *(u32 *)(source + 0x10);
    }

    *(u16 *)(state + 0xda) = 0;
    *(u16 *)(state + 0xdc) = 0;
    __DecompressLZ(gCommon1SpriteGfxLz, gfx);
    slot = __AllocSpriteSlot();
    *(u16 *)(state + 0xd8) = slot;
    __UploadSpriteGFX((s16)slot, 0x200, gfx);
    __StartTask(OvlFunc_common1_1b08, 0xc76);
    __free(gfx);
}
