<template>
  <div class="content">
    <nav class="navbar navbar-light bg-light shadow-sm mb-3">
      <button @click="backTo" class="btn btn-light btn-sm">
        Back
      </button>
      <span>{{ $route.name.replace('-id',' ').toUpperCase() }}</span>
      <span />
    </nav>
    <div class="container">
      <nuxt />
    </div>
  </div>
</template>

<script>
export default {
  middleware: 'authenticated',
  methods: {
    backTo () {
      this.$router.push('/')
    }
  }
}
</script>

<style scoped>
.content {
    background-color: lightgray;
    min-height: 100vh;
}
</style>
