<template>
    <!-- industries top title section start -->
    <section class="ecommarce mt-5" style="padding: 50px 0px 50px 0px">
        <div class="container">
            <div class="row" style="text-align: center; padding-bottom: 50px">
                <h1 style="font-size: 30px" class="global-title">
                    <span class="rounded"> Financials & Banking</span>
                </h1>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <h3
                        style="
                            text-align: center;
                            font-weight: bold;
                            color: darkorange;
                            word-spacing: 0.2ch;
                            text-transform: uppercase;
                            line-height: 30px;
                            font-size: 25px;
                        "
                    >
                        Delivering the insights you to help business growth
                    </h3>
                    <br />
                    <p
                        style="
                            text-align: justify;
                            color: white;
                            word-spacing: 0.2ch;
                            text-transform: capitalize;
                            line-height: 25px;
                        "
                    >
                        To take a trivial example, which of us ever under-takes
                        laborious physical exercise, except to obtain some
                        advantage from it but who has any right find fault with
                        a man who chooses to enjoy a get pleasure that has
                        annoying. Undertakes laborious physical exercise, except
                        to obtain some advantage from it but who has any find
                        fault with a man who chooses.
                    </p>
                </div>
                <div class="col-md-2"></div>
                <div class="col-md-4">
                    <IndustriesLink></IndustriesLink>
                </div>
            </div>
        </div>
    </section>
    <!-- industries top title section end -->

    <!-- uses tecnology section start -->
    <section class="" style="padding: 50px 0px 50px 0px">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 offset-sm-3 mt-4 mb-4">
                    <h4
                        class="global-title"
                        style="text-align: center; text-transform: uppercase"
                    >
                        <span class="rounded">Technologies that we use</span>
                    </h4>
                </div>
                <div class="col-sm-6 offset-sm-3 mt-4 mb-4">
                    <p
                        style="
                            text-align: center;
                            font-size: medium;
                            font-weight: bold;
                            color: black;
                        "
                    >
                        We Denounce with Righteos Indignation and Dislikes Men
                        Who are so Beguiled Demoralized cof Pleasure of the
                        Moment.
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <ul style="color: black" class="ul_tag_style">
                        <li>
                            <a href="">Hadoop and other Big Data Platorms</a>
                        </li>
                        <li><a href="">Licensed OCR Tool</a></li>
                        <li><a href="">Luigi Workflow Manager</a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul style="color: black" class="ul_tag_style">
                        <li>
                            <a href="">Distributed setup on Cloud for speed</a>
                        </li>
                        <li><a href="">Dango Framewor</a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <img
                        src="../../../assets/images/industries/t1.png"
                        class="img-fluid"
                        style="height: 100%; border: 10px solid #92e3a9"
                        alt=""
                    />
                </div>
            </div>
        </div>
    </section>
    <!-- uses tecnology section end -->
</template>

<script>
import IndustriesLink from "../components/InductriesLink.vue";
import "../../../assets/css/bootstrap5.min.css";
export default {
    components: {
        IndustriesLink,
    },
    mounted() {
        document.title = "ECOMMERCE | Excel IT AI";
        window.scrollTo({ top: 0, behavior: "instant" });
    },
};
</script>

<style>
.ecommarce {
    background-image: url(../../../assets/images/industries/e-commerce.jpg);
    width: 100%;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
}
.ecommarce::before {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 100%;
    content: "";
    background: rgba(21, 37, 53, 0.8);
}

li:hover {
    color: #fff;
}

.technology {
    background: #fff;
}

.technology {
    /* background: linear-gradient(
        to bottom,
        rgba(52, 78, 99, 0.9),
        rgba(52, 78, 99)
    ); */
    background: #fff;
}
.ul_tag_style li a,
.breadcumpul li a {
    text-decoration: none !important;
    color: #215670 !important;
}
.ul_tag_style li a:hover,
.breadcumpul li a:hover {
    color: black !important;
    text-decoration: none !important;
}
</style>
