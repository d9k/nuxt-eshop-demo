<script lang="ts" setup>
type ProductCardImageProps = {
  imageUrl?: string;
  placeholderImageUrl?: string;
  aspectRatio: number;
  width: string;
};

const props = defineProps<ProductCardImageProps>();

const img = useImage();
const imageUrl = computed(() => props.imageUrl ?? props.placeholderImageUrl);
const isPlaceholder = !props.imageUrl;
const thumbnailUrl = computed(() =>
  imageUrl.value ? img(imageUrl.value, { width: 256 /*, blur: 2*/ }) : undefined
);
</script>

<template>
  <VImg
    :src="imageUrl"
    :lazy-src="thumbnailUrl"
    :aspect-ratio="props.aspectRatio"
    :class="{ image: true, ['image-placeholder']: isPlaceholder }"
  />
  <!-- <v-responsive :aspect-ratio="props.aspectRatio" :width="props.width"> -->
  <!-- fit="cover" -->
  <!-- <nuxt-img
      v-if="props.imageUrl"
      class="image"
      :src="imageUrl"
      :custom="true"
      :placeholder="placeholderUrl"
    /> -->
  <!-- :style="{ width: props.width }" -->
  <!-- </v-responsive> -->
</template>

<style lang="scss" scoped>
.image {
  width: 100%;
  height: 100%;
  background-color: #c0c0c0;
}
.image {
  background-color: #c0c0c0;
}

.image-placeholder {
  &:deep(img.v-img__img--preload) {
    filter: grayscale(1) contrast(0.2) brightness(1.6);
  }
}

// .placeholder-image {
//   &:deep(img.v-img__img--preload) {
//     filter: grayscale(1) contrast(0.2) brightness(1.6);
//   }
// }
</style>
