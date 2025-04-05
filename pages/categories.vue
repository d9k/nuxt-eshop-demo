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

console.log("__TEST__: categoriesData:", toPojo(categoriesData));
console.log("__TEST__: categoriesError:", toPojo(categoriesError));
</script>

<template>
  <div>
    <h3>Categories</h3>
  </div>
</template>

<style></style>
