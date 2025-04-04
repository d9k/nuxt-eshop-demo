# Nuxt store demo

Initialized with

```bash
> pnpm dlx nuxi init
```

then

```bash
pnpm add vuetify
pnpm dlx nuxi module add vuetify-nuxt-module
```

There was `Cannot find module 'vuetify/package.json'` error but `pnpm run dev` works fine.

Look at the [Nuxt documentation](https://nuxt.com/docs/getting-started/introduction) to learn more.

## VSCode configure

VSCode extensions required for correct IDE usage (2025):

- [Goto definition alias - Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=antfu.goto-alias)
- [Nuxtr - Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=Nuxtr.nuxtr-vscode)

## Setup

Make sure to install dependencies:

```bash
# npm
npm install

# pnpm
pnpm install

# yarn
yarn install

# bun
bun install
```

## Development Server

Start the development server on `http://localhost:3000`:

```bash
# npm
npm run dev

# pnpm
pnpm dev

# yarn
yarn dev

# bun
bun run dev
```

## Production

Build the application for production:

```bash
# npm
npm run build

# pnpm
pnpm build

# yarn
yarn build

# bun
bun run build
```

Locally preview production build:

```bash
# npm
npm run preview

# pnpm
pnpm preview

# yarn
yarn preview

# bun
bun run preview
```

Check out the [deployment documentation](https://nuxt.com/docs/getting-started/deployment) for more information.
