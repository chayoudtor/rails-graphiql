<template>
    <nav :class="nav">
        <span>
            <nuxt-link :class="btn" to="/">Home</nuxt-link>
            <nuxt-link :class="btn" to="/links">Site Link</nuxt-link>
            <nuxt-link :class="btn" to="/brands">Brand</nuxt-link>
            <nuxt-link :class="btn" to="/products">Product</nuxt-link>
        </span>
        <form :class="form" action="" method="post">
            <input type="search" placeholder="Search" :class="search">
        </form>
    </nav>
</template>

<script>
export default {
    data: () => ({
        nav: "navbar navbar-light bg-light shadow-sm d-flex align-items-center mb-2",
        btn: "btn btn-light btn-sm",
        form: "form-inline",
        search: "form-control form-control-sm"
    })
}
</script>