<template lang="pug">
ul
  li 
    router-link(:to='{ name: "root" }') Home
  li
    router-link(:to='{ name: "monsters_index" }') Monsters  
  li
    router-link(:to='{ name: "locations_index" }') Locations  
  li
    router-link(:to='{ name: "items_index" }') Items  
</template>
