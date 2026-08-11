/* battle_anim/moves/bite_sting.c -- consolidated TU. */
#include "nonmatching.h"

extern void BaseAnim_Bite_Sting(void *context, int subanim);

void Anim_NumbingSting(void *context) {
    BaseAnim_Bite_Sting(context, 6);
}


void Anim_CannibalFang(void *context) {
    BaseAnim_Bite_Sting(context, 3);
}


void Anim_PoisonFang(void *context) {
    BaseAnim_Bite_Sting(context, 1);
}


void Anim_RabidFang(void *context) {
    BaseAnim_Bite_Sting(context, 10);
}


void Anim_ElectricBite(void *context) {
    BaseAnim_Bite_Sting(context, 5);
}


void Anim_PoisonTail(void *context) {
    BaseAnim_Bite_Sting(context, 9);
}


void Anim_VampiricFang(void *context) {
    BaseAnim_Bite_Sting(context, 4);
}


void Anim_DoubleFang(void *context) {
    BaseAnim_Bite_Sting(context, 0);
}


void Anim_MortalBlow(void *context) {
    BaseAnim_Bite_Sting(context, 8);
}


void Anim_TwinBeaks(void *context) {
    BaseAnim_Bite_Sting(context, 7);
}


void Anim_AcidBite(void *context) {
    BaseAnim_Bite_Sting(context, 2);
}


void Anim_DrainFang(void *context) {
    BaseAnim_Bite_Sting(context, 11);
}

INCLUDE_ASM("asm/battle_anim/moves/bite_sting/rom_ca57c_c_c_c_c_c_c_c_c_c_c_c_c.s");
