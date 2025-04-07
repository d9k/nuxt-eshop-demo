# Nuxt store demo

Initialized with

```bash
> pnpm dlx nuxi init
```

then

```bash
pnpm add vuetify
pnpm dlx nuxi@latest module add vuetify-nuxt-module
pnpm dlx nuxi@latest module add @nuxt/image
```

Need

```bash
pnpm add sharp@0.33.5 --allow-build=sharp
mkdir .ipx-cache
```

for image resize working!

Do

```bash
mkdir -p .cache/ipx
```

for images thumbnails cache to work.

Had to install [nuxt-open-fetch-x](https://github.com/Norbiros/nuxt-open-fetch-x) instead of [nuxt-open-fetch](https://github.com/enkot/nuxt-open-fetch) due to issue: [Nuxt 4.15.1 breaks the module | issue #83 | nuxt-open-fetch](https://github.com/enkot/nuxt-open-fetch/issues/83).

There was `Cannot find module 'vuetify/package.json'` error but `pnpm run dev` works fine.

Look at the [Nuxt documentation](https://nuxt.com/docs/getting-started/introduction) to learn more.

## VSCode configure

VSCode extensions required for correct IDE usage (2025):

- [Vue - Official - Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=Vue.volar)
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
