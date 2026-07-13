typedef unsigned char u8;

extern u8 GFX_Thermometer[];
extern u8 MapAsset_1e80[] asm(".L1e80");
extern u8 MapAsset_2120[] asm(".L2120");
extern u8 MapAsset_2018[] asm(".L2018");
extern u8 MapAsset_2390[] asm(".L2390");
extern u8 MapAsset_230c[] asm(".L230c");
extern u8 MapAsset_224c[] asm(".L224c");
extern u8 MapAsset_1e74[] asm(".L1e74");

#define SELECT_MAP_ASSET_FUNCTION OvlFunc_942_200819c
#define SELECT_MAP_ASSET_6B_FLAG_SET GFX_Thermometer
#define SELECT_MAP_ASSET_6B_FLAG_CLEAR MapAsset_1e80
#define SELECT_MAP_ASSET_70_FLAG_SET MapAsset_2120
#define SELECT_MAP_ASSET_70_FLAG_CLEAR MapAsset_2018
#define SELECT_MAP_ASSET_6C_FIRST MapAsset_2390
#define SELECT_MAP_ASSET_6C_SECOND MapAsset_230c
#define SELECT_MAP_ASSET_6C_DEFAULT MapAsset_224c
#define SELECT_MAP_ASSET_FALLBACK MapAsset_1e74

#include "../select_map_asset.inc"
