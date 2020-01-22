<template>
  <div>
    <ListTable :list-query="links" />
  </div>
</template>

<script>
import ListTable from '~/components/ListTable'
import queryLinks from '~/graphql/query/links.gql'

export default {
  layout: 'list_default',
  components: {
    ListTable
  },
  data: () => ({
    links: []
  }),
  apollo: {
    links: {
      prefetch: true,
      query: queryLinks
    }
  }
}
</script>
