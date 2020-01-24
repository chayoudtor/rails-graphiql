<template>
  <div class="content">
    <Menu />
    <div class="container bg-light p-3 rounded shadow">
      <nuxt />
    </div>
  </div>
</template>

<script>
import Menu from '~/components/NavBar.vue'

export default {
  components: {
    Menu
  }
}
</script>

<style scoped>
.content {
    background-color: lightgray;
    min-height: 100vh;
}
</style>
