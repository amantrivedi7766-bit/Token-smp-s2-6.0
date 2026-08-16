# ECLIPSE SMP — Shards of Power

A premium, highly polished custom datapack for Minecraft Java Edition.

## Features

- **Eclipse Shards:** A custom progression system earned through kills, quests, and events.
- **6 Unique Power Cores:** Void, Inferno, Frost, Storm, Nature, and Cosmic.
- **Abilities:** Each core features 3 normal abilities, 1 ultimate, cooldowns, and stunning particle animations.
- **Awakening System:** A temporary massive power boost with unique effects.
- **Bosses:** Eclipse Guardian, Void Reaper, and Celestial Titan with custom attacks.
- **Events:** Server-wide events like Meteor Showers and Double Shard events.
- **Quests:** Earn shards by killing zombies, mining diamonds, or defeating bosses.
- **Custom UI:** Clean action bars and boss bars displaying level, shards, and ultimate charge.

## Installation

1. Download or copy the `EclipseSMP` folder.
2. Place the folder into the `datapacks` folder of your Minecraft world (`.minecraft/saves/<WorldName>/datapacks/`).
3. If on a server, place it in the `world/datapacks` folder.
4. Run the command `/reload` in-game.

## Getting Started

1. Upon joining, players should be automatically initialized and given a core selector.
2. If you need to manually start or test the system, run:
   `/function eclipse:start`
3. This will give you the required trigger items (Carrot on a Stick & Warped Fungus on a Stick).

## Selecting a Core

- If you don't have a core, a menu will appear in chat. Click on a core name to select it.
- Alternatively, you can use the command: `/function eclipse:ui/core_selector`

## Activating Abilities

You are given two items:
- **Ability 1 / 3 Item (Carrot on a Stick):** Right-click to cast Ability 1. Drop it (Q) to cast Ability 3.
- **Ability 2 / Ult Item (Warped Fungus on a Stick):** Right-click to cast Ability 2. Drop it (Q) to cast your Ultimate.

*Note: Ultimates require 100% charge to activate. Charge is gained passively over time.*

## Progression (Shards & Leveling)

- **Shards:** Earned by killing mobs, completing quests (like mining diamonds or killing zombies), and defeating bosses.
- **Leveling:** Gaining Shards also grants XP. Every 100 XP levels you up. Your power level is displayed in the Action Bar.

## Bosses

Summon bosses using the following commands (admin only):
- `/function eclipse:bosses/summon_guardian`
- `/function eclipse:bosses/summon_reaper`
- `/function eclipse:bosses/summon_titan`

Bosses have custom health bars and telegraphed attacks. Defeating them grants massive shard rewards (ensure players manually trigger `/function eclipse:quests/boss_kill` upon kill for testing).

## Awakening

Trigger your Awakening form manually for testing:
- `/function eclipse:awakening/trigger`
You will receive massive buffs and particle effects for a limited time.

## Server Events

Events happen randomly every 30 minutes. To force an event for testing:
- `/function eclipse:events/start_random`
To end an event manually:
- `/function eclipse:events/end`

## Testing Commands summary

- Start system / get items: `/function eclipse:start`
- Core Selector: `/function eclipse:ui/core_selector`
- Summon Guardian: `/function eclipse:bosses/summon_guardian`
- Summon Reaper: `/function eclipse:bosses/summon_reaper`
- Summon Titan: `/function eclipse:bosses/summon_titan`
- Trigger Awakening: `/function eclipse:awakening/trigger`
- Start Random Event: `/function eclipse:events/start_random`

Enjoy Eclipse SMP!
