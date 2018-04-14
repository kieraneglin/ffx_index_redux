import Vue from 'vue'
import Router from 'vue-router'

import HomeRoutes from './home_routes'
import MonsterRoutes from './monster_routes'

Vue.use(Router)

const router = new Router({
  mode: 'history',
  routes: [
    ...HomeRoutes,
    ...MonsterRoutes
  ]
})

export default router
