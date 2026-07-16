typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

typedef struct Actor {
    u8 pad0[0xc];
    u16 unkC;
    u16 unkE;
} Actor;

typedef struct GameState {
    u8 pad0[0x224];
    void *sprites[4];
    s16 xs[4];
    s16 ys[4];
} GameState;

extern GameState *iwram_3001f2c;
extern void *_CreateSprite(void *template);
extern void _Sprite_SetAnim(void *sprite, s32 animation);
extern void StartTask(void *task, s32 delay);
extern void Func_80200cc(void);

asm(".section .rodata\n.text");
extern void *SpriteTemplates[] asm(".rodata");

void Func_801ffd8(Actor *arg0, s32 arg1, s32 arg2)
{
    GameState *state;
    void **sprites;
    s16 *positions;
    s32 index;
    s32 scale;
    void *sprite;

    state = iwram_3001f2c;
    if (arg0 != 0) {
        {
            register GameState *stateR3 asm("r3") = state;
            register s16 *positionsR6 asm("r6");
            register s32 indexR7 asm("r7");
            register s32 scaleR10 asm("r10");
            asm volatile(
                "mov r1, #0x8d\n\t"
                "lsl r1, r1, #2\n\t"
                "add r6, r3, r1\n\t"
                "sub r1, r1, #0x10\n\t"
                "add r1, r3, r1\n\t"
                "mov r2, #0\n\t"
                "str r1, %0\n\t"
                "mov r7, #0\n\t"
                "mov sl, r2\n\t"
                : "=m"(sprites), "=r"(positionsR6), "=r"(indexR7), "=r"(scaleR10)
                : "r"(stateR3)
                : "r1", "r2");
            positions = positionsR6;
            index = indexR7;
            scale = scaleR10;
        }
        do {
            sprite = _CreateSprite(SpriteTemplates[index]);
            if (sprite != 0) {
                _Sprite_SetAnim(sprite, 2);
                *(u8 *)((u8 *)sprite + 0x26) = 0;
                asm volatile(
                    "mov r1, #13\n\t"
                    "ldrb r3, [%0, #9]\n\t"
                    "neg r1, r1\n\t"
                    "mov r2, r1\n\t"
                    "and r3, r2\n\t"
                    "strb r3, [%0, #9]\n\t"
                    :
                    : "r"(sprite)
                    : "r1", "r2", "r3");
            }
            asm volatile(
                "ldr r3, %0\n\t"
                "stmia r3!, {%1}\n\t"
                "mov r2, r3\n\t"
                "str r2, %0\n\t"
                : "+m"(sprites)
                : "r"(sprite)
                : "r2", "r3");
            {
                register Actor *arg0R1 asm("r1") = arg0;
                positions[0] = ((arg0R1->unkC + arg1 + scale) * 8) + 0x10;
                index++;
                positions[4] = ((arg0R1->unkE + arg2) * 8) + 0x10;
            }
            scale += 3;
            positions++;
        } while (index <= 3);
        StartTask(&Func_80200cc, 0xC80);
    }
}
