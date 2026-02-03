# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with
code in this repository.

## Build Commands

```bash
# Initialize submodules (required before first build)
git submodule update --recursive --init

# Build all modules from repository root
make

# Build a specific lecture module
cd modules/week-1/lecture-intro && make

# Common module targets
make              # Build default target (usually slides PDF)
make notes.pdf    # Build article-format notes
make slides.pdf   # Build presentation slides
make clean        # Remove built PDFs
make distclean    # Full clean including generated dependencies

# Canvas LMS synchronization (from weekly module directory)
make pull                  # Pull pages, assignments, and quizzes from Canvas
make pull-pages            # Pull only Canvas pages
make pull-assignments      # Pull only assignments
make pull-quizzes          # Export quizzes to JSON

make push                  # Push pages, assignments, and quizzes to Canvas
make push-pages            # Push only Canvas pages
make push-assignments      # Push only assignments
make push-quizzes          # Push quiz metadata (not questions)
make push-quizzes-questions # Push quiz with questions (--replace-items)

make force-push            # Force push all (ignores timestamps)
make force-push-pages      # Force push all pages
make force-push-quizzes-questions # Force push quizzes with questions
```

## Build System

Uses XeTeX with latexmk and biber for bibliography. Key requirements:
- `-shell-escape` flag (for minted code highlighting)
- Output goes to `ltxobj/` directory; symlinks created at module root
- Makefiles in `makefiles/` submodule provide tex.mk, noweb.mk, doc.mk, etc.
- Weekly modules include `../module.mk` for Canvas integration targets

## Repository Architecture

The repository is migrating from standalone **topic modules** to Canvas
LMS-integrated **weekly modules**. The weekly structure under `modules/` is
the current and target architecture.

**Weekly Modules** (primary structure):
```
modules/
├── module.mk           # Shared Canvas LMS build rules
├── week-1/             # Introduction and ciphers
├── week-2/             # Hash functions and asymmetric crypto
├── week-3/             # Zero-knowledge proofs
├── week-4/             # through week-9, etc.
└── week-labweek/       # Laboratory week
```

**Legacy Topic Modules** (migration source, still functional):
- `intro/` - Introduction to cryptography
- `shared-key/` - Symmetric key encryption (ciphers)
- `sidechannels/` - Side-channel attacks

**Supporting Directories**:
- `project/` - Student assignments (INL1Written scenario problems)
- `applications/` - Real-world case studies (Signal, digital postbox)
- `evaluation/` - Grading and result processing

**Git Submodules**:
- `makefiles/` - Modular build system
- `didactic/` - Pedagogical LaTeX package (variation theory support)
- `bibsp/` - Bibliography styling
- `beamer-didactic/` - Beamer presentation theme

## Canvas LMS Integration

Weekly modules integrate with Canvas LMS using the `canvaslms` CLI tool.

**Configuration Variables** (set in each week's Makefile):
```makefile
COURSE ?= tilkry26           # Target course for push operations
PULL_COURSE ?= tilkry25      # Source course for pull operations
COURSE_DIR ?= $(HOME)/public_html/tilkry  # Published slides directory
MODULE ?= Week 1 (calendar week 3)        # Canvas module name
MODULE_RE ?= Week 1          # Regex pattern for module matching
```

**File Types**:
- `.html` - Canvas page content (pushed to Pages)
- `assignments/*.md` - Assignment descriptions (pushed to Assignments)
- `INL1Quiz-*.json` - Quiz definitions with questions (pushed to Quizzes)

**Typical Workflow**:
```bash
# Pull content from previous year's course
cd modules/week-2
make pull-pages
make pull-assignments

# Edit content locally, then push to current course
make push-pages
make push-assignments

# For quizzes, use --replace-items to update questions
make push-quizzes-questions
```

## Module Structures

### Weekly Module Pattern (`modules/week-*/`)

Canvas-integrated weeks containing lectures and assignments:
```
week-1/
├── Makefile                  # Defines PAGES, ASSIGNMENTS, QUIZZES, SLIDES
├── lecture-intro.html        # Canvas page content
├── lecture-ciphers.html
├── INL1Quiz-ciphers.json     # Quiz with questions
├── assignments/              # Assignment markdown files
│   ├── hac-ch6-stream-ciphers.md
│   └── ...
├── lecture-intro/            # Lecture content module
│   ├── contents.tex
│   ├── slides.tex
│   └── notes.tex
└── lecture-ciphers/
    └── ...
```

### Lecture Module Pattern (`modules/week-*/lecture-*/`)

LaTeX content generating slides and notes:
```
lecture-intro/
├── Makefile           # Module-specific build rules
├── contents.tex       # Main content (input by slides/notes)
├── slides.tex         # Beamer presentation entry point
├── notes.tex          # Article-format notes entry point
├── abstract.tex       # Module summary
├── preamble.tex       # LaTeX preamble customizations
├── figs/              # Figures and diagrams
└── ltxobj/            # Build output directory
```

**Dual Output**: Same `contents.tex` generates both `notes.pdf` (article
format via beamerarticle) and `slides.pdf` (Beamer presentation).

### Legacy Topic Module Pattern (`intro/`, `shared-key/`, `sidechannels/`)

Standalone modules from original course structure:
```
shared-key/
├── Makefile
├── contents.tex
├── shared-key-slides.tex    # Named after module
├── abstract.tex
├── README.md
└── video.md
```

Content from these modules is being reorganized into the weekly structure.

## Quiz Management

Quizzes are stored as JSON files and synchronized with Canvas.

**File Naming**: `INL1Quiz-<topic>.json` (e.g., `INL1Quiz-ciphers.json`)

**Export from Canvas**:
```bash
canvaslms quizzes export -Ic "${COURSE}" -a "^INL1Quiz Ciphers$" > INL1Quiz-ciphers.json
```

**Push to Canvas** (metadata only):
```bash
canvaslms quizzes edit -c "${COURSE}" -f "INL1Quiz-ciphers.json"
```

**Push with Questions** (replaces all questions):
```bash
canvaslms quizzes edit -c "${COURSE}" -f "INL1Quiz-ciphers.json" --replace-items
```

## Code Style

- Break lines at 80 columns
- Lines continuing to next should end with whitespace before the break
- Put different sections in separate files and `\input` from `contents.tex`
- Use `\ltnote{}` for pedagogical reasoning (kept separate from student content)

## Pedagogical Framework

This course uses **variation theory of learning** and **pure question-based
learning (pQBL)**. The `didactic` package provides semantic environments
(exercise, activity, question) that are color-coded in Beamer. Pedagogical
notes explaining design choices belong in `\ltnote{}` commands, not in
student-facing text.
