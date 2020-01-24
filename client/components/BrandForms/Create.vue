<template>
  <table class="table">
    <tbody>
      <tr>
        <td>Name</td>
        <td>
          <input id="name" v-model="name" class="form-control form-control-sm" type="text">
        </td>
      </tr>
      <tr>
        <td>Amount</td>
        <td>
          <input id="amount" v-model="amount" class="form-control form-control-sm" type="text">
        </td>
      </tr>
      <tr>
        <td colspan="2">
          <button class="btn btn-info btn-sm" @click="createForm">
            Create brand
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
      amount: null
    }
  },
  methods: {
    async createForm () {
      const { name, amount } = this.$data
      await this.$axios({
        method: 'POST',
        data: {
          query: `
                mutation {
                createBrand (
                    name: "${name}", amount: ${parseInt(amount)}
                ) {
                    name, amount
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
