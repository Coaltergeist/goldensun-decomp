#ifndef _MESSAGE_H_
#define _MESSAGE_H_

// external symbols from the message.sym linker include.
// Message/text IDs (the arg space of Func_801776c, distinct from the file
// table in file_table.h — those callers also pass IDs past the file table's
// range, so this is its own ID space). Named absolute so (int)&_MSG_* is
// forced to the literal pool (FP#9), matching the ROM's `ldr rX, =<id>`.
extern int _MSG_LEARN_INNATE_MOVE;   // (provisional name)

// friendly names for C
#define MSG_LEARN_INNATE_MOVE ((int)&_MSG_LEARN_INNATE_MOVE)

#endif // _MESSAGE_H_
