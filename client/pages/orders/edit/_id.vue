<template>
  <div>
    {{ $route.query.id }}
  </div>
</template>

<script>
import queryOrder from "~/graphql/query/order.gql"
export default {
  layout: 'form_default',
  data() {
    return {
      order: []
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
