extern unsigned int iwram_3001e40;
extern unsigned char L5240[] __asm__(".L5240");
extern unsigned char *__CreateActor(int actorId, int x, int y, int z);
extern void OvlFunc_932_200aa10(unsigned char *actor);
extern void OvlFunc_932_200aa48(void);
extern void __Actor_SetAnim(unsigned char *actor, int animation);

void OvlFunc_932_200ab58(void)
{
    unsigned char *actor;
    unsigned int *pos;
    register unsigned char *field __asm__("r2");
    register unsigned int val __asm__("r3");

    if ((iwram_3001e40 & 3) != 0)
        return;

    pos = (unsigned int *)L5240;
    actor = __CreateActor(0xde, pos[0], pos[1], pos[2]);
    if (actor == 0)
        return;

    field = actor;
    __asm__ volatile ("" : "+r" (field));
    field += 0x64;
    val = 0x1e;
    __asm__ volatile ("" : "+r" (field), "+r" (val));
    *(unsigned short *)field = val;
    field += 2;
    val = 1;
    __asm__ volatile ("" : "+r" (field), "+r" (val));
    *(unsigned short *)field = val;

    *(unsigned int *)(actor + 0x68) = 0x14;
    OvlFunc_932_200aa10(actor);
    *(unsigned int *)(actor + 0x6c) = (unsigned int)OvlFunc_932_200aa48;
    __Actor_SetAnim(actor, 1);
}
