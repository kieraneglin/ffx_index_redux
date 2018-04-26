<template lang="pug">

  v-container(fluid)
      v-layout(column align-start)
          h1(class="display-1") Locations

          searchbar(v-model="search", label="Search a location", :disabled="loading")

          loading-view(v-if="loading")
          v-list(v-else-if="filteredLocations.length > 0" subheader fill-width class="elevation-2")
              v-subheader {{ search.length === 0 ? 'All locations' : `Locations containing "${search}"` }}
              v-list-tile(avatar v-for="location in filteredLocations" :key="location.id")
                  v-list-tile-content
                      v-list-tile-title {{ location.name }}
                  v-list-tile-action
                      router-link(:to='showLink(location)')
                          v-icon chevron_right
          empty-view(v-else-if="search.length > 0", class="empty-view-root elevation-2", :text="'No locations found containing ' + search")
          empty-view(v-else class="empty-view-root elevation-2", text="No locations found")

</template>

<script>
  import Searchbar from '../shared/Searchbar/Searchbar';
  import EmptyView from '../shared/EmptyView/EmptyView';
  import LoadingView from '../shared/LoadingView/LoadingView';

  function filterLocations(locations, s) {
    return locations.filter(l => l.name.toLowerCase().indexOf(s.toLowerCase()) !== -1);
  }

  export default {
    components: {
      Searchbar,
      EmptyView,
      LoadingView,
    },
    data: () => ({
      search: '',
      loading: false,
    }),
    computed: {
      filteredLocations() { return filterLocations(this.$store.state.location.locations, this.search); },
    },
    async created() {
      this.loading = true;
      await this.$store.dispatch('location/fetchAll');
      this.loading = false;
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

<style src="./Locations.css" scoped></style>
