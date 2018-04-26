<template lang="pug">
  v-container(fluid)
    v-layout(column align-start)
      h1(class="display-1") Abilities

      searchbar(v-model="search", label="Search an ability by name", :disabled="loading")

      loading-view(v-if="loading", text="Loading abilities...")
      v-list(v-else-if="filteredAbilities.length > 0" subheader fill-width class="elevation-2")
        v-subheader {{ search.length === 0 ? 'All abilities' : `Abilities containing "${search}"` }}
        v-list-tile(avatar v-for="ability in filteredAbilities" :key="ability.id")
          v-list-tile-content
            v-list-tile-title {{ ability.name }}
            v-list-tile-sub-title {{ ability.effect }}
          v-list-tile-action
              router-link(:to='showLink(ability)')
                v-icon chevron_right
      empty-view(v-else-if="search.length > 0", class="empty-view-root elevation-2", :text="'No abilities found containing ' + search")
      empty-view(v-else class="empty-view-root elevation-2", text="No abilities found")
</template>

<script>
  import Searchbar from '../shared/Searchbar/Searchbar';
  import EmptyView from '../shared/EmptyView/EmptyView';
  import LoadingView from '../shared/LoadingView/LoadingView';

  function filterAbilities(abilities, s) {
    return abilities.filter(i => (i.name + i.effect).toLowerCase().indexOf(s.toLowerCase()) !== -1);
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
      filteredAbilities() { return filterAbilities(this.$store.state.ability.abilities, this.search); },
    },
    async created() {
      this.loading = true;
      await this.$store.dispatch('ability/fetchAll');
      this.loading = false;
    },
    methods: {
      showLink: (ability) => ({
          name: 'abilities_show',
          params: {
            slug: ability.slug,
          }
      }),
    }
  }
</script>

<style src="./Abilities.css" scoped></style>
