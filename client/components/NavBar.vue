<template>
  <div :class="nav">
    <span>
      <nuxt-link :class="btn_nav" to="/">Home</nuxt-link>
      <b-dropdown text="Menu" size="sm" variant="light">
        <b-dropdown-item-button @click="link_to('brands')"><small>Brand</small></b-dropdown-item-button>
        <b-dropdown-item-button @click="link_to('products')"><small>Product</small></b-dropdown-item-button>
        <b-dropdown-item-button @click="link_to('orders')"><small>Order</small></b-dropdown-item-button>
        <b-dropdown-item-button @click="link_to('links')"><small>Link</small></b-dropdown-item-button>
      </b-dropdown>
      <nuxt-link :class="btn_nav" to="/about">About</nuxt-link>
      <nuxt-link :class="btn_nav" to="/contact">Contact</nuxt-link>
    </span>

    <b-dropdown :text="profile" size="sm" variant="light">
      <b-dropdown-item-button><small>Profile</small></b-dropdown-item-button>
      <b-dropdown-item-button><small>Setting</small></b-dropdown-item-button>
      <b-dropdown-item-button @click="logout">
        <small>Logout</small>
      </b-dropdown-item-button>
    </b-dropdown>
  </div>
</template>

<script>
export default {
  data: () => ({
    nav: 'navbar navbar-light bg-light shadow-sm mb-3',
    btn_nav: 'btn btn-sm btn-light',
    profile: ''
  }),
  mounted () {
    const username = this.$store.state.userName
    const auth = this.$store.state.userAuth
    this.$data.profile = `${username.charAt(0).toUpperCase() + username.slice(1)} [ ${auth} ]`
  },
  methods: {
    logout () {
      this.$store.commit('clearState')
      this.$router.push('/auth/login')
    },
    link_to (path) {
      this.$router.push(path)
    }
  }
}
</script>
