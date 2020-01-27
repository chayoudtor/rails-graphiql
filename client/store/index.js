export const state = () => ({
  loggedin: false
})

export const mutations = {
  isLoggedin (state) {
    state.loggedin = !state.loggedin
  }
}
