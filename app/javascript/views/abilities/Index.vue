<template lang="pug">
ul
  li(v-for='ability in abilities', :key='ability.id')
    router-link(:to='showLink(ability)') {{ ability.name }}
</template>
<script>
import { mapState } from 'vuex'

export default {
  computed: {
    ...mapState('ability', {
      abilities: state => state.abilities
    })
  },
  async created() {
    await this.$store.dispatch('ability/fetchAll')
  },
  methods: {
    showLink(ability) {
      return {
        name: 'abilities_show',
        params: {
          slug: ability.slug
        }
      }
    }
  }
}
</script>
