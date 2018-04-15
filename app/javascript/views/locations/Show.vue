<template lang="pug">
  code {{ location }}
</template>
<script>
import { mapState } from 'vuex'

export default {
  computed: {
    ...mapState('location', {
      location: state => state.location
    })
  },
  async created() {
    await this.$store.dispatch('location/fetch', this.$route.params.slug)
  },
  beforeDestroy() {
    this.$store.commit('location/clear')
  }
}
</script>
