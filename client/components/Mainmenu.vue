<template>
    <div class="col-12">
        <BrandTable />
        <ProductTable />
    </div>
</template>

<script>
import BrandTable from "./BrandTable"
import ProductTable from "./ProductTable"

export default {
    components: {
        BrandTable,
        ProductTable
    }
}
</script>