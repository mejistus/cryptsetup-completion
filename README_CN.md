# cryptsetup-completion

[cryptsetup](https://gitlab.com/cryptsetup/cryptsetup) (v2.x) 的 Zsh 补全插件，适用于 [Oh My Zsh](https://ohmyz.sh/)。

## 功能

- 补全 30 余种操作（`open`、`close`、`luksFormat`、`luksAddKey`、`luksDump`、`reencrypt`、`token` 等）
- 补全所有全局选项（加密算法、哈希、密钥管理、PBKDF、性能调优等）
- 哈希算法补全（`sha1`、`sha256`、`sha512`、`ripemd160`、`whirlpool`）
- PBKDF 算法补全（`argon2i`、`argon2id`、`pbkdf2`）
- 设备类型补全（`luks`、`luks1`、`luks2`、`plain`、`loopaes`、`tcrypt`、`bitlk`）
- 扇区大小补全（`512`、`1024`、`2048`、`4096`）
- 为密钥文件、头部文件、卷密钥文件提供路径补全
- VeraCrypt 和 TCRYPT 兼容选项

## 安装

### Oh My Zsh

```bash
git clone https://github.com/<your-user>/cryptsetup-completion \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/cryptsetup-completion
```

在 `~/.zshrc` 中添加：

```zsh
plugins=(... cryptsetup-completion)
```

### 手动安装

```zsh
source /path/to/cryptsetup-completion.plugin.zsh
```

## 使用

```bash
cryptsetup <TAB>               # 显示所有操作
cryptsetup --<TAB>             # 显示所有选项
cryptsetup --type <TAB>        # 显示：luks, luks1, luks2, plain, ...
cryptsetup --hash <TAB>        # 显示：sha1, sha256, sha512, ...
cryptsetup --pbkdf <TAB>       # 显示：argon2i, argon2id, pbkdf2
cryptsetup --key-file <TAB>    # 补全文件路径
cryptsetup --sector-size <TAB> # 显示：512, 1024, 2048, 4096
```

## 支持的操作

| 类别 | 操作 |
|------|------|
| 基本 | `open` `close` `resize` `status` `benchmark` `repair` |
| LUKS | `luksFormat` `luksAddKey` `luksRemoveKey` `luksChangeKey` `luksConvertKey` `luksKillSlot` `luksUUID` `isLuks` `luksDump` |
| LUKS 状态 | `luksSuspend` `luksResume` `luksHeaderBackup` `luksHeaderRestore` |
| LUKS2 | `reencrypt` `convert` `config` `token` |
| 导出 | `tcryptDump` `bitlkDump` `fvault2Dump` |
| 别名 | `plainOpen` `luksOpen` `loopaesOpen` `tcryptOpen` `bitlkOpen` `fvault2Open` + Close 变体 |

## 要求

- Zsh 5.0+
- cryptsetup 2.x

## 许可证

MIT
