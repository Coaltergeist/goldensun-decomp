struct SpriteData {
    char pad0[5];
    unsigned char attr0_hi;
    char pad6[3];
    unsigned char attr2_hi;
    char pada[0x12];
    unsigned char slot;
    char pad1d[9];
    unsigned char flags;
    unsigned char numLayers;
};

struct ActorData {
    char pad0[0x28];
    int motion_y;
    char pad2c[0x1c];
    int gravity;
    char pad4c[4];
    struct SpriteData *sprite;
};

extern void *__CreateActor(int, int, int, int);
extern int __CheckPartyItem(int);
extern int __CheckItem(int, int);
extern void __Actor_SetScript(void *, const void *);
extern void *__galloc_iwram(int, int);
extern void __LoadItemIcon(int);
extern void __UploadSpriteGFX(int, int, const void *);
extern void __gfree(int);
extern void __PlaySound(int);
extern void __Func_808f140(void *, int);
extern void __Func_8078948(int, int);
extern void __GiveItemTo(int, int);
extern void __DeleteActor(void *);
extern void __MapActor_SetAnim(int, int);

extern const unsigned char gScript_881__0200cbe4[];

int OvlFunc_896_200c260(int arg0, int x, int y, int z)
{
    int item = arg0;
    void *iconBuffer = 0;
    struct ActorData *actor;
    struct SpriteData *sprite;
    int partyMember;
    int itemSlot;
    int attr0;

    actor = (struct ActorData *)__CreateActor(0x16, x, y, z);
    partyMember = __CheckPartyItem(0xe0);
    itemSlot = __CheckItem(partyMember, 0xe0);

    if (actor == 0) {
        return partyMember;
    }

    __Actor_SetScript(actor, gScript_881__0200cbe4);
    sprite = actor->sprite;
    sprite->flags = 0;
    sprite->numLayers = 0;
    attr0 = sprite->attr0_hi;
    attr0 &= ~0x20;
    sprite->attr0_hi = attr0;
    sprite->attr2_hi &= 0x0f;
    actor->motion_y = 0xa0 << 10;
    actor->gravity = 0x80 << 7;

    iconBuffer = __galloc_iwram(0x11, 0xc1 << 3);
    __LoadItemIcon(item);
    __UploadSpriteGFX(sprite->slot, 0x80, (unsigned char *)iconBuffer + (0x80 << 3));
    __gfree(0x11);

    __PlaySound(0x53);
    __Func_808f140(actor, 3);
    __Func_8078948(partyMember, itemSlot);
    __GiveItemTo(partyMember, item);
    __DeleteActor(actor);
    __MapActor_SetAnim(0, 1);

    return partyMember;
}
