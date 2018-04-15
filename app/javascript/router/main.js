import Vue from 'vue'
import Router from 'vue-router'

import HomeRoutes from './home_routes'
import ItemRoutes from './item_routes'
import MonsterRoutes from './monster_routes'
import LocationRoutes from './location_routes'

Vue.use(Router)

const router = new Router({
  mode: 'history',
  routes: [
    ...HomeRoutes,
    ...ItemRoutes,
    ...MonsterRoutes,
    ...LocationRoutes
  ]
})

export default router
