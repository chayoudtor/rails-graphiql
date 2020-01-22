<template>
  <div>
    <ListTable :list-query="brands" />
  </div>
</template>

<script>
import ListTable from '~/components/ListTable'
import queryBrands from '~/graphql/query/brands.gql'

export default {
  layout: 'list_default',
  components: {
    ListTable
  },
  data: () => ({
    brands: []
  }),
  apollo: {
    brands: {
      prefetch: true,
      query: queryBrands
    }
  }
}
</script>
