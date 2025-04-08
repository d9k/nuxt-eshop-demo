<script lang="ts" setup>
import type { Category } from "~/types/fake-store-api-types";

const { data: categoriesDataRaw, error: categoriesError } =
  await useFakeStoreApi("/api/v1/categories");

const categoriesData = categoriesDataRaw as Ref<Category[] | null>;
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
            :style="{ minWidth: '300px' }"
            :href="`category/${cat.id}`"
          >
            <v-card-title>{{ cat.name }}</v-card-title>
            <v-card-text>
              <!-- <v-img v-if="cat.image" :src="cat.image" /> -->
              <image-with-preview
                :image-url="cat.image"
                placeholder-image-url="/shopping-bags-6673411-pngtree.com.jpg"
                :image-alt="cat.name"
                placeholder-alt="#shopping bags (6673411 image from pngtree.com)"
                :preview-width-px="512"
              />
            </v-card-text>
          </v-card>
        </v-row>
      </v-col>
    </v-row>
  </v-container>
</template>

<style></style>
