<template>
  <table class="table table-sm">
    <tbody>
      <tr>
        <td>Name</td>
        <td><a>{{ queryData.name }}</a></td>
      </tr>
      <tr>
        <td>Descriptsion</td>
        <td><a>{{ queryData.description }}</a></td>
      </tr>
      <tr>
        <td>Amount</td>
        <td><a>{{ queryData.amount }}</a></td>
      </tr>
      <tr>
        <td colspan="2">
          <button @click="deleteForm" class="btn btn-sm btn-outline-dark">
            Delete product
          </button>
        </td>
      </tr>
    </tbody>
  </table>
</template>

<script>
export default {
  props: ['queryData'],
  methods: {
    async deleteForm () {
      const id = this.$route.query.id
      const conf = confirm('are youd sure to delete this item ?')

      if (conf) {
        await this.$axios({
          method: 'POST',
          data: {
            query: `
                    mutation {
                      deleteProduct (id: ${parseInt(id)}) {
                        id
                      }
                    }
                  `
          }
        })
          .then(
            window.location.href = '/products'
          )
          .catch(
            function (error) {
              console.error(error)
            }
          )
      }
    }
  }
}
</script>
