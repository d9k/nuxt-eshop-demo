<script lang="ts" setup>
const {
  imageUrl,
  imageAlt,
  placeholderImageUrl,
  placeholderAlt,
  aspectRatio = 1 / 1,
  width = "100%",
  previewWidthPx = 256,
} = defineProps<{
  aspectRatio?: number;
  imageUrl?: string;
  imageAlt?: string;
  placeholderImageUrl?: string;
  placeholderAlt?: string;
  previewWidthPx?: number;
  width?: string;
}>();

const img = useImage();

const imageLoadFail = ref(false);

const previewUrl = computed(() =>
  imageUrl ? img(imageUrl, { width: previewWidthPx }) : undefined
);

const placeholderPreviewUrl = computed(() =>
  placeholderImageUrl
    ? img(placeholderImageUrl, { width: previewWidthPx })
    : undefined
);
</script>

<template>
  <v-responsive :aspect-ratio="aspectRatio" :width="width" class="container">
    <VImg
      v-if="placeholderImageUrl"
      :src="placeholderImageUrl"
      :lazy-src="placeholderPreviewUrl"
      :aspect-ratio="aspectRatio"
      :alt="placeholderAlt"
      class="image-placeholder"
      cover
    />
    <VImg
      v-if="imageUrl && !imageLoadFail"
      :src="imageUrl"
      :lazy-src="previewUrl"
      :aspect-ratio="aspectRatio"
      :alt="imageAlt"
      class="image"
      cover
      @error="imageLoadFail = true"
    />
  </v-responsive>
</template>

<!-- <nuxt-img
  v-if="props.imageUrl"
  class="image"
  :src="imageUrl"
  :custom="true"
  :placeholder="placeholderUrl"
/> -->

<style lang="scss" scoped>
.container {
  background-color: #c0c0c0;
}

.container * {
  transition: none !important;
}

.image,
.image-placeholder {
  width: 100%;
  height: 100%;

  &:deep(img.v-img__img--preload) {
    filter: none;
  }
}

.image {
  position: absolute;
  left: 0;
  top: 0;
}

.image-placeholder {
  &:deep(img.v-img__img) {
    filter: grayscale(1) contrast(0.2) brightness(1.6);
  }
}

// .placeholder-image {
//   &:deep(img.v-img__img--preload) {
//     filter: grayscale(1) contrast(0.2) brightness(1.6);
//   }
// }
</style>
