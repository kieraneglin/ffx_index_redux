<template lang="pug">
  code {{ monsters }}
</template>
<script>
import { mapState } from 'vuex'

export default {
  computed: {
    ...mapState('monster', {
      monsters: state => state.monsters
    })
  },
  async created() {
    await this.$store.dispatch('monster/fetchAll')
  }
}
</script>
