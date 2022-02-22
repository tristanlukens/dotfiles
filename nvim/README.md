# nvim

My neovim config.

## Lua and LSP

I wanted to write this is lua and builtin lsp, and I did. However, I'm a noob when it comes to lua and following tutorials etc was really hard. I ended up deciding that it's better just to go back to vimscript and coc, since it's more mature.

It's still on my todo list to refactor everything to use lua and builtin lsp instead of vimscript and coc.

## ESLint and Prettier

To set up ESLint (for TypeScript), install the following packages using this command: `npm i -D eslint @typescript-eslint/parser @typescript-eslint/eslint-plugin`. If you only need it for JavaScript, I think you'll be fine with just the `eslint` package.

You also need a `.elintrc.json` config file, with at least the following contents.

```jsonc
{
  "root": true,
  "parser": "@typescript-eslint/parser",
  "env": {
    "node": true
  },
  "plugins": [
    "@typescript-eslint"
  ],
  "extends": [
    "eslint:recommended",
    "plugin:@typescript-eslint/eslint-recommended",
    "plugin:@typescript-eslint/recommended"
  ],
  "rules": {
    // add your rules here!
  }
}
```

It is recommended to add your own rules here.

Prettier works without any packages, but you do need a `.prettierrc.json` config file. To have good ESLint Prettier integration, put `"plugin:prettier/recommended"` inside of the "extends" array in your `.eslintrc.json`. Don't forhet the comma after the other element before in the config file. If you're file with the default Prettier options, just put and empty json object (`{}`) in there. Otherwise, customise it.

My default config is the following (yes, I like the defaults).

```json
{
  "printWidth": 120
}
```

## Todo

In no particular order.

- [ ] move to lua and lsp (see Lua above)
- [ ] set things up for ruby development
- [ ] set things up for rust development
- [ ] set things up for c development
- [ ] get a theme switcher
- [ ] the functions in keybindings.vim should be in coc.vim, but I couldn't get them to work
- [ ] git integration
- [ ] adding more fzf function keybindings
