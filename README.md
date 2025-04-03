# Nuxt store demo

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
