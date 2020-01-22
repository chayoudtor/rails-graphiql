<template>
  <div>
    <ListTable :list-query="orders" />
  </div>
</template>

<script>
import ListTable from '~/components/ListTable'
import queryOrders from '~/graphql/query/orders.gql'

export default {
  layout: 'list_default',
  components: {
    ListTable
  },
  data: () => ({
    orders: []
  }),
  apollo: {
    orders: {
      prefetch: true,
      query: queryOrders
    }
  }
}
</script>
