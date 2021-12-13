<template>
    <!-- counting start  -->
    <section class="counting">
        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-md-6 col-sm-12">
                    <div class="counter">
                        <div class="counter-icon">
                            <a href="#"><i class="fa fa-globe"></i></a>
                        </div>
                        <span class="counter-value">200</span>
                        <h3>Our Complete Project</h3>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 col-sm-12">
                    <div class="counter">
                        <div class="counter-icon">
                            <a href="#"><i class="fa fa-user"></i></a>
                        </div>
                        <span class="counter-value">100</span>
                        <h3>Our Clients</h3>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 col-sm-12">
                    <div class="counter">
                        <div class="counter-icon">
                            <a href="#"><i class="fas fa-rocket"></i></a>
                        </div>
                        <span class="counter-value">8</span>
                        <h3>Our On Going Project</h3>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 col-sm-12">
                    <div class="counter">
                        <div class="counter-icon">
                            <a href="#"><i class="fas fa-tasks"></i></a>
                        </div>
                        <span class="counter-value">25</span>
                        <h3>Our Upcomming project</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- counting end  -->
</template>

<script>
import Counter from "../../../../assets/js/counter.js";
// import "../../../../assets/css/counter.css";

export default {
    mounted() {
        Counter();
    },
};
</script>

<style scoped>
@import "../../css/home_slider_bootstrap.css";
@import "../../css/home_slider_couter.css";
</style>
