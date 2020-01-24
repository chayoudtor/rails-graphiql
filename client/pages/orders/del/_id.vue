<template>
  <div>
    <OrderForms :action="action" :queryData="order" />
  </div>
</template>

<script>
import OrderForms from '~/components/OrderForms.vue'
export default {
  layout: 'form_default',
  components: {
    OrderForms
  },
  data () {
    return {
      order: [],
      action: 'Delete'
    }
  },
  async mounted () {
    try {
      const result = await this.$axios({
        method: 'POST',
        data: {
          query: `
                  query {
                    order(id: ${parseInt(this.$route.query.id)}) {
                      id,
                      name,
                      product,
                      amount
                    }
                  }
                `
        }
      })
      this.order = result.data.data.order
    } catch (error) {
      console.error(error)
    }
  }
}
</script>
