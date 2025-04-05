<script lang="ts" setup>
const menuItems = [
  { title: "Demo", path: "/", icon: "mdi-home" },
  // { title: 'Sign Up', path: '/signup', icon: 'face' },
  { title: "Categories", path: "/categories", icon: "mdi-menu" },
];
</script>

<template>
  <v-app>
    <v-toolbar app>
      <v-toolbar-title> Shop Demo </v-toolbar-title>
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
    </v-toolbar>
    <slot />
  </v-app>
</template>

<style></style>
