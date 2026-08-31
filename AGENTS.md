# AGENTS.md

## 構成

- AstroNvim v6+ のユーザー設定。`init.lua` が lazy.nvim を起動し、`lua/lazy_setup.lua` が AstroNvim 本体、`community`、`plugins` の順に読み込む。
- AstroCommunity の recipe は `lua/community.lua`、既存プラグインの上書きや追加は `lua/plugins/` に置く。`lua/plugins/` は community より後に処理される。
- `mapleader` は space、`maplocalleader` は comma。lazy.nvim 初期化前に必要なため `lua/lazy_setup.lua` の AstroNvim `opts` で変更する。
- Treesitter 設定は `lua/plugins/treesitter.lua` の AstroCore `opts.treesitter` に記述する。`queries/` のクエリは既定値を上書きする。

## 検証

- CI やテストスイートはない。変更後は `stylua --check .`、`selene .`、`nvim --headless '+qa'` の順に実行する。
- StyLua の設定は `.stylua.toml`（120 桁、2 スペース、AstroNvim の quote/call 形式）に従う。整形は `stylua .` を使い、lua_ls の自動整形は無効化されている。
- `neovim.yml` は Selene 用の生成ファイルなので手編集・削除しない。必要時のみ `selene generate-neovim` で再生成する。

## 変更時の注意

- `lazy-lock.json` は追跡対象。プラグイン spec を変更したら Neovim 内で `:Lazy update` を実行し、ロックファイルも確認する。
- `lua/plugins/herdr.lua` は `HERDR_ENV=1` のときだけ有効。関連機能を確認する場合は herdr 環境と `herdr` CLI が必要で、通常の Neovim 起動では読み込まれない。
- `snippets/` は VS Code 形式 JSON。`snippets/package.json` で登録され、`lua/plugins/luasnip.lua` の LuaSnip ローダーが読み込む。
