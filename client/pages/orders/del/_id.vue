<template>
  <div>
    <OrderForms :action="action" />
  </div>
</template>

<script>
import OrderForms from '~/components/OrderForms.vue'
import queryOrder from '~/graphql/query/order.gql'
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
  apollo: {
    order: {
      prefetch: true,
      query: queryOrder,
      valiables () {
        return {
          id: parseInt(this.$route.query.id)
        }
      }
    }
  }
}
</script>
