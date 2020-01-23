<template>
  <div>
    <LinkForms :action="action" />
  </div>
</template>

<script>
import LinkForms from '~/components/LinkForms.vue'
export default {
  layout: 'form_default',
  components: {
    LinkForms
  },
  data () {
    return {
      action: 'Create'
    }
  }
}
</script>
