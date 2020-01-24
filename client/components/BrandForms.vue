<template>
  <div class="container bg-light p-2 shadow">
    <h3>Brand {{ $attrs.action }}</h3>

    <!-- Create -->
    <div v-if="$attrs.action == 'Create'">
      <Create />
    </div>

    <!-- Edit -->
    <div v-if="$attrs.action == 'Edit'">
      <Edit :queryData="queryData" />
    </div>

    <!-- Delte -->
    <div v-if="$attrs.action == 'Delete'">
      <Delete :queryData="queryData" />
    </div>
  </div>
</template>

<script>
import Create from './BrandForms/Create'
import Edit from './BrandForms/Edit'
import Delete from './BrandForms/Delete'

export default {
  components: {
    Create,
    Edit,
    Delete
  },
  props: ['queryData']
}
</script>
