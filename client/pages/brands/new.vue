<template>
  <div>
    <BrandForms :action="action" />
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
      action: 'Create'
    }
  }
}
</script>
