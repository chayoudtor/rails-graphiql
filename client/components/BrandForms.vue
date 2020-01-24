<template>
  <div class="container bg-light p-2 shadow">
    <h3>Brand {{ $attrs.action }}</h3>
    <table>
      <tbody v-if="$attrs.action == 'Create'">
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
          <td>
            <button @click="formSubmit($attrs.action)" class="btn btn-sm btn-primary">
              {{ $attrs.action }}
            </button>
          </td>
        </tr>
      </tbody>

      <tbody v-if="$attrs.action == 'Edit'">
        <tr>
          <td>Name</td>
          <td>
            <input ref="name" :value="$props.queryData.name" class="form-control form-control-sm" type="text">
          </td>
        </tr>
        <tr>
          <td>Amount</td>
          <td>
            <input ref="amount" :value="$props.queryData.amount" class="form-control form-control-sm" type="number">
          </td>
        </tr>
        <tr>
          <td>
            <button @click="formSubmit($attrs.action)" class="btn btn-sm btn-primary">
              {{ $attrs.action }}
            </button>
          </td>
        </tr>
      </tbody>

      <tbody v-if="$attrs.action == 'Delete'">
        <tr>
          <td>Name</td>
          <td>
            <a>{{ $props.queryData.name }}</a>
          </td>
        </tr>
        <tr>
          <td>Amount</td>
          <td>
            <a>{{ $props.queryData.amount }}</a>
          </td>
        </tr>
        <tr>
          <td>
            <button @click="formSubmit($attrs.action)" class="btn btn-sm btn-primary">
              {{ $attrs.action }}
            </button>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
export default {

  props: ['queryData'],

  data () {
    return {
      name: null,
      amount: null
    }
  },

  methods: {
    formSubmit (action) {
      const { name, amount } = this.$data
      switch (action) {
        case 'Create':
          this.createForm(name, amount)
          break
        case 'Edit':
          this.updateForm()
          break
        case 'Delete':
          this.deleteForm()
          break
        default:
      }
    },
    async createForm (name, amount) {
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
    },
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
    },
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
