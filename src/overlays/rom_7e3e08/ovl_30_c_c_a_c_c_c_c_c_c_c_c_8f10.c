extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __vec3_translate(unsigned int a, unsigned int b, unsigned int *c);

void OvlFunc_957_2008f10(int actorId, unsigned int arg1, unsigned int arg2)
{
    unsigned int c1 = 0x1F80000;
    unsigned int c2 = 0x180000;
    unsigned int c3 = 0x900000;
    unsigned char *actor;
    unsigned int v[3];

    actor = __MapActor_GetActor(actorId);
    v[0] = c1;
    v[2] = c2;
    __vec3_translate(arg1, arg2, v);
    *(unsigned int *)(actor + 8) = v[0];
    *(unsigned int *)(actor + 0xc) = v[2];
    *(unsigned int *)(actor + 0x10) = c3;
}
