<template>
  <table class="table">
    <tbody>
      <tr>
        <td>Name</td>
        <td><input v-model="name" class="form-control form-control-sm" type="text"></td>
      </tr>
      <tr>
        <td>Product</td>
        <td><input v-model="product" class="form-control form-control-sm" type="text"></td>
      </tr>
      <tr>
        <td>Amount</td>
        <td><input v-model="amount" class="form-control form-control-sm" type="number"></td>
      </tr>
      <tr>
        <td colspan="2">
          <button @click="createForm" class="btn btn-sm btn-primary">
            Create Order
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
      name: null,
      product: null,
      amount: null
    }
  },
  methods: {
    async createForm () {
      const { name, product, amount } = this.$data

      await this.$axios({
        method: 'POST',
        data: {
          query: `
                                mutation {
                                createOrder (
                                    name: "${name}", product: "${product}", amount: ${parseInt(amount)}
                                ) {
                                    name, product, amount
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
