import axios from 'axios'
import types from '../types'

export default {
  async fetch({ commit }, param) {
    let response = await axios.get(`/api/v1/abilities/${param}`)

    commit(types.ABILITY.FETCH, response.data)
  },
  async fetchAll({ commit, state }) {
    if(!state.abilities.length) {
      let response = await axios.get('/api/v1/abilities')
  
      commit(types.ABILITY.FETCH_ALL, response.data)
    }
  }
}
