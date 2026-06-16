/* Cluster UploadSprite2..UploadSprite2 extracted from goldensun/asm/rom_c0/rom_3e58_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_3e58_c_a.o and asm/rom_c0/rom_3e58_c_c.o in
 * goldensun/stage1.ld.
 */

#include "gba/types.h"
#include "task.h"

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
