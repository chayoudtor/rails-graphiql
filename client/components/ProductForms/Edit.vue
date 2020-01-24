<template>
  <table class="table table-sm">
    <tbody>
      <tr>
        <td>Name</td>
        <td><input ref="name" :value="queryData.name" class="form-control form-control-sm" type="text"></td>
      </tr>
      <tr>
        <td>Descriptsion</td>
        <td><input ref="description" :value="queryData.description" class="form-control form-control-sm" type="text"></td>
      </tr>
      <tr>
        <td>Amount</td>
        <td><input ref="amount" :value="queryData.amount" class="form-control form-control-sm" type="number"></td>
      </tr>
      <tr>
        <td colspan="2">
          <button @click="editFrom" class="btn btn-sm btn-outline-dark">
            Edit product
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
    async editFrom () {
      const id = this.$route.query.id
      const name = this.$refs.name.value
      const description = this.$refs.description.value
      const amount = this.$refs.amount.value

      await this.$axios({
        method: 'POST',
        data: {
          query: `
                  mutation {
                    updateProduct (
                      id: ${parseInt(id)}, name: "${name}", description: "${description}", amount: ${parseInt(amount)}
                    ) {
                      id, name, amount
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
</script>
