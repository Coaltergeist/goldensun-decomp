/* GCC names r10 as sl in indirect-call helpers. */
__asm__(".set _call_via_sl, _call_via_r10");

extern void __CutsceneWait(unsigned int arg0);
extern void __PlaySound(unsigned int arg0);

extern int Func_8000888(int, int) __attribute__((long_call));

void __Actor_SetSpriteFlags(void *, int);

void __Actor_SetAnim(void *, int);

void OvlFunc_897_2008f64(void)
{
    unsigned int i;

    {
        int mask;
        unsigned char *actor;
        unsigned char *sprite;
        for (i = 16; i <= 31; i++) {
            actor = (unsigned char *)__MapActor_GetActor(i);
            __MapActor_SetIdle(i);
            __Actor_SetSpriteFlags(actor, 0);
            __Actor_SetAnim(actor, 2);
            mask = -13;
            sprite = *(unsigned char **)(actor + 0x50);
            sprite[9] &= mask;
            actor[0x55] = 0;
            *(int *)(actor + 0x30) = 0x80 << 12;
            *(int *)(actor + 0x34) = 0xc0 << 8;
            *(int *)(actor + 0x18) = 0x1cccc;
            *(int *)(actor + 0x1c) = 0x1cccc;
            *(int *)(actor + 8) = 0xe8 << 16;
            *(int *)(actor + 0xc) = 0xa0 << 13;
            *(int *)(actor + 0x10) = 0x84 << 16;
        }
    }

    __PlaySound(0x91);

    {
        unsigned char *actor;
        int theta;
        int fx;
        int fz;
        for (i = 0; i <= 15; i++) {
            actor = (unsigned char *)__MapActor_GetActor(i + 16);
            theta = i << 12;
            *(unsigned short *)(*(unsigned char **)(actor + 0x50) + 0x1e) = theta + -0x4000;
            fx = Func_8000888(__cos(theta), 0x80 << 17);
            fz = Func_8000888(__sin(theta), 0x80 << 17);
            __Actor_TravelTo(actor, *(int *)(actor + 8) + fx, *(int *)(actor + 0xc), *(int *)(actor + 0x10) + fz);
        }
    }

    __CutsceneWait(0x14);
    __MapActor_WaitMovement(0x10);

    {
        unsigned char *actor;
        int scale;
        int prevPos;
        int zero;

        scale = 0x80 << 9;
        prevPos = 0x80 << 24;
        zero = 0;

        for (i = 16; i <= 31; i++) {
            actor = (unsigned char *)__MapActor_GetActor(i);
            __MapActor_SetIdle(i);
            *(int *)(actor + 0x18) = scale;
            *(int *)(actor + 0x1c) = scale;
            *(int *)(actor + 8) = zero;
            *(int *)(actor + 0xc) = zero;
            *(int *)(actor + 0x10) = zero;
            *(int *)(actor + 0x24) = zero;
            *(int *)(actor + 0x28) = zero;
            *(int *)(actor + 0x2c) = zero;
            *(int *)(actor + 0x38) = prevPos;
            *(int *)(actor + 0x3c) = prevPos;
            *(int *)(actor + 0x40) = prevPos;
        }
    }
}
