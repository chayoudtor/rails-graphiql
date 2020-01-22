<template>
  <div>
    <h4 class="mb-3">
      {{ $route.name.charAt(0).toUpperCase() + $route.name.slice(1) }} Lists
    </h4>
    <table class="table table-sm table-default mb-2 mt-2">
      <tbody>
        <tr v-for="lists in listQuery" :key="listQuery.indexOf(lists)">
          <td v-for="value in Object.keys(lists).filter(filterColumn)" :key="Object.keys(lists).indexOf(value)">
            {{ lists[value] }}
          </td>
          <td>
            <button @click="editItem(lists.id, $route.name)" :class="btn">
              Edit
            </button>
          </td>
          <td>
            <button @click="delItem(lists.id, $route.name)" :class="btn">
              Delete
            </button>
          </td>
        </tr>
      </tbody>
    </table>

    <div>
      <button :class="btn_create">
        Create {{ $route.name.charAt(0).toUpperCase() + $route.name.slice(1) }}
      </button>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    listQuery: {
      type: Object,
      default: Object
    }
  },
  data: () => ({
    btn: 'btn btn-block btn-light',
    btn_create: 'btn btn-primary'
  }),
  methods: {
    filterColumn: (el) => {
      return el !== '__typename'
    },
    editItem: (id, name) => {
      window.location.href = '/' + name + '/id=' + id + '/edit'
    },
    delItem: (id, name) => {
      window.location.href = '/' + name + '/id=' + id + '/del'
    }
  }
}
</script>
