<template>
  <table class="table">
    <tbody>
      <tr>
        <td>Url</td>
        <td><a>{{ queryData.url }}</a></td>
      </tr>
      <tr>
        <td>Description</td>
        <td><a>{{ queryData.description }}</a></td>
      </tr>
      <tr>
        <td colspan="2">
          <button @click="deleteForms" class="btn btn-sm btn-outline-dark">
            Delete order
          </button>
        </td>
      </tr>
    </tbody>
  </table>
</template>

<script>
export default {
  props: {
    queryData: {
      type: Array,
      default: Array
    }
  },
  methods: {
    async deleteForms () {
      const id = this.$route.query.id

      await this.$axios({
        method: 'POST',
        data: {
          query: `
                mutation {
                    deleteLink (id: ${parseInt(id)}) {
                        id
                    }
                }
                `
        }
      })
        .then(
          window.location.href = '/links'
        )
        .catch(
          function (error) {
            alert(error)
          }
        )
    }
  }
}
</script>
