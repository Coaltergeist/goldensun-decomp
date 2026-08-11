// fakematch
/* video.c -- consolidated TU. */
#include "nonmatching.h"

#include "gba/types.h"
#include "gba/io.h"
#include "libcamelot.h"

extern s32 Func_8003f04();
extern s32 Func_8003f3c();

extern vu8 iwram_3001ac0;
extern u8 iwram_3001aec;
extern vu8 iwram_3001c98;
extern vu8 iwram_3001ca8;
extern u8 iwram_3001cd4;
extern u16 iwram_3001cf8;

void Func_8003adc(void) {
    s32 temp1;
    u32 temp2;
    u32 temp3;
    u32 temp4;
    if (iwram_3001c98 == 0) return;

    if (iwram_3001cd4 != 0) {
        SET_IO(REG_BLDCNT, iwram_3001cf8 | 0x80);
    } else {
        SET_IO(REG_BLDCNT, iwram_3001cf8 | 0xC0);
    }

    iwram_3001ac0 = iwram_3001ac0 - 1;
    temp3 = iwram_3001ca8;
    temp1 = ((iwram_3001aec - iwram_3001ca8) * iwram_3001ac0);
    temp2 = temp1 / iwram_3001c98;
    REG_BLDY = temp3 + temp2;

    temp4 = iwram_3001ac0;
    if (temp4 == 0) {
        iwram_3001c98 = temp4;
    }
}

void Func_8003b70(u32 arg0) {
    iwram_3001cd4 = 0;
    iwram_3001cf8 = 0x3E;
    iwram_3001aec = iwram_3001ca8;
    iwram_3001ca8 = 0x10;
    iwram_3001c98 = arg0;
    iwram_3001ac0 = iwram_3001c98;
}

void Func_8003bb4(u32 arg0) {
    iwram_3001cd4 = 0;
    iwram_3001cf8 = 0x3E;
    iwram_3001aec = iwram_3001ca8;
    iwram_3001ca8 = 0;
    iwram_3001c98 = arg0;
    iwram_3001ac0 = iwram_3001c98;
}

void Func_8003bf8(u32 arg0) {
    iwram_3001cd4 = 1;
    iwram_3001cf8 = 0x3E;
    iwram_3001aec = iwram_3001ca8;
    iwram_3001ca8 = 0x10;
    iwram_3001c98 = arg0;
    iwram_3001ac0 = iwram_3001c98;
}

void Func_8003c3c(u32 arg0) {
    iwram_3001cd4 = 1;
    iwram_3001cf8 = 0x3E;
    iwram_3001aec = iwram_3001ca8;
    iwram_3001ca8 = 0;
    iwram_3001c98 = arg0;
    iwram_3001ac0 = iwram_3001c98;
}

void Func_8003c80(u8 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4) {
    vu8 *r2;
    vu8 *r1;
    iwram_3001cd4 = arg0;
    iwram_3001cf8 = arg1 & 0x3F;
    if (arg2 > 0x10) {
        iwram_3001aec = iwram_3001ca8;
    } else {
        iwram_3001aec = (u8) arg2;
    }
    iwram_3001ca8 = arg3;
    r1 = &iwram_3001ac0;
    r2 = &iwram_3001c98;
    *r2 = arg4;
    *r1 = *r2;
}

void Func_8003ce0(void)
{
    if (iwram_3001c98 != 0)
    {
        do
        {
            WaitFrames(1);
        } while (iwram_3001c98 != 0);
    }
}

extern void *gRAMLib_end;
extern u8 iwram_3001d00;

void Func_8003d04(void) {
    iwram_3001d00 = 0;
    CAMELOT_MEMCLEAR(&gRAMLib_end, 0x400);
}

INCLUDE_ASM("asm/video/rom_3d04_a.s");

extern unsigned int gRAMLib_end__a1[248] __asm__("gRAMLib_end");

void Func_8003dec(unsigned int *arg0, int index)
{
    unsigned int *slot;
    unsigned int old;

    if (index > 255) index = 255;
    if (index < 0) index = 0;
    slot = &gRAMLib_end__a1[index];
    old = *slot;
    *slot = (unsigned int)arg0;
    *arg0 = old;
}

INCLUDE_ASM("asm/video/rom_3d04_c.s");

INCLUDE_ASM("asm/video/rom_3e58_a.s");

#include "gba/types.h"
#include "libcamelot.h"
#include "dma.h"

struct SpriteSlot {
	u16 size;
	u16 vramOffset;
};

extern struct SpriteSlot gSpriteSlots[];
extern u8 gSpriteAllocTable[];

s32 Func_8003ed4(void) {
    s32 var_r1 = 0;
    u8* var_r4 = gSpriteAllocTable;
    s32 var_r0 = 0;
    s32 var_r2 = 0x200;

    for (var_r2 = 0x200; var_r2 != 0; --var_r2) {
        if (*(var_r4++) != 0xFF) {
            var_r1 = 0;
        } else {
            var_r1++;
            if (var_r0 >= var_r1) continue;
            var_r0 = var_r1;
        }
    }
    return var_r0;
}

s32 Func_8003f04(u32 needle) {
    s32 i;
    s32 nFound;
    u8* current;
    u32 temp;
    nFound = 0;
    if (needle >= 0x60) return -1;

    temp = 0xFF;
    current = gSpriteAllocTable;
    for (i = 0x200; i != 0; --i) {
        if (*current == needle) {
            *current = temp;
            nFound += 1;
        }
        current += 1;
    }
    if (nFound != 0) {
        return -1;
    }
    return 0;
}

s32 Func_8003f3c(u32 arg0) {
    struct SpriteSlot* slot = &gSpriteSlots[arg0];
    if (arg0 >= 0x60) return -1;

    if (slot->vramOffset != 0xFFFF) {
        Func_8003f04(arg0);
        slot->vramOffset = (0xFFFF | slot->vramOffset);
        slot->size = 0;
    }
    return 0;
}


s32 Func_8003f78(unsigned int arg0) {
	struct SpriteSlot *slot;

	slot = &gSpriteSlots[arg0];
	if (arg0 > 0x5f) return -1;

	if (slot->size > 0x10) {
		Func_8003f04(arg0);
		slot->size = 1;
	}
	return 0;
}

extern u32 Func_8003e58(u32, u32);

u32 UploadSpriteGFX(u32 slot, u32 size, void *gfx) {
    void *temp_r1;
    u16 temp_r3;
    u32 var_r5;
    struct SpriteSlot* temp_r7;

    temp_r7 = &gSpriteSlots[slot];
    if (slot > 0x5F) return 0;
    if (size > 0x2000) return 0;

    temp_r3 = temp_r7->size;
    if ((u32) temp_r3 > 0x10U) {
        if (temp_r3 != size) {
            Func_8003f3c(slot);
            var_r5 = Func_8003e58(slot, size);
        } else {
            var_r5 = temp_r7->vramOffset;
        }
    } else {
        var_r5 = Func_8003e58(slot, size);
    }
    if (var_r5 != -1U) {
        temp_r1 = (void *)(var_r5 + 0x06010000);
        temp_r7->size = size;
        temp_r7->vramOffset = var_r5;
        if (gfx != 0) {
            if (gfx == (void *)0xFFFFFFFF) {
                CAMELOT_MEMCLEAR(temp_r1, size);
            } else {
                DMA3_COPY(gfx, temp_r1, size);
            }
        }
        return var_r5 >> 5;
    }
    return 0U;
}

void ClearSprites(void) {
    u8* currentAlloc;
    struct SpriteSlot* currentSpriteSlot;
    u32 i;
    u32 limit = 0x1FF;

    currentAlloc = gSpriteAllocTable;
    for (i = 0; i <= limit; ++i) {
        *currentAlloc = 0xFF;
        currentAlloc++;
    }

    currentSpriteSlot = gSpriteSlots;
    for (i = 0; i < 0x60; ++i) {
        currentSpriteSlot->vramOffset = 0xFFFF;
        currentSpriteSlot->size = 0;
        currentSpriteSlot++;
    }
}

s32 AllocSpriteSlot(void) {
    struct SpriteSlot* current = gSpriteSlots;
    s32 foundSlot = 0x60;
    s32 i = 0;

    while (i <= 0x5F) {
        if (current->vramOffset == 0xFFFF) {
            foundSlot = i;
            break;
        }
        i++;
        current++;
    }
    return foundSlot;
}

s32 AllocUploadSpriteGFX(u32 size) {
    s32 slot;

    slot = AllocSpriteSlot();
    UploadSpriteGFX(slot, size, NULL);
    return slot;
}

s32 UploadSprite2(u32 slot, void *gfx) {
    return UploadSpriteGFX(slot, gSpriteSlots[slot].size, gfx);
}

// file boundary task.c

#include "gba/types.h"
#include "task.h"
#include "gba/io.h"

void ClearTasks(void) {
    struct Task* currentTask;
    s32 i;

    gTasksEnabled = 0;
    currentTask = &gTasks[0];
    iwram_3001a10 = 0;

    for (i = NUM_TASKS - 1; i >= 0; --i) {
        currentTask->taskFunc = NULL;
        currentTask->priority = 0xFFFF;
        currentTask->status = 0;
        currentTask += 1;
    }
    gTasksEnabled = 1;
}

void Unused_memcpy32(u32 *dst, u32 *src, u32 n) {
    u32 i;
    n /= 4;
    for (i = 0; i < n; i++)
        *dst++ = *src++;
}

void SortTasks(void) {
    s32 i;
    s32 j;
    struct Task* current = gTasks;
    for (i = NUM_TASKS - 1; i > 1; --i) {
        current = gTasks;
        if (i > 0) {
            j = i;
            do {
                if (current[1].priority > current[0].priority) {
                    struct Task temp;
                    __builtin_memcpy(&temp, &current[0], sizeof(struct Task));
                    __builtin_memcpy(&current[0], &current[1], sizeof(struct Task));
                    __builtin_memcpy(&current[1], &temp, sizeof(struct Task));
                }
                current++;
                j--;
            } while (j != 0);
        }
    }
}

s32 GetTaskIndex(taskfunc_t *func) {
    s32 i;
    s32 result;
    struct Task* currentTask;
    u32 savedIME;
    result = -1;
    currentTask = gTasks;

    do {
        savedIME = REG_IME;
        SET_IO(REG_IME, REG_ADDR_IME);
    } while (0);

    for (i = 0; i < 20; i++) {
        if (currentTask->taskFunc == func) {
            result = i;
            break;
        }
        currentTask++;
    }
    SET_IO(REG_IME, savedIME);
    return result;
}

s32 StartTask(taskfunc_t *func, u32 priority) {
    s32 i;
    s32 resultIndex;
    struct Task* currentTask;
    u32 savedIME;
    resultIndex = -1;
    currentTask = gTasks;
    *(vs8*)(&iwram_3001a10); // maybe some code originally behind #if DEBUG?
    do {
        savedIME = REG_IME;
        SET_IO(REG_IME, REG_ADDR_IME);
    } while (0);
    for (i = 0; i < NUM_TASKS; ++i) {
        if (currentTask->taskFunc == func) {
            currentTask->priority = priority;
            resultIndex = i;
            break;
        }
        currentTask++;
    }
    currentTask = gTasks;
    if (resultIndex == -1) {
        for (i = 0; i < NUM_TASKS; ++i) {
            if (currentTask->taskFunc == NULL) {
                currentTask->taskFunc = func;
                currentTask->priority = priority;
                currentTask->status = 0;
                resultIndex = i;
                break;
            }
            currentTask++;
        }
    }
    SortTasks();
    SET_IO(REG_IME, savedIME);
    return resultIndex;
}

void Func_8004270(void) {}
void Func_8004274(void) {}

s32 StopTask(taskfunc_t *func) {
    s32 i;
    s32 resultId;
    struct Task* currentTask;
    u32 savedIME;

    resultId = -1;
    currentTask = gTasks;

    do {
        savedIME = REG_IME;
        SET_IO(REG_IME, REG_ADDR_IME);
    } while (0);

    for (i = 0; i < NUM_TASKS; ++i) {
        if (currentTask->taskFunc == func) {
            currentTask->taskFunc = NULL;
            currentTask->priority = 0x7FFF;
            resultId = i;
            break;
        }
        currentTask++;
    }

    SET_IO(REG_IME, savedIME);
    return resultId;
}

s32 Func_80042c8(taskfunc_t *arg0) {
    s32 i;
    s32 resultId;
    struct Task* currentTask;
    u32 savedIME;
    resultId = -1;
    currentTask = gTasks;

    do {
        savedIME = REG_IME;
        SET_IO(REG_IME, REG_ADDR_IME);
    } while(0);

    for (i = 0; i < NUM_TASKS; ++i) {
        if ((arg0 == NULL) || (currentTask->taskFunc == arg0)) {
            *((u8*) &currentTask->priority + 1) |= 1; // somehow this one does not match with the union...
            resultId = i;
        }
        currentTask += 1;
    }
    SET_IO(REG_IME, savedIME);
    return resultId;
}

s32 Func_800430c(void) {
    s32 i;
    s32 resultId;
    struct Task* currentTask;
    u32 savedIME;

    resultId = -1;
    currentTask = gTasks;

    do {
        savedIME = REG_IME;
        SET_IO(REG_IME, REG_ADDR_IME);
    } while (0);

    for (i = 0; i < NUM_TASKS; ++i) {
        if (currentTask->b4 == 2 && !(1 & currentTask->status)) {
            currentTask->priorityHi |= 1;
            resultId = i;
        }
        currentTask += 1;
    }
    SET_IO(REG_IME, savedIME);
    return resultId;
}

s32 Func_8004358(taskfunc_t *func, u32 status) {
    s32 i;
    s32 resultId;
    struct Task* currentTask;
    u32 savedIME;
    resultId = -1;
    currentTask = gTasks;

    do {
        savedIME = REG_IME;
        SET_IO(REG_IME, REG_ADDR_IME);
    } while (0);

    for (i = 0; i < NUM_TASKS; ++i) {
        if (currentTask->taskFunc == func) {
            currentTask->status = status;
            resultId = i;
            break;
        }
        currentTask++;
    }

    SET_IO(REG_IME, savedIME);
    return resultId;
}

s32 Func_800439c(taskfunc_t *func) {
    s32 i;
    s32 resultId;
    struct Task* currentTask;
    u32 savedIME;

    resultId = -1;
    currentTask = gTasks;

    do {
        savedIME = REG_IME;
        SET_IO(REG_IME, REG_ADDR_IME);
    } while (0);

    for (i = 0; i < NUM_TASKS; ++i) {
        if ((func == NULL) || (currentTask->taskFunc == func)) {
            currentTask->priorityHi &= 0xFE;
            resultId = i;
        }
        currentTask += 1;
    }
    SET_IO(REG_IME, savedIME);
    return resultId;
}

s32 Func_80043e0(void) {
    s32 resultId;
    s32 i;
    struct Task* currentTask;
    u32 savedIME;
    resultId = -1;
    currentTask = gTasks;

    do {
        savedIME = REG_IME;
        SET_IO(REG_IME, REG_ADDR_IME);
    } while (0);

    for (i = 0; i < NUM_TASKS; ++i) {
        if (currentTask->b4 == 2) {
            currentTask->priorityHi &= 0xFE; // union?
            resultId = i;
        }
        currentTask += 1;
    }

    SET_IO(REG_IME, savedIME);
    return resultId;
}

// fakematch
void RunTasks(s32 arg0) {
    s32 i;
    struct Task* currentTask = gTasks;
    arg0 >>= 8;

    if (gTasksEnabled == 1) {
        i = 0x15;
        currentTask -= 1;
loop:
        i -= 1;
        if (i != 0) {
            currentTask += 1;
            if (currentTask->priorityHi == (arg0)) {
                register taskfunc_t *func asm("r0") = currentTask->taskFunc;
                func();
            }
            goto loop;
        }
    }
}
