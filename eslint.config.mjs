// @ts-check
import withNuxt from "./.nuxt/eslint.config.mjs";

export default withNuxt({
  languageOptions: {
    parserOptions: {
      parser: "@typescript-eslint/parser",
    },
  },
});
// Your custom configs here
