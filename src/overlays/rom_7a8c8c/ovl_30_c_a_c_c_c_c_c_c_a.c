extern unsigned char L2488[] __asm__(".L2488");
extern void __CutsceneStart(void);
extern void __MapActor_SetSpeed(int actor, int speed, int acceleration);
extern void __Func_809228c(int actor, int x, int z);
extern void __MapActor_Jump(int actor, int height, int arg2);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __MapActor_WaitMovement(int actor);
extern void __CutsceneEnd(void);
extern unsigned char *__CreateActor(int actor, int x, int y, int z);
extern unsigned char *__galloc_iwram(int index, int size);
extern void __LoadItemIcon(int item);
extern void __UploadSpriteGFX(int sprite, int size, void *source);
extern void __gfree(int index);

void OvlFunc_922_2009ad0(int x, int z)
{
    register int savedX asm("r5");
    register int savedZ asm("r6");

    savedX = x;
    asm volatile("" : "+r"(savedX));
    savedZ = z;
    asm volatile("" : "+r"(savedX), "+r"(savedZ));
    __CutsceneStart();
    {
        register int actor asm("r0");
        register int speed asm("r1");
        register int acceleration asm("r2");

        speed = 0xa0;
        asm volatile("" : "+r"(speed));
        acceleration = 0xa0;
        asm volatile("" : "+r"(speed), "+r"(acceleration));
        actor = 0;
        asm volatile("" : "+r"(actor), "+r"(speed), "+r"(acceleration));
        speed <<= 10;
        acceleration <<= 9;
        __MapActor_SetSpeed(actor, speed, acceleration);
    }
    __Func_809228c(0, savedX, savedZ);
    __MapActor_Jump(0, 4, 0);
    __MapActor_SetAnim(0, 7);
    __MapActor_WaitMovement(0);
    __MapActor_SetAnim(0, 6);
    __CutsceneEnd();
}

void OvlFunc_922_2009b1c(void)
{
    register unsigned char *actor asm("r7");
    register unsigned char *sprite asm("r6");
    register unsigned char *buffer asm("r5");

    {
        register int actorId asm("r0");
        register int x asm("r1");
        register int y asm("r2");
        register int z asm("r3");

        x = 0xf8;
        asm volatile("" : "+r"(x));
        y = 0x80;
        asm volatile("" : "+r"(x), "+r"(y));
        z = 0x98;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(z));
        actorId = 0x16;
        asm volatile("" : "+r"(actorId), "+r"(x), "+r"(y), "+r"(z));
        x <<= 16;
        y <<= 12;
        z <<= 16;
        actor = __CreateActor(actorId, x, y, z);
    }
    asm volatile("" : "+r"(actor));
    buffer = 0;
    asm volatile("" : "+r"(buffer));
    if (actor != 0) {
        register int mask asm("r3");
        register unsigned int value asm("r2");

        sprite = *(unsigned char **)(actor + 0x50);
        sprite[0x26] = (unsigned int)buffer;
        sprite[0x27] = (unsigned int)buffer;
        mask = 0x21;
        asm volatile("" : "+r"(mask));
        value = sprite[5];
        asm volatile("" : "+r"(mask), "+r"(value));
        mask = -mask;
        mask &= value;
        sprite[5] = mask;
        sprite[9] &= 0xf;
        actor[0x55] = (unsigned int)buffer;
        actor[0x5c] = 1;

        buffer = __galloc_iwram(0x11, 0xc1 << 3);
        __LoadItemIcon(0xe6);
        buffer += 0x80 << 3;
        {
            register int spriteId asm("r0");
            register int size asm("r1");
            register void *source asm("r2");

            size = 0x80;
            asm volatile("" : "+r"(size));
            source = buffer;
            asm volatile("" : "+r"(size), "+r"(source));
            spriteId = sprite[0x1c];
            asm volatile("" : "+r"(spriteId), "+r"(size), "+r"(source));
            __UploadSpriteGFX(spriteId, size, source);
        }
        __gfree(0x11);
        *(unsigned char **)L2488 = actor;
    }
}
