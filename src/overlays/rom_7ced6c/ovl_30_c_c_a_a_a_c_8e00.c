typedef unsigned int u32;

typedef struct {
    char pad08[8];
    int x;
    int scale;
    int y;
} Actor;

typedef struct {
    int first;
    char pad04[0x20];
    void (*callback)(void);
    int vector[3];
} Frame;

extern Actor *__MapActor_GetActor(int id);
extern int __cos(int angle);
extern int __sin(int angle);
extern int _divsi3_RAM(int value, int divisor);
extern void OvlFunc_946_2008da4(void);
extern void OvlFunc_946_2008ae8(int x, int scale, int y, int vx,
                               int height, int vz, int size, int *state);

void OvlFunc_946_2008e00(int actorId)
{
    Frame frame;
    register Actor *actor asm("r10") = __MapActor_GetActor(actorId);
    register u32 index asm("r8");
    register int *state asm("r9");
    register int *vector asm("r7");

    state = &frame.first;
    frame.callback = OvlFunc_946_2008da4;
    index = 0;
    vector = frame.vector;
    do {
        register u32 loopIndex asm("r2") = index;
        int angle;
        int cosine;
        int sine;
        asm volatile("" : "+r"(loopIndex));
        angle = loopIndex << 12;
        cosine = __cos(angle);

        asm volatile("mov r3, #0\n\tstr r3, [r7, #4]" : : : "r3", "memory");
        vector[0] = cosine;
        sine = __sin(angle);
        { register int vx asm("r5") = vector[0];
          register int vz asm("r6") = sine;
          register int divisor asm("r1") = 3;
          register int dividend asm("r0") = vx;
          asm volatile("" : "+r"(divisor), "+r"(dividend));
          vector[2] = vz;
          vx += _divsi3_RAM(dividend, divisor);
          vector[0] = vx;

          { register int y asm("r2") = actor->y;
            register int x asm("r0") = actor->x;
            register int scale asm("r1") = actor->scale;
            asm volatile("" : "+r"(x), "+r"(scale), "+r"(y));
          OvlFunc_946_2008ae8(x, scale, y, vx,
                              vector[1], vz, 0x1000001, state);
          }
        }
        { register int step asm("r2") = 2; asm volatile("" : "+r"(step)); index += step; }
    } while (index <= 0x10);
}
