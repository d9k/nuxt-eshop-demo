<script lang="ts" setup>
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
const products = productsDataRaw as Ref<Product[] | null>;
</script>
<template>
  <v-row justify="center">
    <v-sheet v-if="category" width="1400" class="pa-5">
      <h3 class="text-center">{{ category.name }}</h3>
      <v-card class="pa-5">
        <v-card-text>
          <v-row v-if="products" justify="center">
            <v-card
              v-for="pr in products"
              :key="pr.id"
              class="mr-4 mb-4"
              :style="{ width: '400px' }"
            >
              <v-card-title>{{ pr.title }}</v-card-title>
              <v-card-text>
                <v-img v-if="pr.images[0]" :src="pr.images[0]" />
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
