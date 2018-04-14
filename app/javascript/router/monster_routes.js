import Show from '../views/monsters/Show.vue'
import Index from '../views/monsters/Index.vue'

export default [
  {
    path: '/monsters',
    component: Index,
    name: 'monsters_index'
  },
  {
    path: '/monsters/:slug',
    component: Show,
    name: 'monsters_show'
  }
]
