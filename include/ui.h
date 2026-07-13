#ifndef _UI_H_
#define _UI_H_

#include "gba/types.h"

struct UIBox;

struct UIBox *CreateUIBox(int x, int y, int width, int height, int style);
void UIDrawText(const u8 *text, struct UIBox *box, int x, int y);

struct UIBox *Func_8021c34(void);

/* Semantic source alias; the linker-visible name remains unchanged. */
#define CreateTimeLabelBox Func_8021c34

#endif /* _UI_H_ */
