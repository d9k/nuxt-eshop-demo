<script lang="ts" setup>
import ImageWithPreviewAndPlaceholder from "~/components/ImageWithPreview.vue";
import type { Category, Product } from "~/types/fake-store-api-types";

const route = useRoute();
const idStr = route.params.id;
const id = parseInt(`${idStr}`);

const { data: categoryDataRaw, error: categoryLoadError } =
  await useFakeStoreApi("/api/v1/categories/{id}", {
    path: { id },
  });

const { data: productsDataRaw, error: productsLoadError } =
  await useFakeStoreApi("/api/v1/categories/{id}/products", {
    path: { id },
    query: { limit: 100, offset: 0 },
  });

const category = categoryDataRaw as Ref<Category | null>;
const products = computed(() => (productsDataRaw.value ?? []) as Product[]);

// watch(
//   products,
//   () => {
//     console.log("__TEST__", toPojo(products));
//   },
//   { immediate: true }
// );

const placeholderImageUrl = computed(() => category.value?.image);
const placeholderAlt = computed(() => category.value?.name);
</script>
<template>
  <!-- <v-img v-if="pr.images[0]" :src="pr.images[0]"> -->
  <!-- v-if="pr.images[0]" -->
  <!-- <template v-if="placeholderImageUrl" #placeholder> -->

  <v-row justify="center">
    <v-sheet width="1400" class="pa-5">
      <h3 class="text-center">{{ category?.name }}</h3>
      <v-card class="pa-5">
        <v-card-text>
          <v-row justify="center">
            <v-card
              v-for="pr in products"
              :key="pr.id"
              class="mr-4 mb-4"
              :style="{ width: '400px' }"
              aspect-ratio="1/1"
            >
              <v-card-title>{{ pr.title }}</v-card-title>
              <v-card-text>
                <ImageWithPreview
                  v-if="pr.images[0]"
                  :aspect-ratio="1 / 1"
                  :placeholder-image-url="placeholderImageUrl"
                  :image-alt="pr.title"
                  :placeholder-alt="placeholderAlt"
                  :image-url="pr.images[0]"
                  width="100%"
                  :preview-width-px="256 + 128"
                />
                <p v-if="pr.description" class="mt-3">{{ pr.description }}</p>
              </v-card-text>
            </v-card>
          </v-row>
        </v-card-text>
      </v-card>
    </v-sheet>
  </v-row>
</template>

<style></style>
