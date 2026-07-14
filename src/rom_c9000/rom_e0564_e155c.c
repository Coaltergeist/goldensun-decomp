typedef unsigned char u8;
typedef signed short s16;
typedef unsigned int u32;
typedef signed int s32;

extern u8 *iwram_3001eec;
extern u32 Random(void);

typedef struct {
    u32 unused;
    s16 x;
    s16 y;
} ScreenShakeOffsets;

typedef struct {
    u32 unused[3];
    s32 x;
    s32 y;
} PhysicsVector;

extern ScreenShakeOffsets iwram_3001ad0;
extern PhysicsVector gPhysVec;

void UpdateScreenShake(int width_arg, int height_arg)
{
    register int width asm("r6");
    register int height asm("r7");
    register u8 **root asm("r3") = &iwram_3001eec;
    register u8 *base asm("r1");
    register int offset asm("r0");
    register u8 *counter asm("r8");
    register int counter_value asm("r3");

    width = width_arg;
    height = height_arg;
    asm volatile("" : "+r"(root), "+r"(width), "+r"(height));
    offset = 0x77a8;
    asm volatile("" : "+r"(offset));
    base = *root;
    offset += (int)base;
    counter_value = *(s32 *)offset;
    counter = (u8 *)offset;

    if (counter_value > 0) {
        register int half asm("r5");
        register int y asm("r2");
        register int temp asm("r3");
        register u32 random asm("r0");

        width--;
        width &= Random();
        random = Random();
        half = (u32)height >> 31;
        half = height + half;
        y = height - 1;
        half >>= 1;
        y &= random;
        y -= half;

        {
            register ScreenShakeOffsets *screen asm("r1") = &iwram_3001ad0;
            asm volatile("" : "+r"(screen));
            temp = y;
            width -= half;
            temp += 0x20;
            asm volatile("" : "+r"(screen), "+r"(temp), "+r"(width));
            screen->x = width;
            asm volatile("" ::: "memory");
            screen->y = temp;
        }
        {
            register PhysicsVector *phys asm("r1") = &gPhysVec;
            asm volatile("" : "+r"(phys));
            temp = 0x78;
            width = temp - width;
            temp -= y;
            asm volatile("" : "+r"(phys), "+r"(temp), "+r"(width));
            phys->x = width;
            asm volatile("" ::: "memory");
            phys->y = temp;
        }
        {
            register u8 *cursor asm("r2") = counter;
            register int value asm("r3") = *(s32 *)cursor;
            value--;
            *(volatile s32 *)cursor = value;
        }
    } else {
        register int source_offset asm("r0") = 0x77a0;
        register u8 *cursor asm("r3");
        register ScreenShakeOffsets *screen asm("r2");
        register PhysicsVector *phys asm("r2");

        asm volatile("" : "+r"(source_offset));
        cursor = base + source_offset;
        asm volatile("" : "+r"(cursor));
        cursor = (u8 *)(int)*(s32 *)cursor;
        asm volatile("" : "+r"(cursor));
        screen = &iwram_3001ad0;
        source_offset += 4;
        screen->x = (int)cursor;
        asm volatile("" ::: "memory");
        cursor = base + source_offset;
        asm volatile("" : "+r"(cursor));
        cursor = (u8 *)(int)*(s32 *)cursor;
        screen->y = (int)cursor;
        phys = &gPhysVec;
        cursor = (u8 *)0x78;
        phys->x = (int)cursor;
        asm volatile("" ::: "memory");
        phys->y = (int)cursor;
    }
}
