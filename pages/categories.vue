<script lang="ts" setup>
import type { Category } from "~/types/fake-store-api-types";

const { data: categoriesDataRaw, error: categoriesError } =
  await useFakeStoreApi("/api/v1/categories");

const categoriesData = categoriesDataRaw as Ref<Category[] | null>;

// const { data: categoriesData } = await useFakeStoreCategories();
// const fakeStoreApiUrl = useFakeStoreApiUrl();
// console.log("API base URL:", fakeStoreApiUrl);
// console.log("categories:", toPojo(categoriesData));
// console.log("__TEST__ 20:", toPojo("456"));

// console.log("__TEST__: categoriesData:", toPojo(categoriesData));
// console.log("__TEST__: categoriesError:", toPojo(categoriesError));
</script>

<template>
  <v-container fluid>
    <v-row wrap>
      <v-col xs="12" sm="6" offset-sm="3">
        <v-row><h3>Categories</h3></v-row>
        <v-row v-if="categoriesData">
          <v-card
            v-for="cat in categoriesData"
            :key="cat.id"
            :style="{ minWidth: '200px' }"
          >
            <v-card-title>{{ cat.name }}</v-card-title>
            <v-card-text>
              <v-img v-if="cat.image" :src="cat.image" />
            </v-card-text>
          </v-card>
        </v-row>
      </v-col>
    </v-row>
  </v-container>
</template>

<style></style>
