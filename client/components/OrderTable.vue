<template>
    <div class="col-12 p-3 mb-3">
        <table :class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Order Name</th>
                    <th>Product Name</th>
                    <th>Amount</th>
                    <th>Last Update</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="list of orders" :key="list.id">
                    <td>{{ list.id }}</td>
                    <td>{{ list.name }}</td>
                    <td>{{ list.product }}</td>
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
import OrderTable from "~/apollo/all_order.gql"

export default {
    data: () => ({
        orders: [],
        table: "table table-sm table-striped"
    }),
    apollo: {
        orders: {
            prefetch: true,
            query: OrderTable
        }
    }
}
</script>