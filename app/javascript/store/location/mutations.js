import types from '../types'

export default {
  [types.LOCATION.FETCH](state, payload) {
    state.location = payload
  },
  [types.LOCATION.FETCH_ALL](state, payload) {
    state.locations = payload
  },
  [types.LOCATION.CLEAR](state) {
    state.location = {}
  },
}
