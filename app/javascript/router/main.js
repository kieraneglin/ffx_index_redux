import Vue from 'vue'
import Router from 'vue-router'

import MonsterRoutes from './monster_routes'

Vue.use(Router)

const router = new Router({
  mode: 'history',
  routes: [
    ...MonsterRoutes
  ]
})

export default router
