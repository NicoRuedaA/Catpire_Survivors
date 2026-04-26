<h1 align="center"> Project Name </h1>

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

{A one-line description of your project, bold the main technologies used.}

---

> **Current Status:** {status_description}  
> **Last Updated:** {YYYY-MM-DD}

---

## 1. What is {ProjectName}?

{Description of what the project does and its main features.}

- **Feature 1:** {description}
- **Feature 2:** {description}
- **Feature 3:** {description}
- **Feature 4:** {description}
- **Feature 5:** {description}
- **Feature 6:** {description}

**Architecture:** {describe your architecture pattern, e.g., "Brain and Body", Clean Architecture, etc.}

---

## 2. Architecture

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│                        COMPONENT DIAGRAM                              │
│                                                                          │
│  ┌─────────────────┐  ┌─────────────────┐  ┌─────────────────┐   │
│  │   Player        │  │   Enemy          │  │   Projectile    │   │
│  │   (Brain)       │  │   (Body)         │  │   (Controller) │   │
│  │                 │  │                 │  │                 │   │
│  │  - State        │  │  - AI            │  │  - Movement    │   │
│  │  - PowerUps     │  │  - Animation    │  │  - Collision   │   │
│  │  - Health       │  │  - Spawning     │  │  - Damage     │   │
│  └────────┬────────┘  └─────────────────┘  └─────────────────┘   │
│           │                                                            │
│           │  ┌───────────────────────────────────────────┐              │
│           └──│          GameManager / InGame           │              │
│              │                                           │              │
│              │  - Wave management                       │              │
│              │  - Score & XP                           │              │
│              │  - Camera control                       │              │
│              └───────────────────────────────────────┘              │
└──────────────────────────────────────────────────────────────────────────┘
```

---

## 3. Implemented Systems

| System | Status | Description |
|--------|--------|-------------|
| **{Feature}** | ✅ | {description} |
| **{Feature}** | ✅ | {description} |
| **{Feature}** | ✅ | {description} |
| **{Feature}** | ✅ | {description} |
| **{Feature}** | 🟡 | {description} |
| **{Feature}** | ❌ | Not started |

### Phase Progress Overview

```
Core:           ████████████████████ 100%
Progression:    ████████████████████ 100%
Visuals:        ██████████░░░░░░░░░░░ 50%
Audio:          ████░░░░░░░░░░░░░░░░░ 20%
Content:        ░░░░░░░░░░░░░░░░░░░░░  0%
```

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
# Core
com.badlogicgames.gdx:gdx:1.12.1
com.badlogicgames.gdx:gdx-backend-lwjgl3:1.12.1
com.badlogicgames.gdx:gdx-tools:1.12.1
```

---

## 5. Quick Installation

```bash
# 1. Clone repository
git clone https://github.com/{username}/{repo}.git
cd {repo}

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
{Project}/
├── core/src/main/java/io/github/{project}/    # Main game code
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
├── assets/                              # Sprites, shaders (.glsl), audio
├── Docs/                                # Documentation & media
├── build.gradle                         # Root build config
└── settings.gradle                     # Gradle settings
```

---

## 8. Code Conventions

### Package Structure

```java
io.github.{project}          // Main package
io.github.{project}.PowerUp // PowerUp system
```

### Naming / Structure

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

### v0.1.0 Alfa ({YYYY-MM-DD})
- ✅ Feat: Auto-battle combat system
- ✅ Feat: Enemy wave spawning
- ✅ Feat: XP and level-up system
- ✅ Feat: PowerUp upgrades ({count} types)
- ✅ Feat: Boss encounters
- ✅ Feat: Custom GLSL shaders
- ✅ Feat: Pause functionality

### v{PreviousVersion} ({YYYY-MM-DD})
- ✅ Feat: {feature description}
- ✅ Fix: {fix description}

---

## 11. Roadmap

> See [ROADMAP.md](ROADMAP.md) for detailed progress tracking.

**Phase 1: Core Gameplay** (100%)
- ✅ Player movement
- ✅ Auto-attack
- ✅ Enemy waves
- ✅ Level-up system

**Phase 2: Progression Systems** (100%)
- ✅ PowerUp system
- ✅ XP & level-up UI
- ✅ Boss encounters

**Phase 3: Visual Polish** (50%)
- ✅ GLSL shaders
- ✅ Player/Enemy animations
- 🟡 Screen shake effects
- ❌ Screen shake on death

**Phase 4: Audio** (20%)
- ⚠️ Sound effects present but unused
- ❌ Background music
- ❌ Enemy/UI sounds

**Phase 5: Content Expansion** (0%)
- ❌ New weapons (Axe, Garlic, Lightning)
- ❌ Flying/Ranged enemies
- ❌ New biomes

**Phase 6: Mobile Port** (0%)
- ❌ Touch controls
- ❌ Android build

**Phase 7: Polish & Release** (10%)
- ❌ Main menu revamp
- ❌ Settings
- ❌ Beta/1.0 release

---

## 12. Resources

- **Repository:** https://github.com/{username}/{repo}
- **Roadmap:** [ROADMAP.md](ROADMAP.md) (detailed progress tracking)
- **Documentation:** `{folder}/`
- **Related:** {links}

---

*Built with {technologies} + passion* 🇦🇷