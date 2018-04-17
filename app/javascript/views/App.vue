<template lang="pug">
  div(class='root')
    navbar
    router-view
</template>

<script>
    import Navbar from './shared/Navbar/Navbar.vue'

    export default {
      components: {
        Navbar
      }
    }
</script>

<style>
@import ''; /* Leave this empty rule for Webpack */
</style>

<!-- Reset CSS -->
<style src="../../assets/stylesheets/reset.css"></style>

<style src="./App.css" scoped></style>