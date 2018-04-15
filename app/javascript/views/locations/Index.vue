<template lang="pug">
ul
  li(v-for='location in locations', :key='location.id')
    router-link(:to='showLink(location)') {{ location.name }}
</template>
<script>
import { mapState } from 'vuex'

export default {
  computed: {
    ...mapState('location', {
      locations: state => state.locations
    })
  },
  async created() {
    await this.$store.dispatch('location/fetchAll')
  },
  methods: {
    showLink(location) {
      return {
        name: 'locations_show',
        params: {
          slug: location.slug
        }
      }
    }
  }
}
</script>
