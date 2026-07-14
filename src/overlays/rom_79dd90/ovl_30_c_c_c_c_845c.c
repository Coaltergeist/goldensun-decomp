extern unsigned char iwram_3001ebc[];

extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void OvlFunc_910_20088e8(void);
extern void __MapActor_SetSpeed(int actor_id, int x, int y);
extern void __MapActor_SetAnim(int actor_id, int animation);
extern void __Func_8092208(int actor_id, int arg1, int arg2);
extern void __CutsceneWait(int frames);
extern void __Func_8091e9c(int map_id);
extern void __CutsceneEnd(void);

void OvlFunc_910_200845c(void)
{
    __CutsceneStart();
    if (__GetFlag(0x80 << 2) == 0) {
        OvlFunc_910_20088e8();
    }
    {
        register int speed_x asm("r1") = 0x80;
        register int speed_y asm("r2");
        register int zero asm("r0");

        asm volatile("" : "+r"(speed_x));
        speed_y = 0x80;
        asm volatile("" : "+r"(speed_x), "+r"(speed_y));
        zero = 0;
        asm volatile("" : "+r"(speed_x), "+r"(speed_y), "+r"(zero));
        speed_x <<= 8;
        asm volatile("" : "+r"(speed_x), "+r"(speed_y), "+r"(zero));
        speed_y <<= 7;
        asm volatile("" : "+r"(speed_x), "+r"(speed_y), "+r"(zero));
        __MapActor_SetSpeed(zero, speed_x, speed_y);
    }
    {
        register unsigned char *ptr asm("r3") = *(unsigned char **)iwram_3001ebc;
        register unsigned int off asm("r2") = 0xe0;

        asm volatile("" : "+r"(ptr), "+r"(off));
        off <<= 1;
        asm volatile("" : "+r"(ptr), "+r"(off));
        ptr += off;
        asm volatile("" : "+r"(ptr), "+r"(off));
        off -= 0xc0;
        asm volatile("" : "+r"(ptr), "+r"(off));
        *(unsigned int *)ptr = off;
    }
    __MapActor_SetAnim(0, 2);
    {
        register int neg_val asm("r2") = 0x10;
        register int mid asm("r1");
        register int zero asm("r0");

        asm volatile("" : "+r"(neg_val));
        mid = 2;
        asm volatile("" : "+r"(neg_val), "+r"(mid));
        neg_val = -neg_val;
        asm volatile("" : "+r"(neg_val), "+r"(mid));
        zero = 0;
        asm volatile("" : "+r"(neg_val), "+r"(mid), "+r"(zero));
        __Func_8092208(zero, mid, neg_val);
    }
    __CutsceneWait(0x10);
    __Func_8091e9c(2);
    __CutsceneEnd();
}
