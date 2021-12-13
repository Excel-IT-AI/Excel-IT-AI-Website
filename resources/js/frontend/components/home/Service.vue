<template>
    <div class="service-section py-5" style="background-color: #fff">
        <div class="container" style="padding: 20px 0 20px 0">
            <div class="row">
                <h2 style="text-align: center" class="global-title">
                    <span class="rounded">Our Services</span>
                </h2>
            </div>
        </div>

        <!-- service card section start -->
        <div class="container">
            <div class="wrapper wrapper-services">
                <div class="box_1">
                    <div class="front-face">
                        <div class="icon" style="margin-top: 20px">
                            <span style="font-size: 4rem">
                                <i class="fa fa-code"> </i
                            ></span>
                        </div>
                        <span style="font-size: 1rem; margin-bottom: 30px"
                            >Web Application Development</span
                        >
                    </div>

                    <div class="back-face">
                        <h3>Web Application Dvelopment</h3>
                        <p>
                            Web components are core parts of full stack mobile
                            products. Our internal team can help you build
                        </p>
                        <ReadMoreLink link="WebApplication"></ReadMoreLink>
                    </div>
                </div>
                <div class="box_1">
                    <div class="front-face">
                        <div class="icon" style="margin-top: 20px">
                            <span style="font-size: 4rem">
                                <i class="fa fa-mobile"></i
                            ></span>
                        </div>
                        <span
                            style="
                                font-color: white;
                                text-align: center;
                                font-size: 1rem;
                                margin-bottom: 30px;
                            "
                            >Mobile Application Dvelopment
                        </span>
                    </div>
                    <div class="back-face">
                        <h3>Mobile Application Dvelopment</h3>
                        <p>
                            Our mobile application development solutions include
                            various domains and topics.
                        </p>
                        <ReadMoreLink link="MobileApplication"></ReadMoreLink>
                    </div>
                </div>
                <div class="box_1">
                    <div class="front-face">
                        <div class="icon" style="margin-top: 20px">
                            <span style="font-size: 4rem">
                                <i class="fa fa-drafting-compass"></i
                            ></span>
                        </div>
                        <span
                            style="
                                text-align: center;
                                font-size: 1rem;
                                margin-bottom: 30px;
                            "
                            >UI/UX Design</span
                        >
                    </div>
                    <div class="back-face">
                        <h3>UI/UX Design</h3>
                        <p>
                            UI/UX design services include two critical aspects:
                            user interface and user experience.
                        </p>
                        <ReadMoreLink link="UiUxDesign"></ReadMoreLink>
                    </div>
                </div>
                <div class="box_1">
                    <div class="front-face">
                        <div class="icon" style="margin-top: 20px">
                            <span style="font-size: 4rem">
                                <i class="fa fa-code"> </i
                            ></span>
                        </div>
                        <span
                            style="
                                text-align: center;
                                font-size: 1rem;
                                margin-bottom: 30px;
                            "
                            >Custom Software Development</span
                        >
                    </div>
                    <div class="back-face">
                        <h3>Custom Software Development</h3>

                        <p>
                            Any customized software solution is all about unique
                            products and services.
                        </p>
                        <ReadMoreLink link="CustomSoftware"></ReadMoreLink>
                    </div>
                </div>
                <div class="box_1">
                    <div class="front-face">
                        <div class="icon" style="margin-top: 20px">
                            <span style="font-size: 4rem">
                                <i class="fa fa-bullhorn"></i
                            ></span>
                        </div>
                        <span
                            style="
                                text-align: center;
                                font-size: 1rem;
                                margin-bottom: 30px;
                            "
                            >Digital Marketing</span
                        >
                    </div>
                    <div class="back-face">
                        <h3>Digital Marketing</h3>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing
                            elit.
                        </p>
                        <ReadMoreLink link="DigitalMarketing"></ReadMoreLink>
                    </div>
                </div>
                <div class="box_1">
                    <div class="front-face">
                        <div class="icon" style="margin-top: 20px">
                            <span style="font-size: 4rem">
                                <i class="fa fa-cogs"></i
                            ></span>
                        </div>
                        <span
                            style="
                                text-align: center;
                                font-size: 1rem;
                                margin-bottom: 30px;
                            "
                            >Blockchain Development</span
                        >
                    </div>
                    <div class="back-face">
                        <h3>Blockchain Development</h3>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing
                            elit.
                        </p>
                        <ReadMoreLink link="Home"></ReadMoreLink>
                    </div>
                </div>
            </div>
            <!-- wrapper end -->
        </div>
        <!-- service card section end -->
    </div>
</template>

<script>
// import
import ReadMoreLink from "./ReadMoreLink.vue";
export default {
    components: { ReadMoreLink },
};
</script>

<style scoped>
@import "../../css/home_service.css";
</style>
