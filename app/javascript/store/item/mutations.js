import types from '../types'

export default {
  [types.ITEM.FETCH](state, payload) {
    state.item = payload
  },
  [types.ITEM.FETCH_ALL](state, payload) {
    state.items = payload
  },
  [types.ITEM.CLEAR](state) {
    state.item = {}
  },
}
