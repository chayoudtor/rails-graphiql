<template>
  <div>
    <BrandForms :action="action" :queryData="brand" />
  </div>
</template>

<script>
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
  async mounted () {
    try {
      const result = await this.$axios({
        method: 'POST',
        data: {
          query: `
            query {
              brand (id: ${parseInt(this.$route.query.id)}) {
                id,
                name,
                amount
              }
            }
          `
        }
      })
      this.brand = result.data.data.brand
    } catch (e) {
      alert(e)
    }
  }

}
</script>
