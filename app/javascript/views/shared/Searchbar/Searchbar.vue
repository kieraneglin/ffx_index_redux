<template lang="pug">
    v-layout(row align-center class="elevation-2 searchbar-root")
        v-icon(class="primary--text") search
        v-text-field(v-model="search", :label="label", :disabled="disabled")
</template>

<script>
  export default {
    name: 'searchbar',
    data: () => ({
      search: this.value,
    }),
    watch: {
      search(val) {
        this.$emit('input', val);
      }
    },
    props: {
      value: {
        type: String,
        required: true,
      },
      label: {
        type: String,
        required: false,
        default: 'Search',
      },
      disabled: {
        type: Boolean,
        required: false,
        default: false,
      },
    },
  };
</script>

<style src='./Searchbar.css' scoped />
