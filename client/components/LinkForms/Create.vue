<template>
  <table class="table">
    <tbody>
      <tr>
        <td>Url</td>
        <td><input v-model="url" class="form-control form-control-sm" type="text"></td>
      </tr>
      <tr>
        <td>Description</td>
        <td><textarea v-model="description" class="form-control" cols="30" rows="10" /></td>
      </tr>
      <tr>
        <td colspan="2">
          <button @click="createForm" class="btn btn-sm btn-primary">
            Create order
          </button>
        </td>
      </tr>
    </tbody>
  </table>
</template>

<script>
export default {
  data () {
    return {
      url: null,
      description: null
    }
  },
  methods: {
    async createForm () {
      const { url, description } = this.$data

      await this.$axios({
        method: 'POST',
        data: {
          query: `
                    mutation {
                        createLink (
                            url: "${url}", description: "${description}"
                        ) {
                            url, description
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
