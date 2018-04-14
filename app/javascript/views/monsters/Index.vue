<template lang="pug">
  h1 hey
</template>
<script>
import axios from 'axios'

export default {
  async created() {
    let response = await axios.get('/api/v1/monsters')

    console.log(response)
  }  
}
</script>
