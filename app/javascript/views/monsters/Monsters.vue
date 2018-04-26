monster<template lang="pug">
  v-container(fluid)
    v-layout(column align-start)
      h1(class="display-1") Monsters

      searchbar(v-model="search", label="Search a monster by name", :disabled="loading")

      loading-view(v-if="loading", text="Loading monsters...")
      v-list(v-else-if="filteredMonsters.length > 0" subheader fill-width class="elevation-2")
        v-subheader {{ search.length === 0 ? 'All monsters' : `Monsters containing "${search}"` }}
        v-list-tile(avatar v-for="monster in filteredMonsters" :key="monster.id")
          v-list-tile-content
            v-list-tile-title {{ monster.name }}
          v-list-tile-action
              router-link(:to='showLink(monster)')
                v-icon chevron_right
      empty-view(v-else-if="search.length > 0", class="empty-view-root elevation-2", :text="'No monsters found containing ' + search")
      empty-view(v-else class="empty-view-root elevation-2", text="No monsters found")
</template>

<script>
  import Searchbar from '../shared/Searchbar/Searchbar';
  import EmptyView from '../shared/EmptyView/EmptyView';
  import LoadingView from '../shared/LoadingView/LoadingView';

  import { mapState } from 'vuex';

  function filterMonsters(monsters, s) {
    return monsters.filter(i => i.name.toLowerCase().indexOf(s.toLowerCase()) !== -1);
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
      filteredMonsters() { return filterMonsters(this.$store.state.monster.monsters, this.search); },
    },
    async created() {
      this.loading = true;
      await this.$store.dispatch('monster/fetchAll');
      this.loading = false;
    },
    methods: {
      showLink: (monster) => ({
          name: 'monsters_show',
          params: {
            slug: monster.slug,
          }
      }),
    }
  }
</script>

<style src="./Monsters.css" scoped></style>
