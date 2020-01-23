<template>
  <div>
    {{ $route.query.id }}
  </div>
</template>

<script>
import queryBrand from "~/graphql/query/brand.gql"
export default {
  layout: 'form_default',
  data() {
    return {
      brand: []
    }
  },
  apollo: {
    brand: {
      prefetch: true,
      query: queryBrand,
      valiables () {
        return {
          id: parseInt(this.$route.query.id)
        }
      }
    }
  }
}
</script>
