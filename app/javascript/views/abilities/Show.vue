<template lang="pug">
  code {{ item }}
</template>
<script>
import { mapState } from 'vuex'

export default {
  computed: {
    ...mapState('item', {
      item: state => state.item
    })
  },
  async created() {
    await this.$store.dispatch('item/fetch', this.$route.params.slug)
  },
  beforeDestroy() {
    this.$store.commit('item/clear')
  }
}
</script>
