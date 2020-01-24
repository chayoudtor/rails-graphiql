<template>
  <div class="container bg-light p-2 shadow">
    <h3>Product {{ $attrs.action }}</h3>

    <!-- Create -->
    <div v-if="$attrs.action == 'Create'">
      <Create />
    </div>

    <!-- Edit -->
    <div v-if="$attrs.action == 'Edit'">
      <Edit :queryData="queryData" />
    </div>

    <!-- Delete -->
    <div v-if="$attrs.action == 'Delete'">
      <Delete :queryData="queryData" />
    </div>
  </div>
</template>

<script>
import Create from './ProductForms/Create'
import Edit from './ProductForms/Edit'
import Delete from './ProductForms/Delete'

export default {
  components: {
    Create,
    Edit,
    Delete
  },
  props: {
    queryData: {
      type: Array,
      default: Array
    }
  }
}
</script>
