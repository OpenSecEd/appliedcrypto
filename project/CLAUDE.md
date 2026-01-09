# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is the `project/` subdirectory of the **OpenSecEd/appliedcrypto** repository - educational materials for KTH's DD2520 Applied Cryptography course. It contains problem sets (INL1Written) where students design cryptographic systems for real-world scenarios.

## Build Commands

```bash
# Build the main PDF (notes.pdf)
make

# Build slides variant
make slides.pdf

# Clean built PDFs
make clean

# Initialize submodules (required before first build)
git submodule update --recursive --init
```

## Build System Architecture

The build uses a modular makefile system with includes from `../makefiles/`:
- **tex.mk** - LaTeX compilation via `latexmk -xelatex`
- **noweb.mk** - Literate programming support
- **didactic.mk** - Pedagogical markup package
- **bibsp.mk** - Bibliography styling

Output goes to `ltxobj/` directory, with symlinks created in the project root.

Key build flags:
- `-shell-escape` required for `minted` code highlighting
- Uses `xelatex` engine (not pdflatex)
- Bibliography via `biber`/`biblatex`

## Repository Structure

```
project/
├── notes.tex, slides.tex     # Main documents (dual-mode: article/slides)
├── 2025a.tex, 2025b.tex     # Current year scenarios (police cams, parcel boxes)
├── 2024.tex                  # Previous year archive
├── preamble.tex              # Shared LaTeX configuration
├── didactic.sty → ../didactic/  # Pedagogical markup package (symlink)
├── bibsp.sty → ../bibsp/     # Bibliography style (symlink)
├── tilkry25/                 # Student submissions (Spring 2025)
│   ├── instruction.md        # Canvas assignment metadata
│   └── INL1Written/          # Individual student submissions
└── figs/                     # Images with own Makefile
```

## Key Patterns

**Pedagogical Framework**: Uses variation theory of learning and pure question-based learning (pQBL). The `\ltnote{}` command (from didactic package) documents pedagogical reasoning separately from student-facing content.

**Dual Output**: Same source generates both `notes.pdf` (article format) and `slides.pdf` (beamer presentation) via the `beamerarticle` package.

**Scenario Problems**: Each year's problems (`2025a.tex`, `2025b.tex`) present open-ended real-world cryptographic system design challenges. Students must cover: assumptions, security requirements, architecture, data handling, algorithms, implementation, parameters, randomness, trade-offs, legal aspects, usability, and threat analysis.

## Dependencies

- TeXLive with XeTeX, latexmk, biber
- Git submodules: `makefiles/`, `didactic/`, `bibsp/`
- Python 3 (for pythontex if used)
- minted package (requires `-shell-escape`)
