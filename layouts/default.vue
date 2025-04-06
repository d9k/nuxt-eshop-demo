<script lang="ts" setup>
const menuItems = [
  { title: "Demo", path: "/", icon: "mdi-home" },
  // { title: 'Sign Up', path: '/signup', icon: 'face' },
  { title: "Categories", path: "/categories", icon: "mdi-menu" },
];
</script>

<template>
  <v-app>
    <v-app-bar>
      <v-app-bar-title> Shop Demo </v-app-bar-title>
      <v-spacer />
      <v-toolbar-items>
        <v-btn
          v-for="item in menuItems"
          :key="item.title"
          class="text-none"
          :prepend-icon="item.icon"
          :to="item.path"
          menu
        >
          <!-- <v-icon left dark :icon="item.icon" mr="2" /> -->
          {{ item.title }}
        </v-btn>
      </v-toolbar-items>
    </v-app-bar>
    <v-sheet style="margin-top: 200px">
      <slot />
    </v-sheet>
  </v-app>
</template>

<style></style>
