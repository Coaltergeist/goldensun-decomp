typedef unsigned char u8;
typedef signed char s8;
typedef int s32;

typedef struct Unit Unit;

extern u8 *iwram_3001f2c;
extern Unit *_GetUnit(int unitId);

typedef struct {
    Unit *unit;
    s32 unused4;
    s32 row;
    s32 rowCount;
    s32 col;
    s32 count;
    s32 index;
} DjinnCursor;

int Func_80a8b8c(DjinnCursor *out, int selection)
{
    u8 *state = iwram_3001f2c;
    int off = selection + 0x218;
    u8 *idArray = state + 2;
    Unit *unit = _GetUnit(idArray[off]);
    int count = state[0x218];
    int idxOff = idArray[off] + 0x260;
    int index = (s8)state[idxOff];
    int row;
    int col;
    int rowCount;

    if (index + 1 > count) index = count - 1;
    if (count == 0) index = 0;

    row = index / 5;
    col = index % 5;
    rowCount = count / 5;
    if (count % 5 != 0) rowCount++;

    out->unit = unit;
    out->row = row;
    out->rowCount = rowCount;
    out->col = col;
    out->count = count;
    out->index = index;
    return 1;
}
