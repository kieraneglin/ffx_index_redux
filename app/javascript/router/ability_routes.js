import Show from '../views/abilities/Show.vue'
import Index from '../views/abilities/Index.vue'

export default [
  {
    path: '/abilities',
    component: Index,
    name: 'abilities_index'
  },
  {
    path: '/abilities/:slug',
    component: Show,
    name: 'abilities_show'
  }
]
