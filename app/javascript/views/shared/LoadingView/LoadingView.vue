<template lang="pug">
    v-layout(class="loading-view-root" row align-center)
      img(:src="`../../../../assets/${img}`")
      p "{{ text }}"
</template>

<script>
  export default {
    name: 'loading-view',
    props: {
      img: {
        type: String,
        required: false,
        default: 'kupo-200px.png',
      },
      text: {
        type: String,
        required: false,
        default: 'Loading...',
      },
    },
  }
</script>

<style src="./LoadingView.css" scoped></style>
