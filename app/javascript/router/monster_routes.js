import Monsters from '../views/monsters/Monsters.vue';
import MonsterDetails from '../views/monsters/MonsterDetails.vue';

export default [
  {
    path: '/monsters',
    component: Monsters,
    name: 'monsters_index',
    title: 'Monsters',
    icon: 'build',
    navRoute: true,
  },
  {
    path: '/monsters/:slug',
    component: MonsterDetails,
    name: 'monsters_show',
  }
]
