/* rpg/item.c -- consolidated TU. */
#include "nonmatching.h"


unsigned char *GetItemInfo(unsigned int itemID) {
    extern unsigned char L7b6a8[] __asm__(".L7b6a8");
    return L7b6a8 + (itemID & 0x1ff) * 0x2c;
}

INCLUDE_ASM("asm/rpg/item/CanEquipItem.s");


unsigned int Func_807845c(unsigned int arg0, unsigned int arg1)
{
    extern unsigned int GetItemEquipSlot(unsigned int item);
    extern unsigned int CanEquipItem(unsigned int unit, unsigned int item);
	if (!GetItemEquipSlot(arg1))
		return 1;
	return CanEquipItem(arg0, arg1);
}

INCLUDE_ASM("asm/rpg/item/GetItemEquipSlot.s");


int GetInventoryItem(int unit, int slot)
{
    extern int GetUnit(int);
  int *new_var;
  unsigned short new_var2;
  int r5;
  unsigned int r3;
  r5 = slot;
  unit = GetUnit(unit);
  r5 = (r5 << 1) + 0xd8;
  new_var = &unit;
  unit = *((unsigned short *) (((char *) unit) + r5));
  new_var2 = (*new_var) >> 11;
  r3 = unit & 0x1ff;
  unit = new_var2;
  unit = unit + 1;
  if (r3 == 0)
  {
    unit = 0;
  }
  return unit;
}


int FindEmptyInventorySlot(int unit)
{
    extern unsigned char *GetUnit(int unit);
    unsigned char *p;
    int count;
    int off;

    p = GetUnit(unit);
    off = 0xd8;
    count = 0;
    if (*(unsigned short *)(p + off) != 0) {
        p += 0xd8;
        do {
            count++;
            if (count > 0xe)
                break;
            p += 2;
        } while (*(unsigned short *)p != 0);
    }
    return count;
}

INCLUDE_ASM("asm/rpg/item/Func_8078500.s");
INCLUDE_ASM("asm/rpg/item/Func_8078550.s");
INCLUDE_ASM("asm/rpg/item/GiveItemTo.s");
INCLUDE_ASM("asm/rpg/item/GiveItem.s");


int CheckItem(int pc, int item)
{
    extern unsigned char *GetUnit(int unit);
    unsigned char *u;
    unsigned short *p;
    int i;

    u = GetUnit(pc);
    p = (unsigned short *)(u + 0xd8);
    for (i = 0; i <= 0xe; i++) {
        if ((p[i] & 0x1ff) == item)
            return i;
    }
    return -1;
}

INCLUDE_ASM("asm/rpg/item/CheckPartyItem.s");
INCLUDE_ASM("asm/rpg/item/EquipItem.s");
INCLUDE_ASM("asm/rpg/item/GetEquippedItem.s");
INCLUDE_ASM("asm/rpg/item/Func_807882c.s");
INCLUDE_ASM("asm/rpg/item/Func_8078870.s");
INCLUDE_ASM("asm/rpg/item/Func_80788c4.s");
INCLUDE_ASM("asm/rpg/item/Func_8078948.s");
INCLUDE_ASM("asm/rpg/item/CanRemoveItem.s");


unsigned int Func_80789dc(unsigned int arg0)
{
    extern int CheckPartyItem(int item);
    extern int CheckItem(int pc, int item);
    extern int Func_80788c4(int a, int b);
    extern void Func_8078948(int a, int b);
    int r5;

    r5 = CheckPartyItem(arg0);
    if (r5 == -1)
        return 0;
    Func_80788c4(r5, CheckItem(r5, arg0));
    return 0;
}
unsigned int Func_8078a08(unsigned int arg0)
{
    extern int CheckPartyItem(int item);
    extern int CheckItem(int pc, int item);
    extern int Func_80788c4(int a, int b);
    extern void Func_8078948(int a, int b);
    int r5;

    r5 = CheckPartyItem(arg0);
    if (r5 == -1)
        return 0;
    Func_8078948(r5, CheckItem(r5, arg0));
    return 0;
}

INCLUDE_ASM("asm/rpg/item/BreakItem.s");


int RepairItem(int unit, int item)
{
    extern void *GetUnit(int unit);
  void *ptr;
  int r5;
  unsigned short r2;
  int r3;
  unsigned char new_var;
  int new_var2;
  r5 = item;
  new_var = 0xd8;
  ptr = GetUnit(unit);
  r5 <<= 1;
  ;
  r5 += new_var;
  ;
  ;
  if ((*((unsigned short *) (((char *) ptr) + r5))) == 0)
  {
    return -1;
  }
  ;
  *((unsigned short *) (((char *) ptr) + r5)) = 0xfbff & (*((unsigned short *) (((char *) ptr) + r5)));
  return 0;
}


/* FF: u8 GetPsynergyItemTarget(ItemID item) */
unsigned int GetPsynergyItemTarget(unsigned int item) {
    extern unsigned int GetMoveInfo(unsigned int arg0);
    unsigned int ptr = (unsigned int)GetItemInfo(item);
    unsigned short val = *(unsigned short *)(ptr + 0x28);
    unsigned int result = GetMoveInfo(val);
    return *(unsigned char *)result;
}

INCLUDE_ASM("asm/rpg/item/Func_8078aa0.s");
INCLUDE_ASM("asm/rpg/item/Func_8078ad0.s");
INCLUDE_ASM("asm/rpg/item/Func_8078af8.s");


unsigned int Func_8078b60(unsigned int arg0)
{
    extern int Func_80796c4(unsigned short *buf);
    extern int Func_8078af8(unsigned short val, unsigned int arg);
    unsigned short buf[16];
    int count;
    int sum;
    int i;

    sum = 0;
    count = Func_80796c4(buf);
    if (sum < count) {
        for (i = 0; i < count; i++) {
            sum += Func_8078af8(buf[i], arg0);
        }
    }
    return sum;
}
