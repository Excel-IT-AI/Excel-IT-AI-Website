<template>
    <ul style="color: white" class="breadcumpul">
        <li>
            <router-link :to="{ name: 'Fintech' }">Fintech</router-link>
        </li>
        <hr />
        <li>
            <router-link :to="{ name: 'Health' }"
                >Healthcare & Medicine</router-link
            >
        </li>
        <hr />
        <li>
            <router-link :to="{ name: 'Ecommerce' }">Ecommerce</router-link>
        </li>
        <hr />
        <li>
            <router-link :to="{ name: 'Education' }">Education</router-link>
        </li>
        <hr />
        <li>
            <router-link :to="{ name: 'RealEstate' }">Real Estate</router-link>
        </li>
        <hr />
        <li>
            <router-link :to="{ name: 'RetailSoftware' }"
                >Retail Software</router-link
            >
        </li>
        <hr />
    </ul>
</template>

<script>
export default {};
</script>

<style scoped>
li:hover {
    color: #fff;
}

h1 {
    color: rgb(0, 255, 191);
}
h4,
li h5 {
    color: rgb(20, 167, 130);
}
p,
a {
    color: #fff;
}

.ul_tag_style li a,
.breadcumpul li a {
    text-decoration: none !important;
    color: rgb(17, 226, 174) !important;
}
.ul_tag_style li a:hover,
.breadcumpul li a:hover {
    color: #fff !important;
    text-decoration: none !important;
}
</style>
