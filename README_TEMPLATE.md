<h1 align="center"> Project Name </h1>

<p align="center">
![Badge1](https://img.shields.io/badge/{Tech1}-{Version1}-blue?logo={logo1})
![Badge2](https://img.shields.io/badge/{Tech2}-{Version2}-blue?logo={logo2})
![Status](https://img.shields.io/badge/Status-{Progress}%25%20Complete-{color})
![Tests](https://img.shields.io/badge/Tests-{TestsCount}%20passing-brightgreen)
</p>

<p align="center">
  <img src="/Docs/preview.gif" alt="screenshot"/>
</p>

{A one-line description of your project, bold the main technologies used.}

---

> **Current Status:** ~{XX}% complete ({status_description})  
> **Last Updated:** {YYYY-MM-DD}

---

## 1. What is {ProjectName}?

{Description of what the project does and its main features.}

- **Feature 1:** {description}
- **Feature 2:** {description}
- **Feature 3:** {description}
- **Feature 4:** {description}

**Architecture:** {describe your architecture pattern, e.g., "Brain and Body", Clean Architecture, etc.}

---

## 2. Architecture

```
┌─────────────────────────────────────────────────────────────────────────┐
│                           COMPONENT DIAGRAM                              │
│                                                                          │
│  ┌─────────────────┐  ┌─────────────────┐  ┌─────────────────┐       │
│  │   SystemA       │  │   SystemB       │  │   SystemC       │       │
│  │   (Brain)       │  │   (Body)        │  │   (Controller)  │       │
│  │                 │  │                 │  │                 │       │
│  │  - State        │  │  - Movement     │  │  - Input        │       │
│  │  - Data         │  │  - Rendering   │  │  - Events      │       │
│  └────────┬────────┘  └─────────────────┘  └────────┬────────┘       │
│           │                                         │                 │
│           └─────────────────────────────────────────┘                 │
│                              │                                         │
│  ┌───────────────────────────┴─────────────────────────────────┐       │
│  │                     MainController                          │       │
│  │                                                              │       │
│  │  - Coordinate between systems                               │       │
│  │  - State management                                         │       │
│  └──────────────────────────────────────────────────────────────┘       │
└─────────────────────────────────────────────────────────────────────────┘
```

---

## 3. Implemented Systems

| System | Status | Description |
|--------|--------|-------------|
| **{Feature}** | ✅ | {description} |
| **{Feature}** | ✅ | {description} |
| **{Feature}** | 🟡 | {description} |
| **{Feature}** | ❌ | Not started |

---

## 4. Technical Requirements

| Technology | Version | Notes |
|------------|---------|-------|
| {Tech} | **{Version}** | {notes} |
| {Tech} | {Version} | {notes} |
| {Tech} | {Version} | {notes} |

### Required Packages

```bash
# Core
com.unity.{package}@{version}
com.unity.{package}@{version}
```

---

## 5. Quick Installation

```bash
# 1. Clone repository
git clone https://github.com/{username}/{repo}.git
cd {repo}

# 2. Open in {IDE/Engine}
{IDE} → Open → Select {project folder}

# 3. Run/Play
```

---

## 6. Controls / Usage

| Input | Action | Notes |
|-------|--------|-------|
| `{Key}` | {Action} | {notes} |
| `{Key}` | {Action} | {notes} |
| `{Key}` (hold) | {Action} | {notes} |

---

## 7. Project Structure

```
{Project}/
├── {Folder}/                      # Main code
│   ├── {Subfolder}/              # {description}
│   │   └── {files}
│   ├── {Subfolder}/              # {description}
│   │   └── {files}
│   └── {Subfolder}/              # {description}
│       └── {files}
│
├── {Tests}/                      # Tests (if applicable)
│   └── {test files}
│
└── .config/                     # Configuration
    └── {config files}
```

---

## 8. Code Conventions

### Namespaces

```csharp
{Project}.Core           // Core entities, state
{Project}.{Module}      // {description}
{Project}.{Module}      // {description}
```

### Naming / Structure

- {convention 1}
- {convention 2}

### Commits

Format: `<type>(<scope>): <description>`

```bash
feat(module): add new feature
fix(module): fix bug
refactor(module): improve code
docs(readme): update documentation
```

---

## 9. Troubleshooting

### "{Problem}"

1. {Solution step}
2. {Solution step}

### "{Problem}"

1. {Solution step}

---

## 10. Changelog

### v{Version} ({YYYY-MM-DD})
- ✅ Feat: {feature description}
- ✅ Fix: {fix description}
- ✅ Refactor: {refactor description}

### v{PreviousVersion} ({YYYY-MM-DD})
- ✅ Feat: {feature description}
- ✅ Fix: {fix description}

---

## 11. Roadmap

**Phase 1: {Name}** ({XX}%)
- ✅ {completed}
- 🟡 {in_progress}
- ❌ {not_started}

**Phase 2: {Name}** ({XX}%)
- ❌ {not_started}

**Phase 3: {Name}** ({XX}%)
- ❌ {not_started}

---

## 12. Resources

- **Repository:** https://github.com/{username}/{repo}
- **Documentation:** `{folder}/`
- **Related:** {links}

---

*Built with {technologies} + passion* 🇦🇷