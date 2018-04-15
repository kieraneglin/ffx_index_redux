<template lang="pug">
ul
  li(v-for='item in items', :key='item.id')
    router-link(:to='showLink(item)') {{ item.name }}
</template>
<script>
import { mapState } from 'vuex'

export default {
  computed: {
    ...mapState('item', {
      items: state => state.items
    })
  },
  async created() {
    await this.$store.dispatch('item/fetchAll')
  },
  methods: {
    showLink(item) {
      return {
        name: 'items_show',
        params: {
          slug: item.slug
        }
      }
    }
  }
}
</script>
