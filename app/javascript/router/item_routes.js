import Show from '../views/items/Show.vue'
import Index from '../views/items/Index.vue'

export default [
  {
    path: '/items',
    component: Index,
    name: 'items_index'
  },
  {
    path: '/items/:slug',
    component: Show,
    name: 'items_show'
  }
]
