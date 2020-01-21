<template>
  <div class="container">
    <div class="row">
      <h1 class="col-12">Links</h1>
      <LinkTable />
    </div>
  </div>
</template>

<script>
import LinkTable from "~/components/LinkTable.vue"
export default {
  components: {
    LinkTable
  }
}
</script>