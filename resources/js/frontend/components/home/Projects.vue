<template>
    <!-- Our Project section start -->
    <div class="project-section py-5">
        <div class="container">
            <div class="row my-3 py-3">
                <h1 class="text-center global-title">
                    <span class="rounded">Our Project</span>
                </h1>
            </div>
            <div class="row">
                <div class="col-12 col-md-4 my-4 my-md-0">
                    <h3
                        style="color: #215670 !important"
                        class="text-primary heder-font my-3 my-md-4 text-center"
                    >
                        Completed Projects
                    </h3>
                    <div class="list-group my-2">
                        <project-accordian title="Cloud5Bd">
                            <a href="https://cloud5bd.com/"> Cloud5Bd</a>
                        </project-accordian>
                        <project-accordian title="shopahs">
                            <a href="https://cloud5bd.com/"> shopahs</a>
                        </project-accordian>

                        <project-accordian title="Royal Dutch Medical Hospital">
                            <a href="https://royaldutchmc.com/"
                                >Royal Dutch Medical Hospital
                            </a>
                        </project-accordian>
                        <project-accordian title="Shahid Mahmum">
                            <strong>
                                <a href="#">Shahid Mahmum </a>
                            </strong>
                        </project-accordian>

                        <br />
                    </div>
                    <router-link
                        :to="{ name: 'Home' }"
                        class="global-button-sm mb-5"
                    >
                        Read More
                    </router-link>
                </div>

                <div class="col-12 col-md-4 my-4 my-md-0">
                    <h3
                        style="color: #215670 !important"
                        class="text-info heder-font my-3 my-md-4 text-center"
                    >
                        Ongoing Projects
                    </h3>
                    <div class="list-group">
                        <project-accordian
                            title="Distribution Management System"
                        >
                            <a href="http://marcospizza.us/">marcospizza </a>
                        </project-accordian>
                        <project-accordian title="Paramount Fitness">
                            <a href="http://paramount-fitness.com"
                                >Paramount Fitness
                            </a>
                        </project-accordian>
                        <project-accordian title="Grow with funnels ">
                            <a href="http://growwithfunnels.com">
                                Grow with funnels</a
                            >
                        </project-accordian>

                        <project-accordian title="Destiny unchained ">
                            <a href="http://destinyunchained.com/"
                                >Destiny unchained
                            </a>
                        </project-accordian>
                    </div>
                    <br />
                    <router-link
                        :to="{ name: 'Home' }"
                        class="global-button-sm mb-5"
                    >
                        Read More
                    </router-link>
                </div>

                <div class="col-12 col-md-4 my-4 my-md-0">
                    <h3
                        style="color: #215670 !important"
                        class="text-success heder-font my-3 my-md-4 text-center"
                    >
                        Upcoming Projects
                    </h3>
                    <div class="list-group">
                        <project-accordian title="Oki tonic">
                            <a href="http://okitonic.com"> Oki tonic</a>
                        </project-accordian>
                        <project-accordian title="hidden dog training hacks ">
                            <strong
                                ><a href="http://hiddendogtraininghacks.com/"
                                    >hidden dog training hacks
                                </a>
                            </strong>
                        </project-accordian>
                        <project-accordian title="The Breedersspot ">
                            <strong>
                                <a href="http://thebreedersspot.com/"
                                    >The Breedersspot
                                </a>
                            </strong>
                        </project-accordian>
                        <project-accordian title="getaway dash">
                            <a href="http://getawaydash.com/"> getaway dash</a>
                        </project-accordian>
                        <project-accordian title="point er reale state">
                            <a href="http://pointerrealestate.com/"
                                >point er reale state
                            </a>
                        </project-accordian>
                    </div>
                    <br />
                    <router-link
                        :to="{ name: 'Home' }"
                        class="global-button-sm mb-5"
                    >
                        Read More
                    </router-link>
                </div>
            </div>
        </div>
    </div>
    <!-- Our project end -->
</template>

<script>
import ProjectAccordian from "./ProjectAccordian.vue";
export default {
    components: { ProjectAccordian },

    mounted() {
        // BootstrapBundle();
        // require("../../../../assets/js/bootstrap.bundle.min.js");
    },
};
</script>

<style scoped>
.project-section {
    background: #d1d8e0 !important;
}

@import "../../css/home_slider_our_project.css";

@media screen and (max-width: 700px) {
    .global-button-sm {
        margin-left: 30%;
    }
}
</style>
