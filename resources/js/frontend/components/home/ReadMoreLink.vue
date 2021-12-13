<template>
    <router-link
        @click.prevent="PushRoute"
        :to="{ name: link }"
        class="global-button-sm mb-5"
    >
        Read More
    </router-link>
</template>

<script>
export default {
    props: ["link"],

    methods: {
        PushRoute() {
            console.log("this is running");
            this.$router.push({ name: this.link });
        },
    },
};
</script>
