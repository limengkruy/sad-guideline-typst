# Customs Clearance – Single Administrative Document (SAD)

A Typst-based project for generating and managing **Customs Clearance Single Administrative Documents (SAD)**. This repository provides a modular, maintainable structure for producing professional customs documentation using [Typst](https://typst.app/).

The main entry point is `main.typ`. Compile or preview this file to generate the full document, as all modules, layouts, and content are loaded from here.

---

## Table of Contents

- [Overview](#overview)
- [Installation](#installation)
- [Usage](#usage)
  - [Compiling with CLI](#compiling-with-cli)
  - [Using VS Code + Tinymist Extension](#using-vs-code--tinymist-extension)
- [Project Structure](#project-structure)
- [Customization](#customization)
- [Troubleshooting](#troubleshooting)
- [License](#license)

---

## Overview

This project uses **Typst**, a modern typesetting system, to create structured customs clearance documents (SAD). It is designed for:

- **Modularity:** Separate layouts, themes, and document sections for easy maintenance.
- **Consistency:** Centralized styling ensures uniform output across all documents.
- **Automation-ready:** Suitable for integration into workflows or CI/CD pipelines.

---

## Installation

Install the Typst compiler using one of the official methods below. For the latest instructions, see the [Typst installation guide](https://typst.app/docs/guides/installation/).

### Package Managers (Recommended)

- **Windows (winget):**
  ```bash
  winget install typst
  ```
- **macOS (Homebrew):**
  ```bash
  brew install typst
  ```
- **Linux (Snap):**
  ```bash
  sudo snap install typst
  ```
- **Linux (Arch):**
  ```bash
  sudo pacman -S typst
  ```
- **Cross-platform (Cargo, requires Rust):**
  ```bash
  cargo install typst-cli
  ```

### Manual Install

1. Download the latest release from [GitHub – typst/typst releases](https://github.com/typst/typst/releases).
2. Extract the archive for your platform.
3. Add the `typst` executable to your system `PATH`.

### Verify Installation

```bash
typst --version
```

---

## Usage

### Compiling with CLI

To compile the main document into a PDF:

```bash
typst compile main.typ output.pdf
```

To watch for changes and recompile automatically:

```bash
typst watch main.typ output.pdf
```

### Using VS Code + Tinymist Extension

The [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) extension provides real-time preview and export for Typst files.

1. Open this project folder in **VS Code**.
2. Install the **Tinymist Typst** extension from the Extensions panel.
3. Open `main.typ` in the editor.
4. **Preview:**  
   - Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on macOS).  
   - Run `Tinymist: Show Preview`.  
   - A live preview panel will render `main.typ` and all its imports.
5. **Export to PDF:**  
   - Use the command `Tinymist: Export to PDF`.  
   - Select `main.typ` as the source if prompted.

---

## Project Structure

The project is organized for clarity and scalability:

- **`main.typ`**: Main entry point. Compile or preview this file.
- **`layout/`**: Contains page templates (`template.typ`) and theme configuration (`theme.typ`).
- **`modules/`**: Document sections and components:
  - Top-level modules: `01-cover-page.typ`, `02-preface.typ`, `03-table-of-content.typ`, etc.
  - **`chapters/`**: Aggregates chapter content (e.g., `chapter-01/`, `chapter-02/`).
  - **`annexes/`**: Aggregates annex content.
  - Granular SAD field definitions are stored in subfolders (e.g., `chapters/chapter-02/tab-01/box/`).

This structure supports reuse, clear separation of concerns, and easy extension for new customs forms or sections.

---

## Customization

- **Themes:** Edit `layout/theme.typ` to change fonts, colors, and spacing.
- **Templates:** Modify `layout/template.typ` for page structure and margins.
- **Modules:** Update files in `modules/` to adjust sections, fields, and content.
- **Data:** Pass data via Typst’s command-line arguments or update data files for dynamic generation.

Example: Changing the primary font in `layout/theme.typ`:

```typst
#set text(font: "Your Font")
```

---

## Troubleshooting

- **`typst` command not found:**  
  Ensure Typst is installed and added to your system `PATH`.
- **Tinymist preview not loading:**  
  - Verify `main.typ` is open in the editor.
  - Check that all imports in `main.typ` are correct.
  - Reload VS Code and retry.
- **Missing fonts:**  
  Install required fonts on your system or specify fallback fonts in your Typst files.

---

## License

This project is licensed under the [MIT License](LICENSE).

---

**Happy typesetting!** 📄✨