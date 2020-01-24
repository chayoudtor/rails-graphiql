<template>
  <table class="table">
    <tbody>
      <tr>
        <td>Name</td>
        <td><input ref="name" :value="queryData.name" class="form-control form-control-sm" type="text"></td>
      </tr>
      <tr>
        <td>Product</td>
        <td><input ref="product" :value="queryData.product" class="form-control form-control-sm" type="text"></td>
      </tr>
      <tr>
        <td>Amount</td>
        <td><input ref="amount" :value="queryData.amount" class="form-control form-control-sm" type="number"></td>
      </tr>
      <tr>
        <td colspan="2">
          <button @click="editForm" class="btn btn-sm btn-outline-dark">
            Edit Order
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
    async editForm () {
      const id = this.$route.query.id
      const name = this.$refs.name.value
      const product = this.$refs.product.value
      const amount = this.$refs.amount.value

      await this.$axios({
        method: 'POST',
        data: {
          query: `
                mutation {
                    updateOrder (
                        id: ${parseInt(id)}, name: "${name}", product: "${product}", amount: ${parseInt(amount)}
                    ){
                        id, name, amount
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
            console.error(error)
          }
        )
    }
  }
}
</script>
