<template lang="pug">
ul
  li 
    router-link(:to='{ name: "root" }') Home
  li
    router-link(:to='{ name: "monsters_index" }') Monsters  
  li
    router-link(:to='{ name: "locations_index" }') Locations  
</template>
