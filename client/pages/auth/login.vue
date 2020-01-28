<template>
  <div class="col-md-8 col-lg-6">
    <div v-if="error !== ''" class="alert alert-danger shadow-sm d-flex justify-content-between" role="alert">
      <span />
      <a>{{ error }}</a>
      <button @click="clearError" type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="bg-light rounded shadow p-4">
      <div class="form-group text-center">
        <small class="h3">Sign In</small>
      </div>
      <div class="form-group">
        <label for="email">Email input</label>
        <input id="email" v-model="email" class="form-control" placeholder="E-mail" type="email">
      </div>

      <div class="form-group">
        <label for="password">Password input</label>
        <input id="password" class="form-control" placeholder="Password" type="password">
      </div>

      <div class="form-group text-center">
        <button @click="login" class="btn btn-dark btn-block">
          SIGN IN
        </button>
      </div>
    </div>
  </div>
</template>

<script>

export default {
  layout: 'auth_default',
  data () {
    return {
      email: '',
      error: ''
    }
  },
  methods: {
    async login () {
      if (this.$data.email !== '') {
        try {
          const authUser = await this.$axios({
            method: 'POST',
            data: {
              query: `
                query {
                  memberEmail(email: "${this.$data.email}") {
                    auth,
                    username
                  }
                }
              `
            }
          })
          this.$store.commit('setAuth', authUser.data.data.memberEmail[0].auth)
          this.$store.commit('setUsername', authUser.data.data.memberEmail[0].username)
          this.$store.commit('setMessage', `Welcome back "${authUser.data.data.memberEmail[0].username}" .`)
          this.$store.commit('isLoggedin')
          this.$router.push('/')
        } catch (e) {
          this.$data.error = `You input an Invalid "Email" or "Password" !`
        }
      }
    },
    clearError () {
      this.$data.error = ''
    }
  }
}
</script>

<style>
.close-btn {
  cursor: pointer;
}
</style>
