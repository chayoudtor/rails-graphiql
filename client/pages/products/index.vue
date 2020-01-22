<template>
  <div>
    <ListTable :list-query="products" />
  </div>
</template>

<script>
import ListTable from '~/components/ListTable'
import queryProduct from '~/graphql/query/products.gql'

export default {
  layout: 'list_default',
  components: {
    ListTable
  },
  data: () => ({
    products: []
  }),
  apollo: {
    products: {
      prefetch: true,
      query: queryProduct
    }
  }
}
</script>
