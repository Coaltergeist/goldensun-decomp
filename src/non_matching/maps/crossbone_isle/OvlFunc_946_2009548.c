extern void __Actor_SetSpriteFlags(void *, int);
extern void __Func_8012078(int, int, int, int);

void OvlFunc_946_2009548(unsigned int arg0)
{
    unsigned char *actor;

    actor = (unsigned char *)__MapActor_GetActor(0xc);
    if (actor != (unsigned char *)0) {
        actor[0x59] = 0;
    }
    __Actor_SetSpriteFlags(__MapActor_GetActor(arg0), 0);
    __Func_8012078(0, 0xa0 << 15, 0xb8 << 17, 0xfd);
    __SetFlag(0x241);
}
