# nvim

My neovim config.

## Lua

I wanted to write this is lua and builtin lsp, and I did. However, I'm a noob when it comes to lua and following tutorials etc was really hard. I ended up deciding that it's better just to go back to vimscript and coc, since it's more mature.

It's still on my todo list to refactor everything to use lua and builtin lsp instead of vimscript and coc.

## Prettier and ESLint

> **IMPORTANT**: this may change in the future, in two ways: software changes rapidly, but also because I may change my coc config to where it won't need a local installation of things, just a local configuration

> I followed [this](https://www.youtube.com/watch?v=Yqs3ZbE_HN0&t=208s) video for getting it to work

Since I always use TypeScript in correlation with Prettier and ESLint, I will provide instructions for installing the correct dependencies and configuration. Steps within parentheses are optional.

- run `npm i -D typescript eslint prettier @typescript-eslint/parser @typescript-eslint/eslint-plugin eslint-config-prettier eslint-plugin-prettier` for installing development dependencies
- run `touch .eslintrc.json` for creating the eslint config file, which is needed
- put the following config in `.eslintrc.json`

```json
{
  "root": true,
  "parser": "@typescript-eslint/parser",
  "env": {
    "node": true
  },
  "plugins": ["@typescript-eslint"],
  "extends": [
    "eslint:recommended",
    "plugin:@typescript-eslint/eslint-recommended",
    "plugin:@typescript-eslint/recommended",
    "plugin:prettier/recommended"
  ],
  "rules": [
    // customise these!
  ]
}
```

- (customise `.eslintrc.json`)
- (create and customise `.prettierrc.json`)
