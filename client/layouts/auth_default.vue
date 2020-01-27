<template>
  <div class="auth-container d-flex justify-content-center align-items-center">
    <nav class="navbar navbar-light bg-light fixed-top shadow-sm mb-3">
      <nuxt-link class="btn btn-light btn-sm" to="/">
        HOME
      </nuxt-link>

      <span v-if="$route.name == 'auth-login'">
        <nuxt-link class="btn btn-light btn-sm" to="/auth/register">
          SIGN UP
        </nuxt-link>
      </span>

      <span v-if="$route.name == 'auth-register'">
        <nuxt-link class="btn btn-light btn-sm" to="/auth/login">
          SIGN IN
        </nuxt-link>
      </span>
    </nav>
    <nuxt />
  </div>
</template>

<style>
    .auth-container {
        background-color: rgb(235, 235, 235);
        min-height: 100vh;
    }
</style>
