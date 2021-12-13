<template>
    <div class="course-header mt-5">
        <!-- <h2 class="mt-5 pt-5">Laravel Course</h2> -->
    </div>
    <section
        class="accordion-section clearfix py-5"
        aria-label="Question Accordions"
    >
        <h2 class="text-center">UI/UX Design Course comming soon!</h2>
    </section>
</template>
<script>
export default {
    mounted() {
        document.title = "UX/UI DESIGN COURSE | Excel IT AI";
        window.scrollTo({ top: 0, behavior: "smooth" });
    },
};
</script>

<style scoped>
.course-header {
    background: url("../../../../assets/images/course_bg/ux_ui_bg.jpg");
    height: 700px;
    position: relative;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    background-position: center;
    width: 100%;
    padding-top: 5rem;
}
.course-header h2 {
    width: 100% !important;
    /* height: 80px; */
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 5rem !important;
    color: #fff;
    position: relative;
    z-index: 1000;
    /* background: #215670 !important;
    /* border-radius: 25px / 17px; */
    /* border-radius: 50px / 50px !important; */
}
@media screen and (max-width: 700px) {
    .course-header h2 {
        margin-left: 4rem;
    }
}
.course-header::before {
    position: absolute;
    content: "";
    top: 0;
    right: 0;
    left: 0;
    bottom: 0;
    background: linear-gradient(
        to right,
        rgba(0, 0, 0, 0.2),
        rgba(21, 37, 53, 0.2)
    );
}

.course-header img {
    width: 200px;
    height: 200px;
    z-index: 10000;
    object-fit: contain;
    /* background: #fff; */
    /* box-shadow: 0 4px 6px -1px #3f92d6, 0 2px 4px -1px #3f92d6;
    border-radius: 50%; */
}
</style>
