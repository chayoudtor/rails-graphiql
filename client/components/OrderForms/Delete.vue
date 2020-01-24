<template>
  <table class="table">
    <tbody>
      <tr>
        <td>Name</td>
        <td><a>{{ queryData.name }}</a></td>
      </tr>
      <tr>
        <td>Product</td>
        <td><a>{{ queryData.product }}</a></td>
      </tr>
      <tr>
        <td>Amount</td>
        <td><a>{{ queryData.amount }}</a></td>
      </tr>
      <tr>
        <td colspan="2">
          <button @click="deleteForm" class="btn btn-sm btn-outline-dark">
            Delete Order
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
    async deleteForm () {
      const id = this.$route.query.id

      await this.$axios({
        method: 'POST',
        data: {
          query: `
                mutation {
                    deleteOrder (id: ${parseInt(id)}){
                        id
                    }
                }
            `
        }
      })
        .then(
          window.location.href = '/orders'
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
