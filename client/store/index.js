export const state = () => ({
  loggedin: false,
  userAuth: '',
  userName: ''
})

export const mutations = {
  isLoggedin (state) {
    state.loggedin = !state.loggedin
  },
  setAuth (state, auth) {
    state.userAuth = auth
  },
  setUsername (state, name) {
    state.userName = name
  },
  clearState (state) {
    state.loggedin = false
    state.userAuth = ''
    state.userName = ''
  }
}
