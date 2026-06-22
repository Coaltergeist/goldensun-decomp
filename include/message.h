#ifndef _MESSAGE_H_
#define _MESSAGE_H_

// external symbols from the message.sym linker include.
// Message/text IDs (the arg space of Func_801776c, distinct from the file
// table in file_table.h; those callers also pass IDs past the file table's
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


// shiftable __MessageID IDs (named by value; pending semantic names)
extern int _MSG_e30;
#define MSG_e30 ((int)&_MSG_e30)
extern int _MSG_e70;
#define MSG_e70 ((int)&_MSG_e70)
extern int _MSG_eb0;
#define MSG_eb0 ((int)&_MSG_eb0)
extern int _MSG_ed0;
#define MSG_ed0 ((int)&_MSG_ed0)
extern int _MSG_fb0;
#define MSG_fb0 ((int)&_MSG_fb0)
extern int _MSG_fe0;
#define MSG_fe0 ((int)&_MSG_fe0)
extern int _MSG_ff0;
#define MSG_ff0 ((int)&_MSG_ff0)
extern int _MSG_1000;
#define MSG_1000 ((int)&_MSG_1000)
extern int _MSG_1280;
#define MSG_1280 ((int)&_MSG_1280)
extern int _MSG_12a0;
#define MSG_12a0 ((int)&_MSG_12a0)
extern int _MSG_12c0;
#define MSG_12c0 ((int)&_MSG_12c0)
extern int _MSG_1360;
#define MSG_1360 ((int)&_MSG_1360)
extern int _MSG_13c0;
#define MSG_13c0 ((int)&_MSG_13c0)
extern int _MSG_1420;
#define MSG_1420 ((int)&_MSG_1420)
extern int _MSG_1440;
#define MSG_1440 ((int)&_MSG_1440)
extern int _MSG_1520;
#define MSG_1520 ((int)&_MSG_1520)
extern int _MSG_1720;
#define MSG_1720 ((int)&_MSG_1720)
extern int _MSG_17e0;
#define MSG_17e0 ((int)&_MSG_17e0)
extern int _MSG_1a40;
#define MSG_1a40 ((int)&_MSG_1a40)
extern int _MSG_1bc0;
#define MSG_1bc0 ((int)&_MSG_1bc0)
extern int _MSG_1be0;
#define MSG_1be0 ((int)&_MSG_1be0)
extern int _MSG_1c40;
#define MSG_1c40 ((int)&_MSG_1c40)
extern int _MSG_1c60;
#define MSG_1c60 ((int)&_MSG_1c60)
extern int _MSG_1cc0;
#define MSG_1cc0 ((int)&_MSG_1cc0)
extern int _MSG_1d20;
#define MSG_1d20 ((int)&_MSG_1d20)
extern int _MSG_1d40;
#define MSG_1d40 ((int)&_MSG_1d40)
extern int _MSG_1e40;
#define MSG_1e40 ((int)&_MSG_1e40)
extern int _MSG_1ea0;
#define MSG_1ea0 ((int)&_MSG_1ea0)
extern int _MSG_1f00;
#define MSG_1f00 ((int)&_MSG_1f00)
extern int _MSG_1fa0;
#define MSG_1fa0 ((int)&_MSG_1fa0)
extern int _MSG_2280;
#define MSG_2280 ((int)&_MSG_2280)
extern int _MSG_2440;
#define MSG_2440 ((int)&_MSG_2440)
extern int _MSG_2880;
#define MSG_2880 ((int)&_MSG_2880)

#endif // _MESSAGE_H_
