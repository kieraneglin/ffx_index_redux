<template lang="pug">
  v-container(fluid)
    v-layout(column align-start)
      h1(class="display-1") Items

      searchbar(v-model="search", label="Search an item by name or effect", :disabled="loading")

      loading-view(v-if="loading", text="Loading items...")
      v-list(v-else-if="filteredItems.length > 0" subheader fill-width class="elevation-2")
        v-subheader {{ search.length === 0 ? 'All items' : `Items containing "${search}"` }}
        v-list-tile(avatar v-for="item in filteredItems" :key="item.id")
          v-list-tile-content
            v-list-tile-title {{ item.name }}
            v-list-tile-sub-title {{ item.effect }}
          v-list-tile-action
              router-link(:to='showLink(item)')
                v-icon chevron_right
      empty-view(v-else-if="search.length > 0", class="empty-view-root elevation-2", :text="'No items found containing ' + search")
      empty-view(v-else class="empty-view-root elevation-2", text="No items found")
</template>

<script>
    import Searchbar from '../shared/Searchbar/Searchbar';
    import EmptyView from '../shared/EmptyView/EmptyView';
    import LoadingView from '../shared/LoadingView/LoadingView';

    function filterItems(items, s) {
      return items.filter(i => (i.name + i.effect).toLowerCase().indexOf(s.toLowerCase()) !== -1);
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
        filteredItems() { return filterItems(this.$store.state.item.items, this.search); },
      },
      async created() {
        this.loading = true;
        await this.$store.dispatch('item/fetchAll');
        this.loading = false;
      },
      methods: {
        showLink: (item) => ({
            name: 'items_show',
            params: {
              slug: item.slug,
            }
        }),
      }
    }
</script>

<style src="./Items.css" scoped></style>
