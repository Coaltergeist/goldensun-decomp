extern void __PlaySound(int sound);
extern void __Func_80921c4(int actor, int x, int z);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __MapActor_SetPos(int actor, int x, int z);
extern void __MapActor_SetSpeed(int actor, int speedX, int speedZ);
extern void __Func_8092adc(int actor, int value, int duration);
extern void __MessageID(int id);
extern void __MapActor_Jump(int actor, int height, int direction);
extern void OvlFunc_890_200a5fc(int actor, int value);
extern void __Func_80925cc(int actor, int mode);
extern void __CutsceneWait(int frames);
extern void __MapActor_DoAnim(int actor, int anim);
extern void __SetFlag(int flag);

void OvlFunc_890_2009be8(void)
{
    __PlaySound(0x15);

    {
        register int x asm("r1") = 0xbc;
        register int z asm("r2");
        register int actor asm("r0");

        asm volatile("" : "+r"(x));
        z = 0xb8;
        asm volatile("" : "+r"(x), "+r"(z));
        actor = 0;
        asm volatile("" : "+r"(actor), "+r"(x), "+r"(z));
        x <<= 1;
        asm volatile("" : "+r"(actor), "+r"(x), "+r"(z));
        __Func_80921c4(actor, x, z);
    }

    __MapActor_SetAnim(0, 0);

    {
        register int x asm("r1") = 0xbc;
        register int z asm("r2");
        register int actor asm("r0");

        asm volatile("" : "+r"(x));
        z = 0xb8;
        asm volatile("" : "+r"(x), "+r"(z));
        actor = 0x10;
        asm volatile("" : "+r"(actor), "+r"(x), "+r"(z));
        x <<= 17;
        asm volatile("" : "+r"(actor), "+r"(x), "+r"(z));
        z <<= 16;
        asm volatile("" : "+r"(actor), "+r"(x), "+r"(z));
        __MapActor_SetPos(actor, x, z);
    }

    {
        register int speedX asm("r1") = 0x80;
        register int speedZ asm("r2");
        register int actor asm("r0");

        asm volatile("" : "+r"(speedX));
        speedZ = 0x80;
        asm volatile("" : "+r"(speedX), "+r"(speedZ));
        actor = 0x10;
        asm volatile("" : "+r"(actor), "+r"(speedX), "+r"(speedZ));
        speedX <<= 9;
        asm volatile("" : "+r"(actor), "+r"(speedX), "+r"(speedZ));
        speedZ <<= 8;
        asm volatile("" : "+r"(actor), "+r"(speedX), "+r"(speedZ));
        __MapActor_SetSpeed(actor, speedX, speedZ);
    }

    {
        register int x asm("r1") = 0xc4;
        register int actor asm("r0");
        register int z asm("r2");

        asm volatile("" : "+r"(x));
        actor = 0x10;
        asm volatile("" : "+r"(actor), "+r"(x));
        x <<= 1;
        asm volatile("" : "+r"(actor), "+r"(x));
        z = 0xa8;
        asm volatile("" : "+r"(actor), "+r"(x), "+r"(z));
        __Func_80921c4(actor, x, z);
    }

    {
        register int value asm("r1") = 0x80;
        register int duration asm("r2");
        register int actor asm("r0");

        asm volatile("" : "+r"(value));
        duration = 0x1e;
        asm volatile("" : "+r"(value), "+r"(duration));
        actor = 0x10;
        asm volatile("" : "+r"(actor), "+r"(value), "+r"(duration));
        value <<= 8;
        asm volatile("" : "+r"(actor), "+r"(value), "+r"(duration));
        __Func_8092adc(actor, value, duration);
    }

    {
        register int anim asm("r1") = 1;
        register int actor asm("r0");

        asm volatile("" : "+r"(anim));
        actor = 0x10;
        asm volatile("" : "+r"(actor), "+r"(anim));
        __MapActor_SetAnim(actor, anim);
    }

    __MessageID(0x102b);

    {
        register int direction asm("r2") = 0x1e;
        register int actor asm("r0");
        register int height asm("r1");

        asm volatile("" : "+r"(direction));
        actor = 0x10;
        asm volatile("" : "+r"(actor), "+r"(direction));
        height = 4;
        asm volatile("" : "+r"(actor), "+r"(height), "+r"(direction));
        __MapActor_Jump(actor, height, direction);
    }

    {
        register int actor asm("r0") = 0x10;
        register int value asm("r1");

        asm volatile("" : "+r"(actor));
        value = 6;
        asm volatile("" : "+r"(actor), "+r"(value));
        OvlFunc_890_200a5fc(actor, value);
    }

    {
        register int mode asm("r1") = 2;
        register int actor asm("r0");

        asm volatile("" : "+r"(mode));
        actor = 0;
        asm volatile("" : "+r"(actor), "+r"(mode));
        __Func_80925cc(actor, mode);
    }

    __CutsceneWait(6);

    {
        register int actor asm("r0") = 0x10;
        register int anim asm("r1");

        asm volatile("" : "+r"(actor));
        anim = 3;
        asm volatile("" : "+r"(actor), "+r"(anim));
        __MapActor_DoAnim(actor, anim);
    }

    {
        register int actor asm("r0") = 0x10;
        register int value asm("r1");

        asm volatile("" : "+r"(actor));
        value = 6;
        asm volatile("" : "+r"(actor), "+r"(value));
        OvlFunc_890_200a5fc(actor, value);
    }

    {
        register int x asm("r1") = 0xbc;
        register int actor asm("r0");
        register int z asm("r2");

        asm volatile("" : "+r"(x));
        actor = 0x10;
        asm volatile("" : "+r"(actor), "+r"(x));
        x <<= 1;
        asm volatile("" : "+r"(actor), "+r"(x));
        z = 0xb8;
        asm volatile("" : "+r"(actor), "+r"(x), "+r"(z));
        __Func_80921c4(actor, x, z);
    }

    {
        register int v asm("r1") = 0xc9;
        register int z asm("r2");
        register int actor asm("r0");

        asm volatile("" : "+r"(v));
        v <<= 19;
        asm volatile("" : "+r"(v));
        z = v;
        asm volatile("" : "+r"(v), "+r"(z));
        actor = 0x10;
        asm volatile("" : "+r"(actor), "+r"(v), "+r"(z));
        __MapActor_SetPos(actor, v, z);
    }

    __CutsceneWait(4);
    __SetFlag(0x811);
}
