# Re-match candidates: pure-C functions swept to .s during de-integration

These functions were matched as genuine pure C but shared a translation
unit with an asm-assisted function. To reach zero asm-in-C, the whole file
was de-integrated to honest .s. The pure-C source is preserved in git
history (the deleted .c) and can be re-matched into its own clean .c file.

| file | pure-C functions (re-matchable) | asm functions (genuine .s) |
|------|--------------------------------|----------------------------|
| `src/rom_c0/rom_49a8_b.c` | MatrixPush, MatrixStore, MatrixLoad, MatrixPop, MatrixMultiply, MatrixRotate, MatrixPitch, MatrixYaw, MatrixRoll, MatrixTranslatev, MatrixScalev, MatrixRotateTrans, MatrixRotateTransScale, sqrt, FastDivide, MatrixSetLook, MatrixLook, FxDiv, Func_8005208, Func_8005258, Vec3Transform, PhysMove | InitMatrixStack, MatrixReset, MakeLookMatrix |
| `src/rom_c0/rom_3e58_c_b.c` | ClearTasks, Unused_memcpy32, SortTasks, GetTaskIndex, StartTask, StopTask, Func_80042c8, Func_800430c, Func_8004358, Func_800439c, Func_80043e0 | RunTasks |
| `src/rom_c0/rom_2e00_c_c_b.c` | InitRAMLib, SetIntrHandler, VBlankIntrWait, Halt, Func_800352c, UpdateKeyPressRepeat | WaitFrames |
| `src/overlays/common/common1_a_a_a_a_c_fac.c` | label_reservation_1, label_reservation_2 | OvlFunc_common1_fac |
| `src/overlays/rom_7ac2d8/ovl_35b8_a_a_a.c` | OvlFunc_924_200b5b8, OvlFunc_924_200b5dc | OvlFunc_924_200b600 |
| `src/overlays/common/common0_func_0.c` | OvlFunc_common0_0 | OvlFunc_common0_18 |
| `src/overlays/common/common2_c_c_c_c_a_380.c` | ShiftWords | OvlFunc_common2_380 |
| `src/overlays/rom_794ac0/ovl_30_c_c_c_c_c_c_tail.c` | OvlFunc_899_200c840 | OvlFunc_899_200c7fc |
| `src/overlays/rom_7a1ff0/ovl_30_c_c_c_c_a_8abc.c` | OvlFunc_914_2008b24 | OvlFunc_914_2008abc |
| `src/overlays/rom_7a2bf0/ovl_30_c_c_c_a_8c8c.c` | OvlFunc_915_2008cf4 | OvlFunc_915_2008c8c |
| `src/overlays/rom_7a37f0/ovl_30_c_c_c_a_8e64.c` | OvlFunc_916_2008ecc | OvlFunc_916_2008e64 |
| `src/overlays/rom_7a4370/ovl_30_c_c_c_c_a_9768.c` | OvlFunc_917_20097d0 | OvlFunc_917_2009768 |
| `src/overlays/rom_7aa430/ovl_e90_c_c_a_a.c` | OvlFunc_923_2008eac | OvlFunc_923_2008ed0, OvlFunc_923_2008f48 |
| `src/overlays/rom_7ed0a0/ovl_30_a_c_a_c.c` | OvlFunc_964_20093e0 | OvlFunc_964_20093b4 |
| `src/overlays/rom_7f2f14/ovl_30_a_a_a_c_c_c_85e4.c` | OvlFunc_968_2008118_abi | OvlFunc_968_20085e4 |
| `src/overlays/rom_7f2f14/ovl_30_c_a_c_a_a_c.c` | OvlFunc_968_2008fbc | OvlFunc_968_2008f38 |
| `src/rom_15000/rom_1de5c_c_c_c_c_a_a_c_c_a_a_1faa8.c` | Func_8001af8 | Func_801faa8 |
| `src/rom_15000/rom_20198_c_c_c_a_a_21750.c` | Func_801eadc_4 | Func_8021750 |
| `src/rom_77000/rom_79460_c_a_a_a.c` | AddPartyMember | Func_8079664 |
| `src/rom_8a000/rom_97384_c_c_79a4.c` | FxDiv | Func_80979a4 |
| `src/rom_8a000/rom_9ad70_a_a_a_a.c` | ActorSetColorswap | Func_809ad70 |
| `src/rom_9000/rom_f9cc_a_c_fac8.c` | Func_8001af8 | UnpackTilemap |
| `src/rom_b5000/rom_b7410_c_c_a_b.c` | Func_80b8064 | Func_80b8000 |
| `src/rom_c9000/rom_d2d98_d40ec.c` | Func_8001af8 | ColorCycleVFXPalette |

Total pure-C functions swept: **62** across 24 files.
Highest value: `src/rom_c0/rom_49a8_b.c` (3D matrix/vector math library, 22 functions).

## Intentional hand-written asm (not re-match candidates)

These are genuinely un-C-able routines kept as honest assembly, the same
category pret keeps as asm in its m4a audio engine:

- `src/rom_f9000/rom_f9ef8_a_9ef8.s` — TrackStop, hand-written soft-double
  assembly (classic non-interwork ABI). De-integrated to .s with a per-file
  interwork assembly rule.
- `src/rom_f9000/rom_f95e0_9ee8.inc.s` — Func_80f9ee8, a two-byte r3 trampoline
  whose PC-relative literal pool must not move; kept as an .inc.s fragment
  included in its neighbouring object.
- `src/lib/m4a/ply_fine.c` — the ported Sappy (MP2K) audio mixer inner loop,
  compiled with old_agbcc. Its inline asm mirrors the upstream SAT-R/sa2
  reverse-engineering and is the faithful form of the vendored audio library.
  This is the only remaining .c file containing inline asm.
