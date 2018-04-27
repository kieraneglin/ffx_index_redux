import Vue from 'vue'
import Vuex from 'vuex'

import item from './item/main'
import ability from './ability/main'
import monster from './monster/main'
import location from './location/main'

Vue.use(Vuex);

export default new Vuex.Store({
  modules: {
    item,
    ability,
    monster,
    location
  }
});
