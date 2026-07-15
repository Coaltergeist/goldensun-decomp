typedef unsigned char u8;
typedef unsigned int u32;

typedef struct SpriteInfo {
    u8 active;
    u8 pad1[3];
    u8 flags;
    u8 pad5[5];
    u8 layerByte;
    u8 padB;
    void *graphics;
    u32 *data;
} SpriteInfo;

extern u8 *iwram_3001e5c;
extern SpriteInfo *_GetSpriteInfo(void);
extern void *GetCachedSpriteGFX(int spriteId);

void *CreateSpriteLayer(int spriteId)
{
    register int id asm("r7");
    register SpriteInfo *info asm("r6");
    register u8 *layer asm("r5");
    register int zero asm("r8");
    register u8 *found asm("r4");
    register u8 *entry asm("r2");
    register int active asm("r3");
    register int index asm("r1");

    asm volatile("sub sp, #4\n\tmov r4, #0\n\tstr r4, [sp]\n\t"
                 "mov r7, r0" : "=r"(id));
    info = _GetSpriteInfo();
    asm volatile("ldr r3, =iwram_3001e5c\n\tmov r6, r0\n\t"
                 "ldr r2, [r3]\n\tldrb r3, [r6]\n\t"
                 "mov r5, #0\n\tldr r4, [sp]"
                 : "=r"(info), "=r"(entry), "=r"(active),
                   "=r"(layer), "=r"(found));
    if (active != 0) {
        asm volatile("ldrb r3, [r2, #4]\n\tmov r1, #0\n\t"
                     "b .LCreate_check\n\t.pool\n.LCreate_next:\n\t"
                     "add r1, #1\n\tadd r2, #0x18\n\t"
                     "cmp r1, #0x3f\n\tbgt .LCreate_search_done\n\t"
                     "ldrb r3, [r2, #4]\n.LCreate_check:\n\t"
                     "cmp r3, #0\n\tbne .LCreate_next\n\t"
                     "mov r4, r2\n.LCreate_search_done:"
                     : "+r"(entry), "+r"(found), "=r"(index)
                     : : "r3", "memory");
        if (found != 0) {
            register void *graphics asm("r0");
            asm volatile("ldr r3, =0\n\tldr r0, [r6, #0xc]\n\t"
                         "mov r5, r4\n\tmov r8, r3\n\tstrh r7, [r5]"
                         : "=r"(zero), "=r"(graphics), "=r"(layer)
                         : "r"(found), "r"(id), "r"(info) : "memory");
            if (graphics == 0)
                graphics = GetCachedSpriteGFX(id);
            {
                register u32 *data asm("r2");
                asm volatile("ldr r2, [r6, #0x10]\n\tstr r0, [r5, #8]"
                             : "=r"(data) : "r"(graphics), "r"(layer),
                               "r"(info) : "memory");
                *(u32 **)(layer + 0xc) = data;
                layer[7] = info->layerByte;
                layer[0x16] = 0xff;
                *(u32 *)(layer + 0x10) = *data;
                layer[0x14] = zero;
                layer[4] = info->flags;
                layer[5] = zero;
            }
            asm volatile("b .LCreate_end\n\t.pool\n.LCreate_end:");
        }
    }
    {
        register void *result asm("r0");
        asm volatile("mov r0, r5\n\tadd sp, #4"
                     : "=r"(result) : "r"(layer) : "memory");
        return result;
    }
}
