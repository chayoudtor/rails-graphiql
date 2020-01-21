<template>
    <div class="col-12 p-3 mb-3 shadow-sm rounded">
        <table :class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Brand Name</th>
                    <th>Amount</th>
                    <th>Last Update</th>
                    <th>Create At</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="list of brands" :key="list.id">
                    <td>{{ list.id }}</td>
                    <td>{{ list.name }}</td>
                    <td>{{ list.amount }}</td>
                    <td>{{ list.updatedAt }}</td>
                    <td>{{ list.createdAt }}</td>
                    <td>
                        <button class="btn btn-white">Edit</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</template>

<script>
import BrandsQuery from "~/apollo/all_brand.gql"

export default {
    data: () => ({
        brands: [],
        table: "table table-striped"
    }),
    apollo: {
        brands: {
            prefetch: true,
            query: BrandsQuery
        }
    }
}
</script>