// fakematch
/* Cluster UploadSprite2..UploadSprite2 extracted from goldensun/asm/rom_c0/rom_3e58_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_3e58_c_a.o and asm/rom_c0/rom_3e58_c_c.o in
 * goldensun/stage1.ld.
 */

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
