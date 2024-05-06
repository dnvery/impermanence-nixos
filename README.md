# NixOS (tmpfs + btrfs)
## Installation
### Format

```bash
sudo nix --experimental-features "nix-command flakes" run github:nix-community/disko -- --mode disko --flake github:dnvery/impermanence-nixos#nixos
```

### Install

```bash
sudo nixos-install --flake github:dnvery/impermanence-nixos#nixos --no-root-passwd
```

### Reboot

```bash
reboot
```
