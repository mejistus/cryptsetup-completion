#compdef cryptsetup

# Cryptsetup zsh completion plugin
# For cryptsetup 2.x

_cryptsetup() {
    local ret=1
    local -a actions

    actions=(
        'open:Open device as mapping'
        'close:Close device (remove mapping)'
        'resize:Resize active device'
        'status:Show device status'
        'benchmark:Benchmark cipher'
        'repair:Try to repair on-disk metadata'
        'reencrypt:Reencrypt LUKS2 device'
        'erase:Erase all keyslots'
        'convert:Convert LUKS from/to LUKS2 format'
        'config:Set permanent configuration options for LUKS2'
        'luksFormat:Format a LUKS device'
        'luksAddKey:Add key to LUKS device'
        'luksRemoveKey:Remove key from LUKS device'
        'luksChangeKey:Change key of LUKS device'
        'luksConvertKey:Convert key to new PBKDF parameters'
        'luksKillSlot:Wipe key with given slot number'
        'luksUUID:Print UUID of LUKS device'
        'isLuks:Test device for LUKS partition header'
        'luksDump:Dump LUKS partition information'
        'tcryptDump:Dump TCRYPT device information'
        'bitlkDump:Dump BITLK device information'
        'fvault2Dump:Dump FVAULT2 device information'
        'luksSuspend:Suspend LUKS device and wipe key'
        'luksResume:Resume suspended LUKS device'
        'luksHeaderBackup:Backup LUKS device header and keyslots'
        'luksHeaderRestore:Restore LUKS device header and keyslots'
        'token:Manipulate LUKS2 tokens'
        'plainOpen:Open a plain device'
        'luksOpen:Open a LUKS device'
        'loopaesOpen:Open a loop-AES device'
        'tcryptOpen:Open a TCRYPT device'
        'bitlkOpen:Open a BITLK device'
        'fvault2Open:Open a FVAULT2 device'
        'plainClose:Close a plain device'
        'luksClose:Close a LUKS device'
        'loopaesClose:Close a loop-AES device'
        'tcryptClose:Close a TCRYPT device'
        'bitlkClose:Close a BITLK device'
        'fvault2Close:Close a FVAULT2 device'
    )

    _arguments -s -S \
        '(-? --help)'{'-?',--help}'[Show help message]' \
        '--usage[Display brief usage]' \
        '(-V --version)'{-V,--version}'[Print package version]' \
        '(-q --batch-mode)'{-q,--batch-mode}'[Do not ask for confirmation]' \
        '(-v --verbose)'{-v,--verbose}'[Show more detailed error messages]' \
        '--debug[Show debug messages]' \
        '--debug-json[Show debug messages including JSON metadata]' \
        '(-c --cipher)'{-c,--cipher}'=[Cipher used to encrypt the disk]:cipher:' \
        '(-h --hash)'{-h,--hash}'=[Hash used to create the encryption key]:hash:(sha1 sha256 sha512 ripemd160 whirlpool)' \
        '(-s --key-size)'{-s,--key-size}'=[Size of the encryption key (bits)]:key size:' \
        '(-S --key-slot)'{-S,--key-slot}'=[Slot number for new key]:slot (0-31):' \
        '(-d --key-file)'{-d,--key-file}'=[Read the key from a file]:key file:_files' \
        '(-l --keyfile-size)'{-l,--keyfile-size}'=[Limits the read from keyfile]:bytes:' \
        '--keyfile-offset=[Number of bytes to skip in keyfile]:bytes:' \
        '--new-keyfile=[Read key for new slot from file]:key file:_files' \
        '--new-keyfile-offset=[Bytes to skip in new keyfile]:bytes:' \
        '--new-keyfile-size=[Limit read from new keyfile]:bytes:' \
        '(-M --type)'{-M,--type}'=[Type of device metadata]:type:(luks luks1 luks2 plain loopaes tcrypt bitlk)' \
        '--header=[Device or file with separated LUKS header]:header:_files' \
        '--header-backup-file=[File with LUKS header and keyslots backup]:file:_files' \
        '(-i --iter-time)'{-i,--iter-time}'=[PBKDF iteration time for LUKS (ms)]:milliseconds:' \
        '--pbkdf=[PBKDF algorithm]:algorithm:(argon2i argon2id pbkdf2)' \
        '--pbkdf-force-iterations=[PBKDF iterations cost (forced)]:iterations:' \
        '--pbkdf-memory=[PBKDF memory cost limit]:kilobytes:' \
        '--pbkdf-parallel=[PBKDF parallel cost]:threads:' \
        '(-o --offset)'{-o,--offset}'=[Start offset in the backend device]:sectors:' \
        '(-b --size)'{-b,--size}'=[Size of the device]:sectors:' \
        '(-p --skip)'{-p,--skip}'=[Sectors of encrypted data to skip]:sectors:' \
        '(-r --readonly)'{-r,--readonly}'[Create a readonly mapping]' \
        '(-y --verify-passphrase)'{-y,--verify-passphrase}'[Verify passphrase by asking twice]' \
        '(-T --tries)'{-T,--tries}'=[How often passphrase input can be retried]:tries:' \
        '(-t --timeout)'{-t,--timeout}'=[Timeout for interactive passphrase prompt (seconds)]:seconds:' \
        '--align-payload=[Align payload at n sector boundaries]:sectors:' \
        '--allow-discards[Allow discards (TRIM) requests for device]' \
        '--uuid=[UUID for device to use]:uuid:' \
        '--label=[Set label for the LUKS2 device]:label:' \
        '--subsystem=[Set subsystem label for the LUKS2 device]:subsystem:' \
        '--volume-key-file=[Use the volume key from file]:file:_files' \
        '--dump-volume-key[Dump volume key instead of keyslots info]' \
        '--dump-json-metadata[Dump info in JSON format (LUKS2 only)]' \
        '--json-file=[Read or write JSON from/to a file]:file:_files' \
        '--use-random[Use /dev/random for generating volume key]' \
        '--use-urandom[Use /dev/urandom for generating volume key]' \
        '--shared[Share device with another non-overlapping crypt segment]' \
        '--deferred[Device removal is deferred until last user closes it]' \
        '--cancel-deferred[Cancel previously set deferred device removal]' \
        '--persistent[Set activation flags persistent for device]' \
        '--refresh[Refresh (reactivate) device with new parameters]' \
        '--test-passphrase[Do not activate device, just check passphrase]' \
        '--encrypt[Encrypt LUKS2 device (in-place encryption)]' \
        '--decrypt[Decrypt LUKS2 device (remove encryption)]' \
        '--keep-key[Do not change volume key]' \
        '--token-id=[Token number]:token id:' \
        '--token-only[Do not ask for passphrase if token activation fails]' \
        '--token-type=[Restrict allowed token types]:type:' \
        '--sector-size=[Encryption sector size]:bytes:(512 1024 2048 4096)' \
        '--device-size=[Use only specified device size]:bytes:' \
        '--disable-locks[Disable locking of on-disk metadata]' \
        '--disable-keyring[Disable loading volume keys via kernel keyring]' \
        '--disable-veracrypt[Do not scan for VeraCrypt compatible device]' \
        '--veracrypt[Scan also for VeraCrypt compatible device]' \
        '--veracrypt-pim=[Personal Iteration Multiplier for VeraCrypt]:pim:' \
        '--veracrypt-query-pim[Query Personal Iteration Multiplier]' \
        '--tcrypt-backup[Use backup (secondary) TCRYPT header]' \
        '--tcrypt-hidden[Use hidden header (hidden TCRYPT device)]' \
        '--tcrypt-system[Device is system TCRYPT drive (with bootloader)]' \
        '--skip-grub[Skip GRUB2 reinstall]' \
        '(-I --integrity)'{-I,--integrity}'=[Data integrity algorithm (LUKS2 only)]:algorithm:' \
        '--integrity-no-journal[Disable journal for integrity device]' \
        '--integrity-no-wipe[Do not wipe device after format]' \
        '--priority=[Keyslot priority]:priority:(ignore normal prefer)' \
        '--resilience=[Reencryption hotzone resilience type]:type:(checksum journal none)' \
        '--hotzone-size=[Maximal reencryption hotzone size]:bytes:' \
        '--reduce-device-size=[Reduce data device size]:bytes:' \
        '--serialize-memory-hard-pbkdf[Use global lock to serialize memory hard PBKDF]' \
        '--progress-json[Print progress data in JSON format]' \
        '--progress-frequency=[Progress line update interval]:seconds:' \
        '--hw-opal[Use HW OPAL encryption together with SW encryption]' \
        '--hw-opal-only[Use only HW OPAL encryption]' \
        '--hw-opal-factory-reset[Wipe whole OPAL disk on luksErase]' \
        '(-N --new)'{-N,--new}'[Create new header on not encrypted device]' \
        '(-B --block-size)'{-B,--block-size}'=[Reencryption block size]:MiB:' \
        '--snapshot-device=[Specify snapshot device]:device:_files' \
        '--active-name=[Override device autodetection of dm device]:name:' \
        '1:action:_describe -t actions action actions' \
        '*:device or name:_files' && ret=0

    return ret
}

compdef _cryptsetup cryptsetup
