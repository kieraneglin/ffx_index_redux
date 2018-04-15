import axios from 'axios'
import types from '../types'

export default {
  async fetch({ commit }, param) {
    let response = await axios.get(`/api/v1/monsters/${param}`)

    commit(types.MONSTER.FETCH, response.data)
  },
  async fetchAll({ commit, state }) {
    if(!state.monsters.length) {
      let response = await axios.get('/api/v1/monsters')
  
      commit(types.MONSTER.FETCH_ALL, response.data)
    }
  }
}
