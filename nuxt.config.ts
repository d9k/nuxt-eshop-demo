// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: "2024-11-01",
  devtools: { enabled: true },
  modules: [
    "@nuxt/test-utils",
    "vuetify-nuxt-module",
    "@nuxt/eslint",
    "nuxt-open-fetch",
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
        baseURL: "https://api.escuelajs.co/",
        schema: "https://api.escuelajs.co/swagger/json",
      },
    },
  },
});
