import axios from 'axios'
import types from '../types'

export default {
  async fetch({ commit }, param) {
    let response = await axios.get(`/api/v1/items/${param}`)

    commit(types.ITEM.FETCH, response.data)
  },
  async fetchAll({ commit, state }) {
    if(!state.items.length) {
      let response = await axios.get('/api/v1/items')
  
      commit(types.ITEM.FETCH_ALL, response.data)
    }
  }
}
