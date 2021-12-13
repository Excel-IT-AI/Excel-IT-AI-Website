<template>
    <section class="contact-wrapper">
        <h2
            class="global-title text-center"
            style="margin-top: 4rem !important; padding-top: 4rem"
        >
            <span class="rounded">Company Organogram</span>
        </h2>
        <div class="image-section">
            <img :src="organogram.image" />
        </div>
    </section>
</template>

<script>
import OrganogramApi from "../api/OrganogramApi";
export default {
    data() {
        return {
            organogram: {},
        };
    },
    methods: {
        getOrganogram() {
            OrganogramApi.getOrganogram()
                .then(({ data: { organogram } }) => {
                    this.organogram = organogram;
                })
                .catch((error) => {
                    console.log("some error occured Please Try Again!");
                });
        },
    },
    mounted() {
        this.getOrganogram();
        document.title = "Organogram | Excel IT AI";
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
    width: 100%;
    height: auto;
}

.contact-wrapper::before {
    position: absolute;
    content: "";
    top: 0;
    right: 0;
    left: 0;
    bottom: 0;
    /* background: linear-gradient(
        to right,
        rgba(199, 190, 190, 0.4),
        rgba(190, 196, 202, 0.3)
    ); */
}
.image-section img {
    width: 90%;
    /* max-width: 1200px; */
    margin: 0 0 0 6rem;
    height: 90vh;
}

@media screen and (max-width: 1100px) {
    .image-section img {
        width: 90%;
        /* margin: 0 1rem; */
        margin: 0 0 0 1rem;
        height: 500px;
        object-fit: contain;
    }
}
@media screen and (max-width: 700px) {
    .image-section img {
        width: 90%;
        /* margin: 0 1rem; */
        margin: 0 0 0 1rem;
        height: 500px;
        object-fit: contain;
    }
}
</style>
