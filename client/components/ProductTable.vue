<template>
    <div class="col-12 p-3 mb-3 shadow-sm rounded">
        <table :class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Product Name</th>
                    <th>Details</th>
                    <th>Amount</th>
                    <th>Last Update</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="list of products" :key="list.id">
                    <td>{{ list.id }}</td>
                    <td>{{ list.name }}</td>
                    <td>{{ list.description }}</td>
                    <td>{{ list.amount }}</td>
                    <td>{{ list.updatedAt }}</td>
                    <th>
                        <button class="btn btn-white">Edit</button>
                    </th>
                </tr>
            </tbody>
        </table>
    </div>
</template>

<script>
import ProductsQuery from "~/apollo/all_product.gql"

export default {
    data: () => ({
        products: [],
        table: "table table-striped"
    }),
    apollo: {
        products: {
            prefetch: true,
            query: ProductsQuery
        }
    }
}
</script>