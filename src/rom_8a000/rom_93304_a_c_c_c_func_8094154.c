typedef unsigned char u8;
typedef signed char s8;
typedef signed short s16;

extern u8 *iwram_3001e70;
extern u8 *GetFieldActor(int actorId);
extern u8 *_GetSpriteInfo(int spriteId);

int Func_8094154(int actorId, int *position)
{
    register u8 *actor asm("r4") = GetFieldActor(actorId);
    register int *output asm("r5") = position;
    int *xOutput;
    int *camera;
    int cameraX;
    int cameraY;
    int x;
    register int y asm("r6");

    if (actor == 0)
        return -1;

    asm volatile("ldr r3, =iwram_3001e70\n\tldr r3, [r3]\n\tadd r3, #0xe4\n\tldr r1, =0xffff0000\n\tldr r0, [r3]\n\tldr r2, [r3, #4]\n\tldr r3, [r4, #0x10]\n\tand r2, r1\n\tand r0, r1\n\tldr r1, [r4, #8]\n\tsub r3, r2\n\tldr r2, [r4, #0xc]\n\tsub r1, r0\n\tsub r6, r3, r2"
                 : "=r"(x), "=r"(y) : "r"(actor) : "r0", "r2", "r3");
    xOutput = output;
    output += 1;

    if (x < 0)
        asm volatile("ldr r3, =0xffff\n\tadd r1, r3" : "+r"(x) :: "r3");
    *xOutput = x >> 16;
    { register int adjusted asm("r3") = y;
      asm volatile("" : "+r"(adjusted));
      if (adjusted < 0)
          asm volatile("ldr r2, =0xffff\n\tadd r3, r2" : "+r"(adjusted) :: "r2");
      *output = adjusted >> 16; }

    if ((actor[0x54] & 0xf) == 1) {
        u8 *sprite = _GetSpriteInfo(
            **(s16 **)(*(u8 **)(actor + 0x50) + 0x28));
        *output -= *(s8 *)(sprite + 8);
    }
    return 0;
}
