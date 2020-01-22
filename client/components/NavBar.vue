<template>
  <div :class="nav">
    <span>
      <nuxt-link :class="btn_nav" to="/">Home</nuxt-link>
      <nuxt-link :class="btn_nav" to="/brands">Brand</nuxt-link>
      <nuxt-link :class="btn_nav" to="/products">Product</nuxt-link>
      <nuxt-link :class="btn_nav" to="/orders">Order</nuxt-link>
      <nuxt-link :class="btn_nav" to="/links">Link</nuxt-link>
      <nuxt-link :class="btn_nav" to="/about">About</nuxt-link>
      <nuxt-link :class="btn_nav" to="/contact">Contact</nuxt-link>
    </span>
  </div>
</template>

<script>
export default {
  data: () => ({
    nav: 'navbar navbar-light bg-light shadow-sm mb-3',
    btn_nav: 'btn btn-sm btn-light'
  })
}
</script>
