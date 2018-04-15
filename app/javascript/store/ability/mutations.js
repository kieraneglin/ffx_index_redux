import types from '../types'

export default {
  [types.ABILITY.FETCH](state, payload) {
    state.ability = payload
  },
  [types.ABILITY.FETCH_ALL](state, payload) {
    state.abilities = payload
  },
  [types.ABILITY.CLEAR](state) {
    state.ability = {}
  },
}
