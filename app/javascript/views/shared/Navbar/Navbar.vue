<template lang="pug">
div(class='container')
    div(class='link')
        router-link(:to='{ name: "root" }') Home
    div(class='link')
        router-link(:to='{ name: "monsters_index" }') Monsters
    div(class='link')
        router-link(:to='{ name: "locations_index" }') Locations
    div(class='link')
        router-link(:to='{ name: "items_index" }') Items
</template>

<style src="./Navbar.css" scoped></style>