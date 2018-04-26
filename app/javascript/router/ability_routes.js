import Abilities from '../views/abilities/Abilities.vue';
import AbilityDetails from '../views/abilities/AbilityDetails.vue';

export default [
  {
    path: '/abilities',
    component: Abilities,
    name: 'abilities_index',
    title: 'Abilities',
    icon: 'build',
    navRoute: true,
  },
  {
    path: '/abilities/:slug',
    component: AbilityDetails,
    name: 'abilities_show'
  }
]
