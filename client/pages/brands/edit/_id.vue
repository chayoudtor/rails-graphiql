<template>
  <div>
    <BrandForms :action="action" />
  </div>
</template>

<script>
import queryBrand from '~/graphql/query/brand.gql'
import BrandForms from '~/components/BrandForms.vue'
export default {
  layout: 'form_default',
  components: {
    BrandForms
  },
  data () {
    return {
      brand: [],
      action: 'Edit'
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
