## WeChat (MMDB) Specific Configurations

For compatibility reasons, WeChat uses SQLCipher 1.x format.

 * KDF Iterations set to 4000;
 * Do NOT use HMAC.

WeChat specific configurations:

 * Custom FTS3 tokenizer registeration must be enabled.

Additional configurations for Android environment:

 * Generate Thumb code rather than ARM; (`-mthumb`)
 * Optimize for size rather than speed; (`-Os`)
 * PIC must be enabled; (`-fPIC`)
 * PIE (position independent executable) must be enabled for Android >= 5.0; (`-fPIE -pie`)
 * Thread-safe mode set to multi-threaded;
 * Use pread64/pwrite64 for disk I/O;
 * Other options from official Android source;
 * **For armeabi-v7a targets**, generate Thumb-2 code. (`-march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3`)

## How to Build SQLCipher for MMDB

```shell
$ CFLAGS='-I/path/to/openssl/include -Os -mthumb \
-fPIC -fPIE -pie \
-DPBKDF2_ITER=4000 \
-DDEFAULT_CIPHER_FLAGS=CIPHER_FLAG_LE_PGNO \
-DUSE_PREAD64=1 \
-DSQLITE_ENABLE_FTS3_TOKENIZER \
-DSQLITE_HAS_CODEC \
-DSQLITE_HAVE_ISNAN \
-DSQLITE_DEFAULT_JOURNAL_SIZE_LIMIT=1048576 \
-DSQLITE_ENABLE_MEMORY_MANAGEMENT=1 \
-DSQLITE_DEFAULT_FILE_PERMISSIONS=0600 \
-DSQLITE_ENABLE_UNLOCK_NOTIFY'
$ LDFLAGS='-L/path/to/openssl/lib -fPIE -pie'

$ ./configure --host=arm-linux-androideabi --prefix='/path/to/install' \
    --disable-shared --enable-fts3 --enable-fts4 --enable-tempstore=always \
    --enable-threadsafe=multi
$ make -j4
$ make install
```