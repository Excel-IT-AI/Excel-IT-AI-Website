<template>
    <li class="nav-item" @click.prevent="hideNav" v-if="!dropdown && !submenu">
        <router-link class="nav-link" :to="{ name: link }">{{
            content
        }}</router-link>
    </li>

    <!-- start submenu  -->
    <li v-else-if="submenu" @click.prevent="hideNav">
        <router-link class="submenu-item" :to="{ name: link }">{{
            content
        }}</router-link>
    </li>
    <!-- end of submenu  -->
    <li v-else @click.prevent="hideNav">
        <router-link class="dropdown-item" :to="{ name: link }">{{
            content
        }}</router-link>
    </li>
</template>

<script>
export default {
    props: {
        link: {
            type: String,
            required: true,
        },
        content: {
            type: String,
            required: true,
        },
        dropdown: {
            type: Boolean,
            default: false,
        },
        submenu: {
            type: Boolean,
            default: false,
        },
    },
    methods: {
        hideNav() {
            this.$emit("hideNav");
        },
    },
};
</script>
