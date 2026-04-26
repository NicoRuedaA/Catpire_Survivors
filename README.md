<h1 align="center">Catpire Survivors</h1>

<p align="center">
  <a href="https://www.java.com/">
    <img src="https://img.shields.io/badge/Java-17-orange?logo=java" />
  </a>
  <a href="https://libgdx.com/">
    <img src="https://img.shields.io/badge/libGDX-1.12-red" />
  </a>
  <a href="https://www.khronos.org/opengl/wiki/OpenGL_Shading_Language">
    <img src="https://img.shields.io/badge/Shaders-GLSL-green" />
  </a>
  <img src="https://img.shields.io/badge/Status-Alfa-brightgreen" />
</p>

<p align="center">
  <img src="/Docs/preview.gif" alt="screenshot"/>
</p>

A **Vampire Survivors-inspired roguelike** built in **Java** with **libGDX** framework. Fight through endless enemy waves, collect XP gems, level up your character, and survive as long as possible

---

> **Current Status:** Alfa released (Playable)  
> **Last Updated:** 26-APR-2026

---

## 1. What is Catpire Survivors?

A fast-paced auto-battler roguelike where you fight against overwhelming odds. Your weapons fire automatically — your only job is to survive through smart movement and positioning.

- **Auto-battle system** — weapons fire automatically, focus on movement and positioning
- **Enemy waves** — escalating difficulty with multiple enemy types and spawn patterns
- **XP & level-up** — collect gems dropped by enemies to level up and choose upgrades
- **Custom GLSL shaders** — visual effects written in GLSL (37% of the codebase)
- **Boss encounters** — distinct boss fights with unique attack patterns
- **Gradle build** — cross-platform build system for desktop and potential mobile targets

**Architecture:** Object-Oriented with Component-based Entity System (ECS-lite)

---

## 2. Architecture

```
┌─────────────────────────────────────────────────────────────────────────┐
│                        COMPONENT DIAGRAM                                │
│                                                                         │
│  ┌─────────────────┐  ┌─────────────────┐  ┌─────────────────┐          │
│  │   Player        │  │   Enemy         │  │   Projectile    │          │
│  │   (Brain)       │  │   (Body)        │  │   (Controller)  │          │
│  │                 │  │                 │  │                 │          │
│  │  - State        │  │  - AI           │  │  - Movement     │          │
│  │  - PowerUps     │  │  - Animation    │  │  - Collision    │          │
│  │  - Health       │  │  - Spawning     │  │  - Damage       │          │
│  └────────┬────────┘  └─────────────────┘  └─────────────────┘          │
│           │                                                             │
│           │  ┌───────────────────────────────────────────┐              │
│           └──│          GameManager / InGame             │              │
│              │                                           │              │
│              │  - Wave management                        │              │
│              │  - Score & XP                             │              │
│              │  - Camera control                         │              │
│              └───────────────────────────────────────────┘              │
└─────────────────────────────────────────────────────────────────────────┘
```

---

## 3. Implemented Systems

| System | Status | Description |
|--------|--------|-------------|
| **Player Movement** | ✅ | WASD/Arrow keys, smooth movement with acceleration |
| **Auto-attack System** | ✅ | Weapons fire automatically at nearest enemy |
| **Enemy AI** | ✅ | Chase player, multiple enemy types |
| **XP & Level-up** | ✅ | Collect gems, choose upgrades via UI |
| **PowerUp System** | ✅ | 8+ upgrade types (Speed, Shield, More Projectiles, etc.) |
| **Boss Encounters** | ✅ | Distinct bosses with unique patterns |
| **GLSL Shaders** | ✅ | Custom visual effects |
| **Pause/Resume** | ✅ | Esc key to pause |

---

## 4. Technical Requirements

| Technology | Version | Notes |
|------------|---------|-------|
| Java | **17+** | LTS version required |
| libGDX | **1.12** | Cross-platform game framework |
| GLSL | **OpenGL ES 2.0** | Shader language |
| Gradle | **8.x** | Build tool (included in wrapper) |

### Required Packages (via Gradle)

```bash
com.badlogicgames.gdx:gdx:1.12.1
com.badlogicgames.gdx:gdx-backend-lwjgl3:1.12.1
com.badlogicgames.gdx:gdx-tools:1.12.1
```

---

## 5. Quick Installation

```bash
# 1. Clone repository
git clone https://github.com/NicoRuedaA/Catpire_Survivors.git
cd Catpire_Survivors

# 2. Run the game (desktop)
./gradlew lwjgl3:run

# 3. Or build a runnable JAR
./gradlew lwjgl3:jar
# Output: lwjgl3/build/libs/
```

---

## 6. Controls / Usage

| Input | Action | Notes |
|-------|--------|-------|
| `WASD` / `Arrow keys` | Move | 8-directional movement |
| Weapons | Auto-fire | Fires automatically at nearest enemy |
| `Esc` | Pause/Resume | Toggle game pause |
| Mouse | Select upgrades | Click to choose level-up options |

---

## 7. Project Structure

```
Catpire_Survivors/
├── core/src/main/java/io/github/catpire/    # Main game code
│   ├── Player.java                        # Player entity & state
│   ├── Enemy.java                       # Enemy entity & AI
│   ├── Projectile.java                  # Projectile system
│   ├── PowerUp/                        # Upgrade system
│   │   ├── PowerUp.java               # Base class
│   │   ├── PowerUpManager.java       # Upgrade manager
│   │   └── PowerUpRegistry.java     # Upgrade registry
│   ├── GameManager.java                  # Core game loop
│   ├── InGame.java                    # In-game screen
│   ├── InputManager.java              # Input handling
│   └── *.java                       # Other entities
│
├── lwjgl3/                             # Desktop launcher
├── assets/                              # Sprites, shaders (.glsl)
├── Docs/                                # Documentation & media
├── build.gradle                         # Root build config
└── settings.gradle                     # Gradle settings
```

---

## 8. Code Conventions

### Package Structure

```java
io.github.catpire          // Main package
io.github.catpire.PowerUp // PowerUp system
```

### Naming Conventions

- **Classes:** PascalCase (e.g., `Player`, `EnemyManager`)
- **Methods:** camelCase (e.g., `update()`, `fireProjectile()`)
- **Constants:** UPPER_SNAKE_CASE
- **Files:** Same name as class + `.java`

### Commits

Format: `<type>(<scope>): <description>`

```bash
feat(player): add dash ability
fix(enemy): fix pathfinding issue
refactor(powerup): improve upgrade system
docs(readme): update documentation
```

---

## 9. Troubleshooting

### "Game doesn't start"

1. Verify Java 17+ is installed: `java -version`
2. Clean and rebuild: `./gradlew clean lwjgl3:run`

### "Shaders not loading"

1. Ensure `.glsl` files are in `assets/` folder
2. Check file paths in `resourceManager.java`

### "Lag / Low FPS"

1. Reduce enemy spawn rate in `EnemyManager`
2. Lower resolution in `Main.java`

---

## 10. Changelog

### v0.1.0 Alfa (2026-04-26)
- ✅ Feat: Auto-battle combat system
- ✅ Feat: Enemy wave spawning
- ✅ Feat: XP and level-up system
- ✅ Feat: PowerUp upgrades (8 types)
- ✅ Feat: Boss encounters
- ✅ Feat: Custom GLSL shaders
- ✅ Feat: Pause functionality

---

## 11. Roadmap

See [ROADMAP.md](ROADMAP.md) for detailed progress tracking.

| Phase | Status | Progress |
|-------|--------|----------|
| Core Gameplay | ✅ DONE | 100% |
| Progression Systems | ✅ DONE | 100% |
| Visual Polish | ⚠️ IN PROGRESS | 50% |
| Audio | ⚠️ IN PROGRESS | 20% |
| Content Expansion | 📋 BACKLOG | 0% |
| Mobile Port | 📋 BACKLOG | 0% |
| Polish & Release | 📋 BACKLOG | 10% |

### Quick Summary

```
Core Systems:     ████████████████████ 100%
Progression:     ████████████████████ 100%
Visuals:         ██████████░░░░░░░░░░░ 50%
Audio:           ████░░░░░░░░░░░░░░░░░░ 20%
Content:         ░░░░░░░░░░░░░░░░░░░░░  0%
Mobile:          ░░░░░░░░░░░░░░░░░░░░░  0%
```



## 12. Resources

- **Repository:** https://github.com/NicoRuedaA/Catpire_Survivors
- **Roadmap:** [ROADMAP.md](ROADMAP.md) (detailed progress tracking)
- **Documentation:** `Docs/`
- **libGDX Docs:** https://libgdx.com/

---


<i>Built with Java + libGDX + passion</i>
