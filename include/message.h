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


// FP#9 bulk asset-symbols (named by value; pending semantic names)
extern int _MSG_0a;
#define MSG_0a ((int)&_MSG_0a)
extern int _MSG_0b;
#define MSG_0b ((int)&_MSG_0b)
extern int _MSG_0c;
#define MSG_0c ((int)&_MSG_0c)
extern int _MSG_0d;
#define MSG_0d ((int)&_MSG_0d)
extern int _MSG_14;
#define MSG_14 ((int)&_MSG_14)
extern int _MSG_17;
#define MSG_17 ((int)&_MSG_17)
extern int _MSG_18;
#define MSG_18 ((int)&_MSG_18)
extern int _MSG_19;
#define MSG_19 ((int)&_MSG_19)
extern int _MSG_1a;
#define MSG_1a ((int)&_MSG_1a)

#endif // _MESSAGE_H_
