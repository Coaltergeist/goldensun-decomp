extern unsigned char gState[];
extern unsigned char Value_56[] asm("0x56");
extern void __CutsceneStart(void);
extern void __Func_80933d4(int arg0, int arg1);
extern void __Func_80933f8(int arg0, int arg1, int arg2, int arg3);
extern void __MapActor_SetSpeed(int actor, int speed, int acceleration);
extern void __Func_80921c4(int actor, int x, int z);
extern void __PlaySound(int sound);
extern void __StartTask(void (*task)(void), int priority);
extern void __Func_8012330(int arg0, int arg1, int arg2);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __MapActor_TravelTo(int actor, int x, int z);
extern void __CutsceneWait(int frames);
extern void __MapActor_Emote(int actor, int emote, int duration);
extern void __Func_809259c(int actor, int value);
extern void __MapActor_WaitMovement(int actor);
extern void __Func_8091f90(int arg0, int arg1);
extern void __Func_8091eb0(int arg0, int arg1);
extern void OvlFunc_932_200aeec(void);

void OvlFunc_932_200af10(void)
{
    __CutsceneStart();
    {
        register int arg0 asm("r0");
        register int arg1 asm("r1");

        arg0 = 0x9999;
        asm volatile("" : "+r"(arg0));
        arg1 = 0x1333;
        asm volatile("" : "+r"(arg0), "+r"(arg1));
        __Func_80933d4(arg0, arg1);
    }
    {
        register int arg0 asm("r0");
        register int arg1 asm("r1");
        register int arg2 asm("r2");
        register int arg3 asm("r3");

        arg0 = 0xa4;
        asm volatile("" : "+r"(arg0));
        arg1 = 1;
        asm volatile("" : "+r"(arg0), "+r"(arg1));
        arg2 = 0xae;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        arg3 = 1;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
        arg0 <<= 17;
        arg1 = -arg1;
        arg2 <<= 15;
        __Func_80933f8(arg0, arg1, arg2, arg3);
    }
    {
        register int actor asm("r0");
        register int speed asm("r1");
        register int acceleration asm("r2");

        actor = 0;
        asm volatile("" : "+r"(actor));
        speed = 0x9999;
        asm volatile("" : "+r"(actor), "+r"(speed));
        acceleration = 0x4ccc;
        asm volatile("" : "+r"(actor), "+r"(speed), "+r"(acceleration));
        __MapActor_SetSpeed(actor, speed, acceleration);
    }
    {
        register int actor asm("r0");
        register int x asm("r1");
        register int z asm("r2");

        x = 0xa4;
        asm volatile("" : "+r"(x));
        z = 0x74;
        asm volatile("" : "+r"(x), "+r"(z));
        x <<= 1;
        actor = 0;
        asm volatile("" : "+r"(actor), "+r"(x), "+r"(z));
        __Func_80921c4(actor, x, z);
    }
    __PlaySound(0x94);
    {
        register void (*task)(void) asm("r0");
        register int priority asm("r1");

        priority = 0xc8;
        asm volatile("" : "+r"(priority));
        priority <<= 4;
        asm volatile("" : "+r"(priority));
        task = OvlFunc_932_200aeec;
        asm volatile("" : "+r"(task), "+r"(priority));
        __StartTask(task, priority);
    }
    {
        register int arg0 asm("r0");
        register int arg1 asm("r1");
        register int arg2 asm("r2");

        arg0 = 0x80;
        asm volatile("" : "+r"(arg0));
        arg1 = 0x80;
        asm volatile("" : "+r"(arg0), "+r"(arg1));
        arg2 = 0x80;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        arg0 <<= 9;
        arg1 <<= 9;
        arg2 <<= 9;
        __Func_8012330(arg0, arg1, arg2);
    }
    {
        register int actor asm("r0");
        register int speed asm("r1");
        register int acceleration asm("r2");

        actor = 8;
        asm volatile("" : "+r"(actor));
        speed = 0x1999;
        asm volatile("" : "+r"(actor), "+r"(speed));
        acceleration = 0xccc;
        asm volatile("" : "+r"(actor), "+r"(speed), "+r"(acceleration));
        __MapActor_SetSpeed(actor, speed, acceleration);
    }
    {
        register int actor asm("r0");
        register int speed asm("r1");
        register int acceleration asm("r2");

        acceleration = 0xccc;
        asm volatile("" : "+r"(acceleration));
        actor = 9;
        asm volatile("" : "+r"(actor), "+r"(acceleration));
        speed = 0x1999;
        asm volatile("" : "+r"(actor), "+r"(speed), "+r"(acceleration));
        __MapActor_SetSpeed(actor, speed, acceleration);
    }
    __MapActor_SetAnim(8, 2);
    {
        register int actor asm("r0");
        register int x asm("r1");
        register int z asm("r2");

        x = 0xa4;
        asm volatile("" : "+r"(x));
        actor = 8;
        asm volatile("" : "+r"(actor), "+r"(x));
        x <<= 1;
        z = 0x68;
        asm volatile("" : "+r"(actor), "+r"(x), "+r"(z));
        __MapActor_TravelTo(actor, x, z);
    }
    {
        register int actor asm("r0");
        register int x asm("r1");
        register int z asm("r2");

        x = 0xa4;
        asm volatile("" : "+r"(x));
        x <<= 1;
        z = 0x6c;
        asm volatile("" : "+r"(x), "+r"(z));
        actor = 9;
        asm volatile("" : "+r"(actor), "+r"(x), "+r"(z));
        __MapActor_TravelTo(actor, x, z);
    }
    __CutsceneWait(0x3c);
    {
        register int actor asm("r0");
        register int emote asm("r1");
        register int duration asm("r2");

        emote = 0x80;
        asm volatile("" : "+r"(emote));
        duration = 0;
        asm volatile("" : "+r"(emote), "+r"(duration));
        actor = 0;
        asm volatile("" : "+r"(actor), "+r"(emote), "+r"(duration));
        emote <<= 1;
        __MapActor_Emote(actor, emote, duration);
    }
    __Func_809259c(0, 2);
    __MapActor_WaitMovement(8);
    {
        register unsigned char *state asm("r3") = gState;
        register int value asm("r2") = 0x22b;

        asm volatile("" : "+r"(state), "+r"(value));
        state += value;
        value = 3;
        *state = value;
    }
    __Func_8091f90((int)Value_56, 0x63);
    __Func_8091eb0(0x35, 3);
}
