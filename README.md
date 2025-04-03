# Nuxt store demo

Development status on Deno: paused due to bad IDE support (2025.03):
- [\[FEATURE REQUEST\] Add Deno Support · Issue #2258 · vuejs/language-tools](https://github.com/vuejs/language-tools/issues/2258), 2022
    - 2025: still open
- [typescript - vue + deno + vscode => How to integrate them for comfort development? - Stack Overflow](https://stackoverflow.com/questions/78157571/vue-deno-vscode-how-to-integrate-them-for-comfort-development), 2024
    - too hacky solution

Initialized with

```bash
> deno -A npm:nuxi@latest init
```

Installed vuetify with

```bash
deno install npm:vuetify
deno run -A npm:nuxi@latest module add vuetify-nuxt-module
```

There was error

```
Could not find referrer npm package 'file:///home/d9k/cr/demo/nuxt-eshop-demo/node_modules/.deno/jiti@2.4.2/node_modules/jiti/dist/babel.cjs'.
```

— see https://github.com/vuetifyjs/nuxt-module/issues/306.

Look at the [Nuxt documentation](https://nuxt.com/docs/getting-started/introduction) to learn more.

## Setup

Make sure to install dependencies:

```bash
deno install
```

## Development Server

Start the development server on `http://localhost:3000`:

```bash
deno run dev
```

## Production

Build the application for production:

```bash
deno run build
```

Locally preview production build:

```bash
deno run preview
```

Check out the [deployment documentation](https://nuxt.com/docs/getting-started/deployment) for more information.
