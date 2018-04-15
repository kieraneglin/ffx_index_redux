import Show from '../views/locations/Show.vue'
import Index from '../views/locations/Index.vue'

export default [
  {
    path: '/locations',
    component: Index,
    name: 'locations_index'
  },
  {
    path: '/locations/:slug',
    component: Show,
    name: 'locations_show'
  }
]
