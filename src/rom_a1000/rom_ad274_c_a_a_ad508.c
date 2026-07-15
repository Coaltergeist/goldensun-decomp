typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef unsigned int u32;
typedef int s32;

extern u8 iwram_3001f2c[];
extern void *SpriteTemplates[] asm(".Laf304");
extern void _DeleteSprite(void *sprite);
extern void *_CreateSprite(void *template);
extern void _Sprite_SetAnim(void *sprite, int animation);
extern void StartTask(void (*task)(void), int priority);
extern void Func_80ad40c(void);

void Func_80ad508(void)
{
    register u8 *base asm("r6");
    register int offset asm("r5");
    register int zero asm("r7");
    register int count asm("r2");
    int saved[1];
    register void *sprite asm("r0");

    offset = 0x89;
    base = *(u8 **)iwram_3001f2c;
    zero = 0;
    offset <<= 2;
    count = 3;
    do {
        asm volatile("ldr %0, [%1, %2]" : "=r"(sprite) : "r"(offset), "r"(base));
        if (sprite != 0) {
            asm volatile("str %1, %0" : "=m"(saved[0]) : "r"(count));
            _DeleteSprite(sprite);
            asm volatile("str %0, [%1, %2]" :: "r"(zero), "r"(offset), "r"(base));
            asm volatile("ldr %0, %1" : "=r"(count) : "m"(saved[0]));
        }
        count--;
        offset += 4;
    } while (count >= 0);

    {
        register void **templates asm("r10");
        register s16 *shorts asm("r7");
        register int toffset asm("r8");
        register void *created asm("r5");
        register void *template asm("r0");
        register void **temp asm("r1") = SpriteTemplates;
        asm volatile(
            "mov r3, #0x8d\n\t"
            "lsl r3, #2\n\t"
            "mov r10, r1\n\t"
            "mov r1, #0x89\n\t"
            "add r7, r6, r3\n\t"
            "lsl r1, #2\n\t"
            "mov r3, #0\n\t"
            "add r6, r6, r1\n\t"
            "mov r8, r3\n\t"
            "mov r2, #3\n\t"
            : "+r"(base), "=r"(shorts), "=r"(templates), "=r"(toffset), "=r"(count)
            : "r"(temp)
            : "r1", "r3");
        do {
            asm volatile(
                "mov r1, r8\n\t"
                "mov r3, r10\n\t"
                "ldr r0, [r1, r3]\n\t"
                : "=r"(template)
                : "r"(toffset), "r"(templates)
                : "r1", "r3");
            asm volatile("str %1, %0" : "=m"(saved[0]) : "r"(count));
            created = _CreateSprite(template);
            asm volatile("ldr %0, %1" : "=r"(count) : "m"(saved[0]));
            if (created != 0) {
                _Sprite_SetAnim(created, 2);
                asm volatile("ldr %0, %1" : "=r"(count) : "m"(saved[0]));
            }
            *(u32 *)(base + 0x20) = 0x10000;
            {
                register s16 halfimm asm("r3");
                halfimm = 0x10;
                asm volatile("str %1, [%0, #0]" :: "r"(base), "r"(created));
                shorts[0] = halfimm;
                {
                    register s16 halfimm2 asm("r3");
                    register int four asm("r1");
                    halfimm2 = 0xc8;
                    asm volatile("" : "+r"(halfimm2));
                    four = 4;
                    asm volatile("sub %0, #1" : "+r"(count));
                    shorts[4] = halfimm2;
                    base += 4;
                    shorts += 1;
                    toffset += four;
                }
            }
        } while (count >= 0);
    }

    {
        int priority = 0xc8;
        priority <<= 4;
        StartTask(Func_80ad40c, priority);
    }
}
