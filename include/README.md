# Shared type ownership

Include the owning header instead of copying a declaration. Keep a partial view
local until object identity, field widths, offsets and access behavior are known.
Compile layout checks with the assigned target profile; host C layout is not evidence.

| Type | Owner | Limits |
| --- | --- | --- |
| `Projection` | `math/projection.h` | Fixed-point projection state |
| `SpriteSlot` | `sprite/slot.h` | VRAM allocation entry |
| `GlobalState` | `state/global_state.h` | Opaque 704-byte view; global externs and assembly aliases remain local |
| `MapTile_528` | `field/map_tile.h` | Four-byte map entry; existing field names remain provisional |
| `Pk` | `field/push_block.h` | 24-byte packet passed by value; preserve `void (*arg5)(void)` |
| `Actor` | `actor.h` | Canonical 112-byte GS1 actor; local prefix views are not complete actors |
| `EffectData` | `overlays/common0_effect.h` | Common0's 40-byte integer parameter view; flags select fields |

Distinct effect views remain in their sole owning overlay:
`ImilFallsEffectData` (24 bytes), `FuchinEffectDataView` (40 bytes), and
`CrossboneEffectDataView` (40 bytes). Equal size does not establish compatible
field types: Crossbone uses halfwords at 0x20/0x22 and a callback at 0x24, while
the common integer view retains different declarations.

Before extending these declarations:

- Resolve raw/scalar `gState` aliases and coins-specific views independently.
- Reconcile the remaining local actor views, including signed versus unsigned
  fields. A field's name is not proof of its offset.
- `UpdateActors` loads actor+0x6c and calls it directly with the actor in r0.
  The legacy `actorfun_t *update` declaration remains pending a review of all
  callback signatures and casts; do not infer another runtime dereference from it.
- For common0, check each flag-controlled assembly access before replacing
  integer fields with pointers, callbacks or narrower scalar types.
- Preserve function/candidate bodies and attribution during declaration moves.
  Compare every affected object and run the ROM, all-overlay and candidate gates.
