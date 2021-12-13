<template>
    <section
        class="contact-wrapper"
        style="display: flex; justify-content: center; align-items: center"
    >
        <h2
            style="
                margin-top: 4rem !important;
                padding-top: 4rem;
                font-size: 5rem;
            "
        >
            <span class="rounded">Not Found Page</span>
        </h2>
    </section>
</template>

<script>
export default {
    mounted() {
        document.title = "Page Not Found | Excel IT AI";
        window.scrollTo({ top: 0, behavior: "instant" });
    },
};
</script>

<style scoped>
.contact-wrapper {
    /* background: url("../../../assets/images/contact.jpg");
    position: relative;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    background-position: center;
    width: 100%;
    padding-top: 5rem; */
}

.contact-wrapper::before {
    position: absolute;
    content: "";
    top: 0;
    right: 0;
    left: 0;
    bottom: 0;
    background: linear-gradient(
        to right,
        rgba(199, 190, 190, 0.4),
        rgba(190, 196, 202, 0.3)
    );
}
</style>
