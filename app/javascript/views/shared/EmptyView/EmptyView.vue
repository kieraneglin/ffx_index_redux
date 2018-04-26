<template lang="pug">
    v-layout(class="empty-view-root" row align-center)
      img(v-bind:src="`/assets/${img}`")
      p "{{ text }}"
</template>

<script>
  export default {
    name: 'empty-view',
    props: {
      img: {
        type: String,
        required: false,
        default: 'kyactus-200px.png',
      },
      text: {
        type: String,
        required: false,
        default: 'Nothing to see here...',
      },
    }
  }
</script>

<style src="./EmptyView.css" scoped></style>
