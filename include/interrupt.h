#ifndef _INTERRUPT_H_
#define _INTERRUPT_H_

#include "gba/types.h"

#define INTR_CHECK     (*(u16 *)0x3007FF8)
#define INTR_VECTOR    (*(void **)0x3007FFC)

#define INTR_ID_VBLANK   0
#define INTR_ID_HBLANK   1
#define INTR_ID_VCOUNT   2
#define INTR_ID_TIMER0   3
#define INTR_ID_TIMER1   4
#define INTR_ID_TIMER2   5
#define INTR_ID_TIMER3   6
#define INTR_ID_SERIAL   7
#define INTR_ID_DMA0     8
#define INTR_ID_DMA1     9
#define INTR_ID_DMA2    10
#define INTR_ID_DMA3    11
#define INTR_ID_KEYPAD  12
#define INTR_ID_GAMEPAK 13

typedef void intrfunc_t(void);

// forward declarations



#endif // _INTERRUPT_H_
