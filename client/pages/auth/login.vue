<template>
  <div class="p-4 bg-light col-md-6 col-lg-5 shadow rounded">
    <div class="form-group text-center">
      <small class="h3">Sign In</small>
    </div>
    <div class="form-group">
      <label for="email">Email input</label>
      <input id="email" class="form-control" placeholder="E-mail" type="email">
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
</template>

<script>

export default {
  layout: 'auth_default',
  methods: {
    login () {
      this.$store.commit('isLoggedin')
      this.$router.push('/')
    }
  }
}
</script>
