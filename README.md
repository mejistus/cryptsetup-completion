# cryptsetup-completion

Zsh completion plugin for [cryptsetup](https://gitlab.com/cryptsetup/cryptsetup) (v2.x). Designed for [Oh My Zsh](https://ohmyz.sh/).

## Features

- Complete all 30+ actions (`open`, `close`, `luksFormat`, `luksAddKey`, `luksDump`, `reencrypt`, `token`, etc.)
- Complete all global options (cipher, hash, key management, PBKDF, performance tuning, etc.)
- Hash algorithm completion (`sha1`, `sha256`, `sha512`, `ripemd160`, `whirlpool`)
- PBKDF algorithm completion (`argon2i`, `argon2id`, `pbkdf2`)
- Device type completion (`luks`, `luks1`, `luks2`, `plain`, `loopaes`, `tcrypt`, `bitlk`)
- Sector size completion (`512`, `1024`, `2048`, `4096`)
- File path completion for key files, headers, and volume key files
- VeraCrypt and TCRYPT compatibility options

## Installation

### Oh My Zsh

```bash
git clone https://github.com/<your-user>/cryptsetup-completion \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/cryptsetup-completion
```

Add to `~/.zshrc`:

```zsh
plugins=(... cryptsetup-completion)
```

### Manual

```zsh
source /path/to/cryptsetup-completion.plugin.zsh
```

## Usage

```bash
cryptsetup <TAB>              # Show all actions
cryptsetup --<TAB>            # Show all options
cryptsetup --type <TAB>       # Show: luks, luks1, luks2, plain, ...
cryptsetup --hash <TAB>       # Show: sha1, sha256, sha512, ...
cryptsetup --pbkdf <TAB>      # Show: argon2i, argon2id, pbkdf2
cryptsetup --key-file <TAB>   # Complete file paths
cryptsetup --sector-size <TAB> # Show: 512, 1024, 2048, 4096
```

## Supported Actions

| Category | Actions |
|----------|---------|
| Basic | `open` `close` `resize` `status` `benchmark` `repair` |
| LUKS | `luksFormat` `luksAddKey` `luksRemoveKey` `luksChangeKey` `luksConvertKey` `luksKillSlot` `luksUUID` `isLuks` `luksDump` |
| LUKS State | `luksSuspend` `luksResume` `luksHeaderBackup` `luksHeaderRestore` |
| LUKS2 | `reencrypt` `convert` `config` `token` |
| Dump | `tcryptDump` `bitlkDump` `fvault2Dump` |
| Aliases | `plainOpen` `luksOpen` `loopaesOpen` `tcryptOpen` `bitlkOpen` `fvault2Open` + Close variants |

## Requirements

- Zsh 5.0+
- cryptsetup 2.x

## License

MIT
