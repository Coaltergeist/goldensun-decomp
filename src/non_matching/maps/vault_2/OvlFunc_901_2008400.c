extern unsigned char *iwram_3001e8c[];
extern void *__MapActor_GetActor(unsigned int);
extern int OvlFunc_901_2008350(struct Actor *, void *, int, int);

int OvlFunc_901_2008400(struct Actor *actor)
{
    unsigned char *b0 = iwram_3001e8c[0];
    unsigned char *b30 = iwram_3001e8c[12];
    int v1 = 0x12;
    int v2 = 0;

    if (OvlFunc_901_2008350(actor, __MapActor_GetActor((actor->waveCounter & 1) ? 0xf : 0xe), 0x20, 0) == 0) {
        void *leader = __MapActor_GetActor(0);

        if (*(short *)(b30 + (0xbc << 1)) != 0 || b0[0xea4] != 0) {
            v1 = 0x1a;
            if (actor->waveCounter & 2) {
                v2 = 1;
            }
        }
        OvlFunc_901_2008350(actor, leader, v1, v2);
    }

    return 0;
}
