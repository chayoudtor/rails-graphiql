<template>
  <div>
    <LinkForms :action="action" :queryData="link" />
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
      link: [],
      action: 'Delete'
    }
  },
  async mounted () {
    try {
      const result = await this.$axios({
        method: 'POST',
        data: {
          query: `
            query {
              link(id: ${this.$route.query.id}) {
                id,
                url,
                description
              }
            }
          `
        }
      })

      this.link = result.data.data.link
    } catch (error) {
      console.error(error)
    }
  }
}
</script>
