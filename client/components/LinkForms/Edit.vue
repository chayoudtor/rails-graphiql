<template>
  <table class="table">
    <tbody>
      <tr>
        <td>Url</td>
        <td><input ref="url" :value="queryData.url" class="form-control form-control-sm" type="text"></td>
      </tr>
      <tr>
        <td>Description</td>
        <td><textarea ref="description" :value="queryData.description" class="form-control" cols="30" rows="10" /></td>
      </tr>
      <tr>
        <td colspan="2">
          <button @click="editForms" class="btn btn-sm btn-outline-dark">
            Edit order
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
    async editForms () {
      const id = this.$route.query.id
      const url = this.$refs.url.value
      const description = this.$refs.description.value

      await this.$axios({
        method: 'POST',
        data: {
          query: `
                mutation {
                    updateLink (
                        id: ${parseInt(id)}, url: "${url}", description: "${description}"
                    ) {
                        id, url, description
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
