export const state = () => ({
  loggedin: false,
  userAuth: '',
  userName: '',
  welcomeMessage: ''
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
  setMessage (state, message) {
    state.welcomeMessage = message
  },
  clearState (state) {
    state.loggedin = false
    state.userAuth = ''
    state.userName = ''
    state.welcomeMessage = ''
  }
}
