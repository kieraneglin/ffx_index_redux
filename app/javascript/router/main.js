import Vue from 'vue'
import Router from 'vue-router'

import HomeRoutes from './home_routes'
import ItemRoutes from './item_routes'
import AbilityRoutes from './ability_routes'
import MonsterRoutes from './monster_routes'
import LocationRoutes from './location_routes'

Vue.use(Router);

export const routes = [
  ...HomeRoutes,
  ...ItemRoutes,
  ...AbilityRoutes,
  ...MonsterRoutes,
  ...LocationRoutes
];

const router = new Router({
  mode: 'history',
  routes,
});

export default router
