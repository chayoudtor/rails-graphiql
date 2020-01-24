<template>
  <table class="table">
    <tbody>
      <tr>
        <td>Name</td>
        <td>
          <input ref="name" :value="queryData.name" class="form-control form-control-sm" type="text">
        </td>
      </tr>
      <tr>
        <td>Amount</td>
        <td>
          <input ref="amount" :value="queryData.amount" class="form-control form-control-sm" type="number">
        </td>
      </tr>
      <tr>
        <td colspan="2">
          <button class="btn btn-outline-dark btn-sm" @click="updateForm">Edit brand</button>
        </td>
      </tr>
    </tbody>
  </table>
</template>

<script>
export default {
  props: ['queryData'],
  methods: {
    async updateForm () {
      const id = this.$route.query.id
      const name = this.$refs.name.value
      const amount = this.$refs.amount.value

      await this.$axios({
        method: 'POST',
        data: {
          query: `
            mutation {
              updateBrand (id: ${parseInt(id)}, name: "${name}", amount: ${parseInt(amount)}) {
                id, name, amount
              }
            }
          `
        }
      })
        .then(
          window.location.href = '/brands'
        )
        .catch(
          function (error) {
            return alert(error)
          }
        )
    }
  }
}
</script>
