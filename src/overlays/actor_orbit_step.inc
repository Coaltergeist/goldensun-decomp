typedef unsigned short u16;

extern int __cos(int angle);
extern int __sin(int angle);

void ACTOR_ORBIT_FUNCTION(unsigned char *actor)
{
    register unsigned char *object asm("r5") = actor;
    register u16 *angle asm("r6") = (u16 *)object;
    register unsigned int phase_value asm("r2");
    register unsigned char *parent_value asm("r1");
    register int phase asm("r8");
    register int trig_arg asm("r0");
    register unsigned char *parent asm("r10");
    register int radius asm("r3");
    register int x_offset asm("r2");
    register int x asm("r3");
    register int base_z asm("r2");
    register int old_x asm("r3");
    register int delta asm("r1");
    register unsigned int updated_phase asm("r3");

    asm volatile("" : "+r"(object), "+r"(angle));
    angle = (u16 *)((unsigned char *)angle + 0x64);
    phase_value = *angle;
    parent_value = *(unsigned char **)(object + 0x68);
    phase = phase_value;
    asm volatile("" : "+r"(object), "+r"(angle), "+r"(phase),
                 "+r"(parent_value));
    trig_arg = phase;
    asm volatile("" : "+r"(trig_arg), "+r"(parent_value));
    parent = parent_value;
    asm volatile("" : "+r"(trig_arg), "+r"(parent));
    trig_arg = __cos(trig_arg);
    radius = *(int *)(object + 0x30);
    radius += 0x1c;
    asm volatile("" : "+r"(radius));
    x_offset = radius;
    asm volatile("" : "+r"(x_offset), "+r"(trig_arg));
    x_offset *= trig_arg;
    parent_value = parent;
    asm volatile("" : "+r"(parent_value), "+r"(x_offset));
    x = *(int *)(parent_value + 8);
    trig_arg = phase;
    asm volatile("" : "+r"(trig_arg), "+r"(x), "+r"(x_offset));
    x += x_offset;
    *(int *)(object + 8) = x;
    trig_arg = __sin(trig_arg);
    base_z = ACTOR_ORBIT_Z_BASE;
    old_x = *(int *)(object + 8);
    base_z <<= 16;
    trig_arg <<= 4;
    trig_arg += base_z;
    *(int *)(object + 0x10) = trig_arg;
    *(int *)(object + 0x38) = old_x;
    *(int *)(object + 0x40) = trig_arg;
    delta = -0x200;
    asm volatile("" : "+r"(delta));
    updated_phase = *angle;
    updated_phase += delta;
    *angle = updated_phase;
}
