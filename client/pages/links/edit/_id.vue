<template>
  <div>
    <LinkForms :action="action" />
  </div>
</template>

<script>
import queryLink from '~/graphql/query/link.gql'
import LinkForms from '~/components/LinkForms.vue'
export default {
  layout: 'form_default',
  components: {
    LinkForms
  },
  data () {
    return {
      link: [],
      action: 'Edit'
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
