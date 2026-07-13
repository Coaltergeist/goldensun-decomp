#ifndef SELECT_MAP_ASSET_FUNCTION
#error "SELECT_MAP_ASSET_FUNCTION must name the generated entry point"
#endif
#ifndef SELECT_MAP_ASSET_6B_FLAG_SET
#error "SELECT_MAP_ASSET_6B_FLAG_SET must name the map 0x6b completed asset"
#endif
#ifndef SELECT_MAP_ASSET_6B_FLAG_CLEAR
#error "SELECT_MAP_ASSET_6B_FLAG_CLEAR must name the map 0x6b default asset"
#endif
#ifndef SELECT_MAP_ASSET_70_FLAG_SET
#error "SELECT_MAP_ASSET_70_FLAG_SET must name the map 0x70 completed asset"
#endif
#ifndef SELECT_MAP_ASSET_70_FLAG_CLEAR
#error "SELECT_MAP_ASSET_70_FLAG_CLEAR must name the map 0x70 default asset"
#endif
#ifndef SELECT_MAP_ASSET_6C_FIRST
#error "SELECT_MAP_ASSET_6C_FIRST must name the map 0x6c first asset"
#endif
#ifndef SELECT_MAP_ASSET_6C_SECOND
#error "SELECT_MAP_ASSET_6C_SECOND must name the map 0x6c second asset"
#endif
#ifndef SELECT_MAP_ASSET_6C_DEFAULT
#error "SELECT_MAP_ASSET_6C_DEFAULT must name the map 0x6c default asset"
#endif
#ifndef SELECT_MAP_ASSET_FALLBACK
#error "SELECT_MAP_ASSET_FALLBACK must name the fallback asset"
#endif

typedef unsigned char SelectMapAssetByte;
typedef signed short SelectMapAssetS16;

extern SelectMapAssetByte gState[];
extern int __GetFlag(int flag);

/* Keep the original literal-pool materialization of the map identifiers. */
__asm__(
    ".set .LSelectMapId6b, 0x6b\n"
    ".set .LSelectMapId70, 0x70\n"
    ".set .LSelectMapId6c, 0x6c");
extern SelectMapAssetByte SelectMapId6b[] asm(".LSelectMapId6b");
extern SelectMapAssetByte SelectMapId70[] asm(".LSelectMapId70");
extern SelectMapAssetByte SelectMapId6c[] asm(".LSelectMapId6c");

/* 現在マップとイベント進行に対応する表示データを選ぶ。 */
SelectMapAssetByte *SELECT_MAP_ASSET_FUNCTION(void)
{
    register SelectMapAssetByte *state asm("r3") = gState;
    register int offset asm("r1") = 0xe0;
    register int mapId asm("r2");
    register int compare asm("r3");
    register int zero asm("r1");

    asm volatile("" : "+r"(state), "+r"(offset));
    offset <<= 1;
    state += offset;
    zero = 0;
    asm volatile("" : "+r"(state), "+r"(zero));
    mapId = *(SelectMapAssetS16 *)(state + zero);

    compare = (int)SelectMapId6b;
    asm volatile("" : "+r"(compare), "+r"(mapId));

    if (mapId == compare) {
        if (__GetFlag(0x93e))
            return SELECT_MAP_ASSET_6B_FLAG_SET;
        return SELECT_MAP_ASSET_6B_FLAG_CLEAR;
    }
    compare = (int)SelectMapId70;
    asm volatile("" : "+r"(compare), "+r"(mapId));
    if (mapId == compare) {
        if (__GetFlag(0x950))
            return SELECT_MAP_ASSET_70_FLAG_SET;
        return SELECT_MAP_ASSET_70_FLAG_CLEAR;
    }
    compare = (int)SelectMapId6c;
    asm volatile("" : "+r"(compare), "+r"(mapId));
    if (mapId == compare) {
        if (__GetFlag(0x950))
            return SELECT_MAP_ASSET_6C_FIRST;
        if (__GetFlag(0x93e))
            return SELECT_MAP_ASSET_6C_SECOND;
        return SELECT_MAP_ASSET_6C_DEFAULT;
    }
    return SELECT_MAP_ASSET_FALLBACK;
}

#undef SELECT_MAP_ASSET_FALLBACK
#undef SELECT_MAP_ASSET_6C_DEFAULT
#undef SELECT_MAP_ASSET_6C_SECOND
#undef SELECT_MAP_ASSET_6C_FIRST
#undef SELECT_MAP_ASSET_70_FLAG_CLEAR
#undef SELECT_MAP_ASSET_70_FLAG_SET
#undef SELECT_MAP_ASSET_6B_FLAG_CLEAR
#undef SELECT_MAP_ASSET_6B_FLAG_SET
#undef SELECT_MAP_ASSET_FUNCTION
