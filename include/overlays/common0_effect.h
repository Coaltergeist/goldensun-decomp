#ifndef COMMON0_EFFECT_H
#define COMMON0_EFFECT_H

// Parameter view used by the common0 effect spawner, OvlFunc_common0_10c.
// Flag bits select which fields are read; retain the original integer views.
// Other overlay-specific views have separate declarations.
struct EffectData {
    int unk0;
    int unk4;
    int unk8;
    int unkc;
    int unk10;
    int unk14;
    short unk18;
    short unk1a;
    int unk1c;
    int unk20;
    int unk24;
};

// Target ABI checks for the production compiler.
typedef char Common0EffectDataSizeCheck[(sizeof(struct EffectData) == 40) ? 1 : -1];
typedef char Common0EffectDataAlignmentCheck[(__alignof__(struct EffectData) == 4) ? 1 : -1];
typedef char Common0EffectDataFieldWidthsCheck[
    (sizeof(((struct EffectData *)0)->unk0) == 4 &&
     sizeof(((struct EffectData *)0)->unk4) == 4 &&
     sizeof(((struct EffectData *)0)->unk8) == 4 &&
     sizeof(((struct EffectData *)0)->unkc) == 4 &&
     sizeof(((struct EffectData *)0)->unk10) == 4 &&
     sizeof(((struct EffectData *)0)->unk14) == 4 &&
     sizeof(((struct EffectData *)0)->unk18) == 2 &&
     sizeof(((struct EffectData *)0)->unk1a) == 2 &&
     sizeof(((struct EffectData *)0)->unk1c) == 4 &&
     sizeof(((struct EffectData *)0)->unk20) == 4 &&
     sizeof(((struct EffectData *)0)->unk24) == 4) ? 1 : -1];
typedef char Common0EffectDataOffsetsCheck[
    ((unsigned long)&((struct EffectData *)0)->unk0 == 0 &&
     (unsigned long)&((struct EffectData *)0)->unk4 == 4 &&
     (unsigned long)&((struct EffectData *)0)->unk8 == 8 &&
     (unsigned long)&((struct EffectData *)0)->unkc == 12 &&
     (unsigned long)&((struct EffectData *)0)->unk10 == 16 &&
     (unsigned long)&((struct EffectData *)0)->unk14 == 20 &&
     (unsigned long)&((struct EffectData *)0)->unk18 == 24 &&
     (unsigned long)&((struct EffectData *)0)->unk1a == 26 &&
     (unsigned long)&((struct EffectData *)0)->unk1c == 28 &&
     (unsigned long)&((struct EffectData *)0)->unk20 == 32 &&
     (unsigned long)&((struct EffectData *)0)->unk24 == 36) ? 1 : -1];

#endif // COMMON0_EFFECT_H
