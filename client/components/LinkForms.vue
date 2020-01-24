<template>
  <div class="container bg-light p-2 shadow">
    <h3>Link {{ $attrs.action }}</h3>

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
import Create from './LinkForms/Create'
import Edit from './LinkForms/Edit'
import Delete from './LinkForms/Delete'

export default {
  components: {
    Create,
    Delete,
    Edit
  },
  props: ['queryData']
}
</script>
