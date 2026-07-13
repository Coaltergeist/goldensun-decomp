typedef unsigned char u8;

extern u8 gOvl_02009ba4[];
extern u8 MapAsset_1acc[] asm(".L1acc");
extern u8 MapAsset_19c4[] asm(".L19c4");
extern u8 gOvl_020098ec[];
extern u8 MapAsset_1dcc[] asm(".L1dcc");
extern u8 MapAsset_1d24[] asm(".L1d24");
extern u8 MapAsset_1c7c[] asm(".L1c7c");
extern u8 MapAsset_18d4[] asm(".L18d4");

#define SELECT_MAP_ASSET_FUNCTION OvlFunc_942_20080a0
#define SELECT_MAP_ASSET_6B_FLAG_SET gOvl_02009ba4
#define SELECT_MAP_ASSET_6B_FLAG_CLEAR MapAsset_1acc
#define SELECT_MAP_ASSET_70_FLAG_SET MapAsset_19c4
#define SELECT_MAP_ASSET_70_FLAG_CLEAR gOvl_020098ec
#define SELECT_MAP_ASSET_6C_FIRST MapAsset_1dcc
#define SELECT_MAP_ASSET_6C_SECOND MapAsset_1d24
#define SELECT_MAP_ASSET_6C_DEFAULT MapAsset_1c7c
#define SELECT_MAP_ASSET_FALLBACK MapAsset_18d4

#include "../select_map_asset.inc"
