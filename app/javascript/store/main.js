import Vue from 'vue'
import Vuex from 'vuex'

import monster from './monster/main'

Vue.use(Vuex)

export default new Vuex.Store({
  modules: {
    monster
  }
})
