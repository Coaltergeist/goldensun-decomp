extern short ewram_200048a;
extern void *GetFieldActor(int actorID);
extern void _Actor_SetAnimSpeed(void *actor, int speed);

void Func_8096cdc(void *excludeActor, int value, int speed)
{
    int i = 0;
    short *p = &ewram_200048a;

    do {
        unsigned char *actor = (unsigned char *)GetFieldActor(i);
        if (i != *p && actor != 0 && actor != excludeActor) {
            actor[0x5b] = value;
            _Actor_SetAnimSpeed(actor, speed);
        }
        i++;
    } while (i <= 0x42);
}
