#ifndef _TASK_H_
#define _TASK_H_

#include "gba/types.h"

typedef void taskfunc_t(void);

// Currently _Func and __Func are declared here as well
// because they are used for inter-module calls
// and overlays. It might be possible to auto-generate them.

void StartTask(taskfunc_t *task, int priority);
void _StartTask(taskfunc_t *task, int priority);
void __StartTask(taskfunc_t *task, int priority);

void StopTask(taskfunc_t *task);
void _StopTask(taskfunc_t *task);
void __StopTask(taskfunc_t *task);

#endif // _TASK_H_