<template>
    <!-- for all frontend view  -->
    <div v-if="frontendHome">
        <Header />
        <router-view></router-view>
        <!-- scroll to top button start  -->
        <Footer />
        <back-to-top></back-to-top>
        <!-- scroll to top button end  -->
        <!-- testimonial end  -->
        <FacebookChat />
    </div>
</template>
<script>
import Header from "./frontend/components/Header.vue";
import Footer from "./frontend/components/Footer.vue";
import BackToTop from "./frontend/components/BackToTop.vue";
// require("jquery");
import FacebookChat from "./frontend/components/FacebookChat.vue";
import "../assets/css/style.css";

export default {
    components: { Header, Footer, BackToTop, FacebookChat },
    computed: {
        frontendHome() {
            if (this.$router.currentRoute.value.meta?.frontend) {
                return true;
            } else {
                return false;
            }
        },
    },
    mounted() {},
};
</script>

<style>
body::-webkit-scrollbar {
    width: 10px;
    height: 5px !important;
}

/* Track */
body::-webkit-scrollbar-track {
    background: #f1f1f1;
}

/* Handle */
body::-webkit-scrollbar-thumb {
    background: #057571;
}

/* Handle on hover */
body::-webkit-scrollbar-thumb:hover {
    background: #057571;
}
</style>
