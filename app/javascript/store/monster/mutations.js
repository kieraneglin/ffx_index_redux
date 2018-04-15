import types from '../types'

export default {
  [types.MONSTER.FETCH](state, payload) {
    state.monster = payload
  },
  [types.MONSTER.FETCH_ALL](state, payload) {
    state.monsters = payload
  },
  [types.MONSTER.CLEAR](state) {
    state.monster = {}
  }
}
