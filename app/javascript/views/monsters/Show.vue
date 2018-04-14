<template lang="pug">
  code {{ monster }}
</template>
<script>
import { mapState } from 'vuex'

export default {
  computed: {
    ...mapState('monster', {
      monster: state => state.monster
    })
  },
  async created() {
    await this.$store.dispatch('monster/fetch', this.$route.params.slug)
  }
}
</script>
