<template>
    <section style="margin-top: 4rem; padding-top: 2rem">
        <div class="container">
            <div class="row pt-5">
                <div class="col-md-6">
                    <div class="border-about">
                        <a
                            href="https://www.youtube.com/channel/UCE-hWF_rQmWn64BMxId8khA"
                            target="_blank"
                        >
                            <img
                                src="../../../assets/images/about_company/about_img.png"
                                style="width: 100%; height: 100%"
                                alt=""
                            />
                        </a>
                    </div>
                </div>
                <div class="col-md-6 mt-5">
                    <!-- data-aos="fade-right" -->
                    <div class="div">
                        <h2 class="global-title">
                            <span class="rounded">ABOUT COMPANY</span>
                        </h2>
                    </div>
                    <!-- data-aos="fade-left" -->
                    <div>
                        <h3 style="text-align: left; color: #455a69">
                            Mission is to bring the power of AI to every
                            business
                        </h3>
                    </div>
                    <!-- data-aos="fade-right" -->
                    <div>
                        <p style="color: #215670; text-align: justify">
                            Since our founding in 2021, we grew to understand
                            the importance of time values, culture, design and
                            development. We’re not simply a team of high-tech
                            professionals. We’re resourceful problem solvers and
                            prolific intrapreneurs. We’re a team of more than 30
                            relentlessly curious project managers, business
                            analysts, software engineers, who love their job
                            every bit as much as you. We make the most of our
                            capabilities by bringing strong project leadership,
                            the latest technical best practices and forthright
                            advice to every project we take on. We like solving
                            difficult problems and creating high-performance
                            software that’s easy to use. We design, we build, we
                            support, we ask the right questions. We believe in
                            efficient communication and thoughtful project
                            management throughout the whole work process. Each
                            day, we continue building long-lasting partnerships
                            with our clients all across the world without ever
                            losing the drive to strive for excellence and
                            innovation.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- about company first section end -->

    <!-- about company  our history section start -->
    <section class="history">
        <div class="container history_bg">
            <div class="row">
                <div class="col-lg-3 history_title">
                    <div>
                        <h3 style="color: #215670">OUR HISTORY</h3>
                    </div>
                    <div>
                        <h3 style="padding-bottom: 100px; color: #455a69">
                            History begins in 2019 with the foundation
                        </h3>
                    </div>

                    <div class="year19">
                        <span class="title-color">2019</span>
                    </div>
                    <div class="year19_title">
                        <h5 class="title-color">Founded</h5>
                        <p>
                            Take trivial example which idea of ever undertakes.
                        </p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="year20_title">
                        <h5 class="title-color">Fresh Ideas</h5>
                        <p>
                            Best every pleasure is welcomed every pain avoided.
                        </p>
                    </div>
                    <div class="year20 mt-5">
                        <span class="title-color">2020</span>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="year21">
                        <span class="title-color">2021</span>
                    </div>
                    <div class="year21_title">
                        <h5 class="title-color">Service Award</h5>
                        <p>Have to repudiated annoyances accepted the wise.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="year22">
                        <span class="title-color">2022</span>
                    </div>

                    <div class="year22_title">
                        <h5 class="title-color">Milestone</h5>
                        <p>
                            Take trivial example which idea of ever undertakes.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- about company our history section end -->
</template>

<script>
export default {
    mounted() {
        document.title = "ABOUT | Excel IT AI";
        window.scrollTo({ top: 0, behavior: "instant" });
    },
};
</script>

<style scoped>
@import "../css/about_page.css";
.border-about {
    border: 10px solid #92e3a9;
    padding: 1rem;
    border-radius: 10px;
}
.title-color {
    color: #215670;
}
</style>
