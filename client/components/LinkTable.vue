<template>
    <div class="col-12 p-3 mb-3">
        <table :class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Url</th>
                    <th>Description</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="list of links" :key="list.id">
                    <td>{{ list.id }}</td>
                    <td>{{ list.url }}</td>
                    <td>{{ list.description }}</td>
                    <td>
                        <button class="btn btn-white">Edit</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</template>

<script>
import LinksQuery from "~/apollo/all_link.gql"

export default {
    data: () => ({
        links: [],
        table: "table table-sm table-striped"
    }),
    apollo: {
        links: {
            prefetch: true,
            query: LinksQuery
        }
    }
}
</script>