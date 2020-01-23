<template>
  <div>
    {{ $route.query.id }}
  </div>
</template>

<script>
import queryProduct from "~/graphql/query/product.gql"
export default {
  layout: 'form_default',
  data() {
    return {
      product: []
    }
  },
  apollo: {
    product: {
      prefetch: true,
      query: queryProduct,
      valiables () {
        return {
          id: parseInt(this.$route.query.id)
        }
      }
    }
  }
}
</script>
