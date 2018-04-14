<template lang="pug">
ul
  li(v-for='monster in monsters', :key='monster.id')
    router-link(:to='showLink(monster)') {{ monster.name }}
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
  },
  methods: {
    showLink(monster) {
      return {
        name: 'monsters_show',
        params: {
          slug: monster.slug
        }
      }
    }
  }
}
</script>
