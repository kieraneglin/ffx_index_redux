import axios from 'axios'
import types from '../types'

export default {
  async fetch({ commit }) {
    // let response = await axios.get('/api/v1/partner/action_center_items')

    // commit(types.MONSTER.FETCH, response.data)
  },
  async fetchAll({ commit, state }) {
    if(!state.monsters.length) {
      let response = await axios.get('/api/v1/monsters')
  
      commit(types.MONSTER.FETCH_ALL, response.data)
    }
  }
}
