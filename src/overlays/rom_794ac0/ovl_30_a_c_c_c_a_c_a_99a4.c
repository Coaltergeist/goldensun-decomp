extern unsigned char *iwram_3001ebc;
extern void __MapActor_SetSpeed(int, int, int);
extern void __Func_809218c(int, int, int);
extern void __PlaySound(int);
extern void __Func_8091e9c(int);

void OvlFunc_899_20099a4(void)
{
    register int actor asm("r0");
    register int speed_x asm("r1");
    register int speed_y asm("r2");

    speed_x = 0x80;
    speed_y = 0x80;
    actor = 0;
    asm volatile("" : "+r" (speed_x), "+r" (speed_y), "+r" (actor) : : "memory");
    speed_x <<= 8;
    speed_y <<= 7;
    __MapActor_SetSpeed(actor, speed_x, speed_y);

    speed_x = 0xb6;
    speed_y = 0xcc;
    asm volatile("" : "+r" (speed_x), "+r" (speed_y) : : "memory");
    speed_x <<= 2;
    asm volatile("" : "+r" (speed_x) : : "memory");
    actor = 0;
    asm volatile("" : "+r" (actor) : : "memory");
    speed_y <<= 1;
    __Func_809218c(actor, speed_x, speed_y);

    *(int *)(iwram_3001ebc + (0xe4 << 1)) = 0x10;
    __PlaySound(0x7b);
    __Func_8091e9c(0xf);
}
