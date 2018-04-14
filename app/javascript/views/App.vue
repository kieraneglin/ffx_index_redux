<template lang="pug">
  div
    navbar
    router-view
</template>
<script>
import Navbar from './shared/Navbar.vue'

export default {
  components: {
    Navbar
  }
}
</script>
<style>
@import ''; /* Leave this empty rule for Webpack */
</style>
