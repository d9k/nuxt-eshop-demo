// type ComponentName = keyof typeof import("vuetify/components");
// import * from "vuetify/components";
// import * as components from "vuetify/components";
// import * as directives from "vuetify/directives";

// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: "2024-11-01",
  devtools: { enabled: true },
  modules: [
    "@nuxt/test-utils",
    "vuetify-nuxt-module",
    "@nuxt/eslint",
    "nuxt-open-fetch-x",
  ],
  // runtimeConfig: {
  //   public: {
  //     fakeStoreApiUrl: "https://api.escuelajs.co/api/v1",
  //   },
  // },
  imports: {
    dirs: ["composables/**"],
  },
  openFetch: {
    clients: {
      fakeStoreApi: {
        baseURL:
          process.env.NUXT_PUBLIC_FAKE_STORE_API_URL ??
          "https://api.escuelajs.co/",
        schema: "https://api.escuelajs.co/swagger/json",
      },
    },
  },
  vuetify: {
    moduleOptions: {},
    vuetifyOptions: {
      // components: true,
      directives: true,
      // directives: true,
      // components: ["VApp"],
      components: ["VDialog", "VSheet"],
      // components: ["VApp", "VFlex"],
      icons: {
        defaultSet: "mdi",
        sets: ["mdi", "fa"],
      },
    },
  },
});
