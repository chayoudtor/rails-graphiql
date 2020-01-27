<template>
  <div class="p-4 bg-light col-md-6 col-lg-5 shadow rounded">
    <div class="form-group text-center">
      <small class="h3">Sign Up</small>
    </div>
    <div class="form-group">
      <label for="email">Email input</label>
      <input id="email" class="form-control" placeholder="E-mail" type="email">
    </div>

    <div class="form-group">
      <label for="password">Password input</label>
      <input id="password" class="form-control" placeholder="Password" type="password">
    </div>

    <div class="form-group">
      <label for="password_conf">Confirm input</label>
      <input id="password_conf" class="form-control" placeholder="Password confirm" type="password">
    </div>

    <div class="form-group text-center">
      <nuxt-link class="btn btn-dark btn-block" to="/auth/login">
        SIGN UP
      </nuxt-link>
    </div>
  </div>
</template>

<script>
export default {
  layout: 'auth_default'
}
</script>
