<template lang="pug">
    div
        v-navigation-drawer(clipped fixed app v-model="drawer")
            v-list(dense)
                v-list-tile(v-for="route in routes" :key="route.title")
                    v-list-tile-action
                        v-icon(class="primary--text") {{ route.icon }}
                    v-list-tile-content
                        router-link(class="navbar-link" :to='{ name: route.name }') {{ route.title }}

        v-toolbar(class="navbar-toolbar" app fixed clipped-left)
            v-toolbar-side-icon(class="primary--text" @click.stop="drawer = !drawer")
            v-toolbar-title(class="primary--text") {{ title }}
</template>

<script>
  export default {
    name: 'navbar',
    data: () => ({
      drawer: false,
    }),
    props: {
      title: {
        type: String,
        required: true,
      },
      routes: {
        type: Array,
        required: false,
        default: [],
      },
    }
  }
</script>

<style src="./Navbar.css" scoped></style>
