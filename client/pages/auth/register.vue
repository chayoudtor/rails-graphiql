<template>
  <div class="col-md-6 col-lg-5">
    <div v-if="error !== ''" class="alert alert-danger shadow-sm d-flex justify-content-between col-12" role="alert">
      <span />
      <a>{{ error }}</a>
      <button @click="clearError" type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="p-4 bg-light shadow rounded">
      <div class="form-group text-center">
        <small class="h3">Sign Up</small>
      </div>

      <div class="form-group">
        <label for="username">Name input</label>
        <input
          id="username"
          ref="username"
          v-model="username"
          class="form-control"
          placeholder="Username"
          type="username"
        >
      </div>

      <div class="form-group">
        <label for="email">Email input</label>
        <input
          id="email"
          ref="email"
          v-model="email"
          class="form-control"
          placeholder="E-mail"
          type="email"
        >
      </div>

      <div class="form-group">
        <label for="password">Password input</label>
        <input
          id="password"
          ref="password"
          v-model="password"
          class="form-control"
          placeholder="Password"
          type="password"
        >
      </div>

      <div class="form-group">
        <label for="password_conf">Confirm input</label>
        <input
          id="password_conf"
          ref="conf"
          v-model="confirm"
          class="form-control"
          placeholder="Password confirm"
          type="password"
        >
      </div>

      <div class="form-group text-center">
        <button @click="register" class="btn btn-dark btn-block">
          SIGN UP
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
      username: '',
      email: '',
      password: '',
      confirm: '',
      error: ''
    }
  },
  methods: {
    register () {
      const { username, email, password, confirm } = this.$data
      if (username !== '' && email !== '' && password !== '' && confirm !== '') {
        if (password === confirm) {
          alert('OK !!')
        } else {
          this.$data.error = `You input incorrect confirm password .`
          this.$refs.conf.focus()
        }
      } else {
        const data = { confirm, password, email, username }
        for (const key in data) {
          if (data[key] === '') {
            this.$data.error = `Field "${key}" connot be empty !`
          }
        }
      }
    },
    clearError () {
      this.$data.error = ''
    }
  }
}
</script>
