import ItemDetails from '../views/items/ItemDetails.vue'
import Items from '../views/items/Items.vue'

export default [
  {
    path: '/items',
    component: Items,
    name: 'items_index',
    title: 'Items',
    icon: 'build',
    navRoute: true,
  },
  {
    path: '/items/:slug',
    component: ItemDetails,
    name: 'items_show',
  }
]
