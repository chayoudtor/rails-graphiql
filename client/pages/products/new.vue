<template>
  <div>
    <ProductForms :action="action" />
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
      action: 'Create'
    }
  }
}
</script>
