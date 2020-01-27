<template>
  <div class="content">
    <Menu />
    <div class="container">
      <nuxt />
    </div>
  </div>
</template>

<script>
import Menu from '~/components/NavBar.vue'

export default {
  middleware: 'authenticated',
  components: {
    Menu
  }
}
</script>

<style scoped>
.content {
    background-color: rgb(235, 235, 235);
    min-height: 100vh;
}
</style>
