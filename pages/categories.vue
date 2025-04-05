<script lang="ts" setup>
const { data: categoriesData } = await useFakeStoreCategories();
// const fakeStoreApiUrl = useFakeStoreApiUrl();
// console.log("API base URL:", fakeStoreApiUrl);
console.log("categories:", toPojo(categoriesData));
console.log("__TEST__ 20:", toPojo("456"));
</script>

<template>
  <div>
    <h3>Categories</h3>
  </div>
</template>

<style></style>
