// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "sqlcipher",
    platforms: [
        .macOS(.v10_13),
        .watchOS(.v4),
        .tvOS(.v12),
        .iOS(.v12)],
    products: [
        .library(
            name: "sqlcipher",
            targets: ["sqlcipher"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "sqlcipher",
            dependencies: [],
            path: "",
            sources: [
                "config.h",
                "src/callback.c",
                "src/loadext.c",
                "src/rowset.c",
                "src/treeview.c",
                "ext/userauth/userauth.c",
                "src/vtab.c",
                "src/btmutex.c",
                "src/btree.c",
                "fts5.c",
                "fts5.h",
                "ext/fts3/fts3_aux.c",
                "ext/fts3/fts3_expr.c",
                "ext/fts3/fts3_hash.c",
                "ext/fts3/fts3_hash.h",
                "ext/fts3/fts3_icu.c",
                "ext/fts3/fts3_porter.c",
                "ext/fts3/fts3_snippet.c",
                "ext/fts3/fts3_tokenize_vtab.c",
                "ext/fts3/fts3_tokenizer.c",
                "ext/fts3/fts3_tokenizer1.c",
                "ext/fts3/fts3_unicode.c",
                "ext/fts3/fts3_unicode2.c",
                "ext/fts3/fts3_write.c",
                "ext/fts3/fts3.c",
                "ext/fts3/fts3.h",
                "ext/fts3/fts3Int.h",
                "src/backup.c",
                "src/legacy.c",
                "src/mainRenameForSPM.c",
                "src/notify.c",
                "src/vdbeapi.c",
                "src/table.c",
                "src/wal.c",
                "src/wal.h",
                "src/status.c",
                "src/prepare.c",
                "src/malloc.c",
                "src/mem0.c",
                "src/mem1.c",
                "src/mem2.c",
                "src/mem3.c",
                "src/mem5.c",
                "src/memjournal.c",
                "src/mutex_unix.c",
                "src/mutex_noop.c",
                "src/mutex.c",
                "src/mutex.h",
                "src/os_common.h",
                "src/os_setup.h",
                "src/os_unix.c",
                "src/sqlite3_wcdb.h",
                "src/os.c",
                "src/os.h",
                "src/threads.c",
                "src/bitvec.c",
                "src/pager.c",
                "src/pager.h",
                "src/pcache.c",
                "src/pcache.h",
                "src/pcache1.c",
                "ext/rtree/rtree.c",
                "ext/rtree/rtree.h",
                "ext/rtree/sqlite3rtree.h",
                "src/complete.c",
                "src/tokenize.c",
                "src/resolve.c",
                "parse.c",
                "parse.h",
                "src/analyze.c",
                "src/func.c",
                "src/wherecode.c",
                "src/whereexpr.c",
                "src/whereInt.h",
                "src/alter.c",
                "src/attach.c",
                "src/auth.c",
                "src/build.c",
                "src/delete.c",
                "src/expr.c",
                "src/insert.c",
                "src/pragma.c",
                "src/pragma.h",
                "src/select.c",
                "src/trigger.c",
                "src/update.c",
                "src/vacuum.c",
                "src/walker.c",
                "src/where.c",
                "opcodes.c",
                "opcodes.h",
                "src/sqlcipher.h",
                "sqlite3.h",
                "ext/rbu/sqlite3rbu.c",
                "ext/rbu/sqlite3rbu.h",
                "ext/userauth/sqlite3userauth.h",
                "ext/misc/json1.c",
                "ext/icu/icu.c",
                "src/window.c",
                "ext/icu/sqliteicu.h",
                "src/global.c",
                "src/ctime.c",
                "src/hwtime.h",
                "src/date.c",
                "src/dbstat.c",
                "src/fault.c",
                "src/fkey.c",
                "src/sqliteInt.h",
                "src/upsert.c",
                "src/sqliteLimit.h",
                "src/sqlite3ext.h",
                "src/hash.c",
                "src/hash.h",
                "src/printf.c",
                "src/random.c",
                "src/utf.c",
                "src/util.c",
                "src/crypto_cc.c",
                "src/crypto_impl.c",
                "src/crypto_libtomcrypt.c",
                "src/crypto.c",
                "src/crypto.h",
                "src/vdbe.c",
                "src/vdbe.h",
                "src/vdbeaux.c",
                "src/vdbeblob.c",
                "src/vdbeInt.h",
                "src/vdbemem.c",
                "src/vdbesort.c",
                "src/vdbetrace.c",
                "src/msvc.h",
                "src/vxworks.h",
                "ext/fts3/fts3_tokenizer.h",
                "keywordhash.h"
            ],
            cSettings: [
                .define("NDEBUG", to: "1"),
                .define("_HAVE_SQLITE_CONFIG_H"),
                .define("SQLITE_DEFAULT_CACHE_SIZE", to: "-2000"),
                .define("SQLITE_DEFAULT_PAGE_SIZE", to: "4096"),
                .define("SQLITE_DEFAULT_MEMSTATUS", to: "0"),
                .define("SQLITE_DEFAULT_WAL_SYNCHRONOUS", to: "1"),
                .define("SQLITE_LIKE_DOESNT_MATCH_BLOBS", to: "1"),
                .define("SQLITE_DEFAULT_WAL_AUTOCHECKPOINT", to: "0"),
                .define("SQLITE_DEFAULT_LOCKING_MODE", to: "0"),
                .define("SQLITE_DEFAULT_SYNCHRONOUS", to: "1"),
                .define("SQLITE_DEFAULT_JOURNAL_SIZE_LIMIT", to: "4194304"),
                .define("SQLITE_MAX_SCHEMA_RETRY", to: "999"),
                .define("SQLITE_TEMP_STORE", to: "2"),
                .define("SQLITE_THREADSAFE", to: "2"),
                .define("SQLITE_ENABLE_API_ARMOR", to: "1"),
                .define("SQLITE_ENABLE_COLUMN_METADATA", to: "1"),
                .define("SQLITE_ENABLE_FTS3", to: "1"),
                .define("SQLITE_ENABLE_FTS3_PARENTHESIS", to: "1"),
                .define("SQLITE_ENABLE_FTS3_TOKENIZER", to: "1"),
                .define("SQLITE_ENABLE_FTS5", to: "1"),
                .define("SQLITE_ENABLE_LOCKING_STYLE", to: "1"),
                .define("SQLITE_USE_ALLOCA", to: "1"),
                .define("SQLITE_ENABLE_UPDATE_DELETE_LIMIT", to: "1"),
                .define("SQLITE_ENABLE_RTREE", to: "1"),
                .define("SQLITE_ENABLE_DBSTAT_VTAB", to: "1"),
                .define("SQLITE_ENABLE_BATCH_ATOMIC_WRITE", to: "1"),
                .define("SQLITE_MAX_EXPR_DEPTH", to: "0"),
                .define("SQLITE_MAX_ATTACHED", to: "64"),
                .define("SQLITE_OMIT_BUILTIN_TEST", to: "1"),
                .define("SQLITE_UNTESTABLE", to: "1"),
                .define("SQLITE_OMIT_COMPILEOPTION_DIAGS", to: "1"),
                .define("SQLITE_OMIT_DEPRECATED", to: "1"),
                .define("SQLITE_OMIT_SHARED_CACHE", to: "1"),
                .define("SQLITE_OMIT_LOAD_EXTENSION", to: "1"),
                .define("OMIT_MEMLOCK", to: "1"),
                .define("OMIT_MEM_SECURITY", to: "1"),
                .define("SQLITE_SYSTEM_MALLOC", to: "1"),
                .define("SQLITE_CORE", to: "1"),
                .define("SQLITE_HAS_CODEC", to: "1"),
                .define("SQLCIPHER_CRYPTO_CC", to: "1"),
                .define("USE_PREAD", to: "1"),
                .define("SQLCIPHER_PREPROCESSED", to: "1"),
                .define("SQLITE_MALLOC_SOFT_LIMIT", to: "0"),
                .define("SQLITE_PRINT_BUF_SIZE", to: "256"),
                .define("SQLITE_WCDB", to: "1"),
                .define("SQLITE_WCDB_CHECKPOINT_HANDLER", to: "1"),
                .define("SQLITE_WCDB_LOCK_HOOK", to: "1"),
                .define("SQLITE_WCDB_SUSPEND", to: "1"),
                .define("SQLITE_WCDB_IMPROVED_CHECKPOINT", to: "1"),
                .headerSearchPath(""),
                .headerSearchPath("src"),
                .headerSearchPath("ext/misc"),
                .headerSearchPath("ext/rbu"),
                .headerSearchPath("ext/userauth"),
                .headerSearchPath("ext/fts3"),
                .headerSearchPath("ext/rtree"),
                .headerSearchPath("ext/icu")
            ]
        )
    ]
)
