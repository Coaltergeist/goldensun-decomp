extern unsigned char *iwram_3001ebc;
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void __Func_809218c(int actor, int x, int y);
extern void __Func_8091e9c(int value);

void OvlFunc_901_2008a80(int x, int y, int value)
{
    register int saved_x __asm__("r5");
    register int saved_y __asm__("r6");
    register int saved_value __asm__("r8");
    register int speed_x __asm__("r1");
    register int speed_y __asm__("r2");
    register int actor __asm__("r0");

    __asm__ volatile("mov %0, %2\n\tmov %1, %3"
                     : "=r"(saved_y), "=r"(saved_value)
                     : "r"(y), "r"(value));
    speed_x = 0x80;
    __asm__ volatile("" : "+r"(speed_x));
    speed_y = 0x80;
    __asm__ volatile("" : "+r"(speed_y));
    saved_x = x;
    __asm__ volatile("" : "+r"(saved_x));
    speed_x <<= 8;
    __asm__ volatile("" : "+r"(speed_x));
    actor = 0;
    __asm__ volatile("" : "+r"(actor));
    speed_y <<= 7;
    __asm__ volatile("" : "+r"(speed_y));
    __MapActor_SetSpeed(actor, speed_x, speed_y);
    __Func_809218c(0, saved_x, saved_y);
    *(int *)(iwram_3001ebc + 0x1c8) = 0x10;
    __Func_8091e9c(saved_value);
}
