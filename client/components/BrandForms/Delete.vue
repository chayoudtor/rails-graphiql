<template>
  <table class="table table-sm">
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
          <button @click="deleteForm" class="btn btn-outline-dark btn-sm">
            Delete brand
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
