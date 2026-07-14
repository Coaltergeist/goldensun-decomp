typedef unsigned char u8;
typedef unsigned short u16;

struct State {
    u8 pad00[8]; int x; u8 pad0c[4]; int y;
    u8 pad14[0x1c]; int factor; u8 pad34[4]; int saved_x;
    u8 pad3c[4]; int saved_y; u8 pad44[0x20]; u16 angle;
};
struct Actor { u8 pad00[8]; int x; u8 pad0c[4]; int y; };

extern struct Actor *__MapActor_GetActor(int actor);
extern int __cos(int angle);
extern int __sin(int angle);

void OvlFunc_969_200b600(struct State *argument)
{
    register struct State *self asm("r5") = argument;
    register u16 *angle_ptr asm("r6");
    register int angle asm("r8");
    register struct Actor *actor asm("r10");
    register int angle_init asm("r1");
    register struct Actor *actor_result asm("r0");
    register int sine_argument asm("r0");

    actor_result = __MapActor_GetActor(0x18);
    asm volatile("" : "+r" (actor_result) : : "memory");
    angle_ptr = &self->angle;
    angle_init = *angle_ptr;
    asm volatile("" : "+r" (angle_init));
    angle = angle_init;
    actor = actor_result;
    {
        register int product asm("r2") = __cos(angle) * (self->factor + 3);
        asm volatile("" : "+r" (product));
        {
            register struct Actor *actor_copy asm("r1") = actor;
            register int base_x asm("r3") = actor_copy->x;
            sine_argument = angle;
            asm volatile("" : "+r" (product), "+r" (actor_copy), "+r" (base_x), "+r" (sine_argument));
            self->x = base_x + product;
        }
    }
    {
        register int sine asm("r0") = __sin(sine_argument);
        register struct Actor *actor_copy asm("r2") = actor;
        register int base_y asm("r3");
        register int y asm("r3");
        register int saved_x asm("r2");
        asm volatile("" : "+r" (actor_copy));
        base_y = actor_copy->y;
        sine <<= 1;
        saved_x = self->x;
        y = base_y + sine;
        asm volatile("" : "+r" (y), "+r" (saved_x));
        self->y = y;
        asm volatile("" : : : "memory");
        self->saved_x = saved_x;
        asm volatile("" : : : "memory");
        self->saved_y = y;
        asm volatile("" : : : "memory");
    }
    {
        register int delta asm("r1") = -0x800;
        register int current asm("r3");
        asm volatile("" : "+r" (delta));
        current = *angle_ptr;
        *angle_ptr = current + delta;
    }
}
