<template>
  <div>
    {{ $route.query.id }}
  </div>
</template>

<script>
import queryLink from "~/graphql/query/link.gql"
export default {
  layout: 'form_default',
  data() {
    return {
      link: []
    }
  },
  apollo: {
    link: {
      prefetch: true,
      query: queryLink,
      valiables () {
        return {
          id: parseInt(this.$route.query.id)
        }
      }
    }
  }
}
</script>
