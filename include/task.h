#ifndef _TASK_H_
#define _TASK_H_

#include "gba/types.h"

#define NUM_TASKS (20)

typedef void taskfunc_t(void);

struct Task {
    union {
        taskfunc_t *taskFunc;
        struct {
            u8 b1;
            u8 b2;
            u8 b3;
            u8 b4;
        };
    };
    union __attribute__((packed)) {
        s16 priority;
        struct __attribute__((packed)) {
            u8 priorityLo;
            u8 priorityHi;
        };
    };
    u8 status;
    u8 pad7;
};

extern struct Task gTasks[NUM_TASKS];
extern s8 gTasksEnabled;
extern s8 iwram_3001a10;

// Currently _Func and __Func are declared here as well
// because they are used for inter-module calls
// and overlays. It might be possible to auto-generate them.

s32 StartTask(taskfunc_t *task, u32 priority);
s32 _StartTask(taskfunc_t *task, u32 priority);
s32 __StartTask(taskfunc_t *task, u32 priority);

s32 StopTask(taskfunc_t *task);
s32 _StopTask(taskfunc_t *task);
s32 __StopTask(taskfunc_t *task);

#endif // _TASK_H_
