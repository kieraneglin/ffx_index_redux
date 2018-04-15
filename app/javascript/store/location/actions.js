import axios from 'axios'
import types from '../types'

export default {
  async fetch({ commit }, param) {
    let response = await axios.get(`/api/v1/locations/${param}`)

    commit(types.LOCATION.FETCH, response.data)
  },
  async fetchAll({ commit, state }) {
    if(!state.locations.length) {
      let response = await axios.get('/api/v1/locations')
  
      commit(types.LOCATION.FETCH_ALL, response.data)
    }
  }
}
