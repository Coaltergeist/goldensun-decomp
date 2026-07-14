#include "dma.h"

typedef struct {
    u32 actor;
    u32 x;
    u32 y;
    u32 z;
    u32 unk10;
    u32 phase;
    u32 speed;
    u32 height;
    u32 velocity;
    u8 timer;
    u8 pad25[3];
} ParticleWave;

extern void *__galloc_ewram(int tag, int size);
extern u8 *__MapActor_GetActor(int id);
extern void __Func_800c548(void *actor, int value);
extern void __StartTask(void (*task)(void), int priority);
extern void PARTICLE_WAVE_TASK(void);
extern const int PARTICLE_HEIGHT_TABLE[] asm(PARTICLE_HEIGHT_TABLE_LABEL);
extern const int PARTICLE_VELOCITY_TABLE[] asm(PARTICLE_VELOCITY_TABLE_LABEL);

/* 複数のマップキャラを波エフェクト用ワークへ登録する。 */
void PARTICLE_WAVE_SETUP(int actor_id, unsigned int count)
{
    register unsigned int count_reg asm("r8") = count;
    register int actor_reg asm("r6") = actor_id;
    register ParticleWave *wave asm("r5");
    register ParticleWave *waves asm("r9");
    register unsigned int i asm("r10");
    register unsigned int table_offset asm("r7");
    register unsigned int zero asm("r11");
    register int priority asm("r1");
    register void (*task)(void) asm("r0");
    u8 *actor;
    u8 *actor_state;

    waves = (ParticleWave *)__galloc_ewram(0x21, 0xca << 1);
    wave = waves;
    DMA3_CLEAR(waves, 0x194);

    if (count_reg > 10)
        count_reg = 10;

    i = 0;
    if (count_reg != 0) {
        zero = 0;
        table_offset = 0;
        do {
            {
                register unsigned int zero_low asm("r2");

                actor = __MapActor_GetActor(actor_reg);
                actor_state = *(u8 **)(actor + 0x50);
                zero_low = zero;
                actor_state += 0x26;
                asm volatile("" : "+r"(actor_state), "+r"(zero_low));
                wave->actor = (u32)actor;
                *actor_state = zero_low;
                actor[0x55] = zero_low;
            }
            __Func_800c548(__MapActor_GetActor(actor_reg), 1);
            {
                register const u8 *height_table asm("r2");

                height_table = (const u8 *)PARTICLE_HEIGHT_TABLE;
                asm volatile("" : "+r"(height_table), "+r"(table_offset));
                wave->height = *(const int *)((u32)table_offset + (u32)height_table);
            }
            {
                register const u8 *velocity_table asm("r3");

                velocity_table = (const u8 *)PARTICLE_VELOCITY_TABLE;
                asm volatile("" : "+r"(velocity_table), "+r"(table_offset));
                wave->velocity = -*(const int *)((u32)velocity_table + table_offset);
            }
            wave->timer = 3;
            {
                register unsigned int one asm("r3") = 1;

                asm volatile("" : "+r"(one));
                i += one;
            }
            table_offset += 4;
            wave++;
            actor_reg++;
        } while (i != count_reg);
    }

    *(u16 *)((u8 *)waves + 0x190) = count_reg;
    priority = 0xc8;
    priority <<= 4;
    task = PARTICLE_WAVE_TASK;
    asm volatile("" : "+r"(task), "+r"(priority));
    __StartTask(task, priority);
}
