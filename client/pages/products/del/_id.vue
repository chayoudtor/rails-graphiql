<template>
  <div>
    <ProductForms :action="action" />
  </div>
</template>

<script>
import ProductForms from '~/components/ProductForms.vue'
import queryProduct from '~/graphql/query/product.gql'
export default {
  layout: 'form_default',
  components: {
    ProductForms
  },
  data () {
    return {
      product: [],
      action: 'Delete'
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
