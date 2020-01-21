<template>
    <div class="col-12">
        <h2>Brands</h2>
        <BrandTable />
        <h2>Products</h2>
        <ProductTable />
        <h2>Orders</h2>
        <OrderTable />
        <h2>Links</h2>
        <LinkTable />
    </div>
</template>

<script>
import LinkTable    from "./LinkTable"
import OrderTable   from "./OrderTable"
import BrandTable   from "./BrandTable"
import ProductTable from "./ProductTable"

export default {
    components: {
        LinkTable,
        BrandTable,
        OrderTable,
        ProductTable
    }
}
</script>