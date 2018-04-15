<template lang="pug">
  code {{ ability }}
</template>
<script>
import { mapState } from 'vuex'

export default {
  computed: {
    ...mapState('ability', {
      ability: state => state.ability
    })
  },
  async created() {
    await this.$store.dispatch('ability/fetch', this.$route.params.slug)
  },
  beforeDestroy() {
    this.$store.commit('ability/clear')
  }
}
</script>
