<template>
  <table class="table table-sm">
    <tbody>
      <tr>
        <td>Name</td>
        <td><input v-model="name" class="form-control form-control-sm" type="text" name=""></td>
      </tr>
      <tr>
        <td>Descriptsion</td>
        <td><input v-model="description" class="form-control form-control-sm" type="text" name=""></td>
      </tr>
      <tr>
        <td>Amount</td>
        <td><input v-model="amount" class="form-control form-control-sm" type="number" name=""></td>
      </tr>
      <tr>
        <td colspan="2">
          <button @click="createForm" class="btn btn-sm btn-primary">
            Create product
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
      description: null,
      amount: null
    }
  },
  methods: {
    async createForm () {
      const { name, description, amount } = this.$data
      await this.$axios({
        method: 'POST',
        data: {
          query: `
                    mutation {
                        createProduct (
                            name: "${name}", description: "${description}", amount: ${parseInt(amount)}
                        ) {
                            name, description, amount
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
            alert(error)
          }
        )
    }
  }
}
</script>
