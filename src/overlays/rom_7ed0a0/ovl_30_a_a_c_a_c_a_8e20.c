typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actorId);
extern u8 *iwram_3001ee0;
extern u8 gState[];
asm(".set ExpectedAC, 0xac");
extern char ExpectedAC;

void OvlFunc_964_2008e20(void)
{
    u8 *actor = __MapActor_GetActor(0);
    register u8 *stateObject asm("r5");
    register int zero asm("r6");
    register int threshold asm("r4");
    register u8 *stateBase asm("r1");
    register unsigned offset asm("r2");
    register u8 **objectAddress asm("r3");
    register int map asm("r2");
    register int expected asm("r3");
    int area;

    objectAddress = &iwram_3001ee0;
    stateBase = gState;
    offset = 0xe0;
    offset <<= 1;
    stateObject = *objectAddress;
    objectAddress = (u8 **)(stateBase + offset);
    asm volatile("" : "+r"(objectAddress));
    zero = 0;
    asm("" : "+r"(zero) : "r"(objectAddress));
    map = *(short *)((u8 *)objectAddress + zero);
    expected = (int)&ExpectedAC;
    threshold = 0;

    if (map == expected) {
        offset = 0xe1;
        offset <<= 1;
        objectAddress = (u8 **)(stateBase + offset);
        zero = 0;
        area = *(short *)((u8 *)objectAddress + zero);
        switch (area) {
        case 3:
        case 4:
            threshold = 0x5e;
            break;
        case 8:
        case 9:
            threshold = 0x4a;
            break;
        case 12:
        case 13:
            threshold = 0x76;
            break;
        }
    } else {
        offset = 0xe1;
        offset <<= 1;
        objectAddress = (u8 **)(stateBase + offset);
        zero = 0;
        area = *(short *)((u8 *)objectAddress + zero);
        if (area == 12)
            threshold = 0x5d;
    }

    if ((*(int *)(actor + 0x10) >> 19) <= threshold) {
        register int storeZero asm("r3");
        asm volatile("" : "+r"(zero));
        storeZero = 0;
        asm volatile("" : "+r"(storeZero));
        *(int *)(stateObject + 0x18) = storeZero;
    }
    else
        *(u8 **)(stateObject + 0x18) = actor;
}
