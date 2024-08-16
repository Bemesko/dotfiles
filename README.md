# Bemesko's dotfiles!

This repository contains my personal configuration files, managed using [`chezmoi`](https://www.chezmoi.io/). These dotfiles are tailored for a Windows environment, with configurations for various tools such as Windows Terminal, PowerShell, and more.

## Getting Started

To set up these configurations on a new machine, follow these steps:

1. **Install `chezmoi`**:
   ```powershell
   choco install chezmoi
   ```

2. **Initialize `chezmoi`**:
   ```powershell
   chezmoi init https://github.com/Bemesko/dotfiles
   ```

3. **Apply the configurations**:
   ```powershell
   chezmoi apply
   ```

This will place all the configuration files in their appropriate locations.

## Customizing Your Setup

These dotfiles are configured for my specific environment, but they can be customized. `chezmoi`'s templating features allow you to adjust paths and settings according to your needs.

## Contributions

While this repository is mainly for personal use, feel free to explore and use any configurations that might be helpful. Contributions are welcome!
