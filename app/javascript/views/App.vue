<template lang="pug">
    v-app
        navbar(v-bind:title="title" v-bind:routes="routes")
        v-content
            router-view
</template>

<script>
  import Navbar from './shared/Navbar/Navbar.vue';
  import { routes } from '../router/main';

  const navbarRoutes = routes.filter(r => r.navRoute === true);

  export default {
    data: () => ({
      title: 'FFX Index',
      routes: navbarRoutes,
    }),
    components: {
      Navbar
    }
  };
</script>

<style>
@import ''; /* Leave this empty rule for Webpack */
</style>