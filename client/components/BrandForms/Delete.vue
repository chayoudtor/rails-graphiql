<template>
  <table class="table">
    <tbody>
      <tr>
        <td>Name</td>
        <td>
          <a>{{ queryData.name }}</a>
        </td>
      </tr>
      <tr>
        <td>Amount</td>
        <td>
          <a>{{ queryData.amount }}</a>
        </td>
      </tr>
      <tr>
        <td colspan="2">
          <button class="btn btn-outline-dark btn-sm" @click="deleteForm">Delete brand</button>
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
      const conf = confirm(`are you sure to remove this item ?`)

      if (conf) {
        await this.$axios({
          method: 'POST',
          data: {
            query: `
              mutation {
                deleteBrand (id: ${parseInt(id)}) {
                  id
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
}
</script>
