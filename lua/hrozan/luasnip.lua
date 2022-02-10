local ok, luasnip = pcall(require, "luasnip")
if not ok then return end

luasnip.config.set_config {
    history = true,
    updateevents = "TextChanged,TextChangedI",
}

require("luasnip/loaders/from_vscode").load()
