<template>
  <div>
    <ProductForms :action="action" :queryData="product" />
  </div>
</template>

<script>
import ProductForms from '~/components/ProductForms.vue'

export default {
  layout: 'form_default',
  components: {
    ProductForms
  },
  data () {
    return {
      product: [],
      action: 'Edit'
    }
  },
  async mounted () {
    try {
      const result = await this.$axios({
        method: 'POST',
        data: {
          query: `
                  query {
                    product(id: ${parseInt(this.$route.query.id)}){
                      id,
                      name,
                      description,
                      amount
                    }
                  }
                `
        }
      })
      this.product = result.data.data.product
    } catch (error) {
      console.error(error)
    }
  }
}
</script>
