<template>
  <div class="row">
    <div v-if="message !== ''" class="alert alert-success shadow-sm d-flex justify-content-between col-12" role="alert">
      <span />
      <a>{{ message }}</a>
      <button @click="clearError" type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <carousel />
  </div>
</template>

<script>
import carousel from '~/components/HomePage/carousel'
export default {
  layout: 'list_default',
  components: {
    carousel
  },
  data () {
    return {
      message: ''
    }
  },
  mounted () {
    this.$data.message = this.$store.state.welcomeMessage
  },
  methods: {
    clearError () {
      this.$data.message = ''
      this.$store.commit('setMessage', '')
    }
  }
}
</script>
