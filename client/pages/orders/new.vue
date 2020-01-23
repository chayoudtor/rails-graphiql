<template>
  <div>
    <OrderForms :action="action" />
  </div>
</template>

<script>
import OrderForms from '~/components/OrderForms.vue'
export default {
  layout: 'form_default',
  components: {
    OrderForms
  },
  data () {
    return {
      action: 'Create'
    }
  }
}
</script>
