import Locations from '../views/locations/Locations.vue';
import LocationDetails from '../views/locations/LocationDetails.vue';

export default [
  {
    path: '/locations',
    component: Locations,
    name: 'locations_index',
    title: 'Locations',
    icon: 'build',
    navRoute: true,
  }, {
    path: '/locations/:slug',
    component: LocationDetails,
    name: 'locations_show',
  },
]
