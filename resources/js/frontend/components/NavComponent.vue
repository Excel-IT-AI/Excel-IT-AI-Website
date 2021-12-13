<template>
    <nav class="navbar navbar-expand-lg my-navbar">
        <router-link class="navbar-brand" :to="{ name: 'Home' }">
            <img src="/assets/images/logo/excelit.png" alt="" />
        </router-link>
        <button
            class="navbar-toggler"
            type="button"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
            @click.prevent="showNav($event)"
        >
            <span>
                <i class="fas fa-bars"></i>
            </span>
        </button>
        <div class="navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav m-auto">
                <nav-link
                    @hideNav="showNav"
                    content="Home"
                    link="Home"
                ></nav-link>
                <li class="nav-item dropdown">
                    <a
                        class="nav-link dropdown-toggle"
                        href="#"
                        data-toggle="dropdown"
                        >Company</a
                    >
                    <ul
                        class="dropdown-menu mega-menu"
                        aria-labelledby="navbarDropdown"
                    >
                        <nav-link
                            @hideNav="showNav"
                            :dropdown="true"
                            content="About Company"
                            link="About"
                        ></nav-link>

                        <nav-link
                            @hideNav="showNav"
                            :dropdown="true"
                            content="Why Choose Us"
                            link="WhyChoose"
                        ></nav-link>
                        <nav-link
                            @hideNav="showNav"
                            :dropdown="true"
                            content="Organogram"
                            link="Organogram"
                        ></nav-link>

                        <li>
                            <nav-link
                                @hideNav="showNav"
                                :dropdown="true"
                                content="Methodology"
                                link="Methodology"
                            ></nav-link>
                        </li>
                        <li>
                            <nav-link
                                @hideNav="showNav"
                                :dropdown="true"
                                content="Media"
                                link="Media"
                            ></nav-link>
                        </li>

                        <li>
                            <a
                                class="
                                    dropdown-item
                                    d-flex
                                    justify-content-between
                                "
                                href="#"
                                >Team
                                <span
                                    ><i
                                        class="fas fa-angle-right ml-3"
                                    ></i></span
                            ></a>
                            <ul class="submenu">
                                <nav-link
                                    @hideNav="showNav"
                                    :submenu="true"
                                    content="Management"
                                    link="Management"
                                ></nav-link>
                                <nav-link
                                    @hideNav="showNav"
                                    :submenu="true"
                                    content="Software Team"
                                    link="SoftwareTeam"
                                ></nav-link>
                            </ul>
                        </li>
                    </ul>
                </li>

                <li class="nav-item dropdown">
                    <a
                        class="nav-link dropdown-toggle"
                        href="#"
                        data-toggle="dropdown"
                        >Course</a
                    >
                    <ul
                        class="dropdown-menu mega-menu"
                        aria-labelledby="navbarDropdown"
                    >
                        <nav-link
                            @hideNav="showNav"
                            :dropdown="true"
                            content="Laravel"
                            link="LaravelCourse"
                        ></nav-link>

                        <nav-link
                            @hideNav="showNav"
                            :dropdown="true"
                            content="Flutter"
                            link="FlutterCourse"
                        ></nav-link>

                        <nav-link
                            @hideNav="showNav"
                            :dropdown="true"
                            content="UI/UX Design"
                            link="UXUIDesignCourse"
                        ></nav-link>
                        <nav-link
                            @hideNav="showNav"
                            :dropdown="true"
                            content="Digital Marketing"
                            link="DigitalMarketingCourse"
                        ></nav-link>
                    </ul>
                </li>

                <li class="nav-item dropdown">
                    <a
                        class="nav-link dropdown-toggle"
                        href="#"
                        data-toggle="dropdown"
                    >
                        Services
                    </a>
                    <ul
                        class="dropdown-menu mega-menu"
                        aria-labelledby="navbarDropdown"
                    >
                        <nav-link
                            @hideNav="showNav"
                            :dropdown="true"
                            content="Web Application Development"
                            link="WebApplication"
                        ></nav-link>

                        <nav-link
                            @hideNav="showNav"
                            :dropdown="true"
                            content="Mobile Application Development"
                            link="MobileApplication"
                        ></nav-link>
                        <nav-link
                            @hideNav="showNav"
                            :dropdown="true"
                            content="UI/UX Design"
                            link="UiUxDesign"
                        ></nav-link>
                        <nav-link
                            @hideNav="showNav"
                            :dropdown="true"
                            content="Coustom Software Development"
                            link="CustomSoftware"
                        ></nav-link>
                        <nav-link
                            @hideNav="showNav"
                            :dropdown="true"
                            content="Digital Marketing"
                            link="DigitalMarketing"
                        ></nav-link>
                    </ul>
                </li>

                <li class="nav-item dropdown">
                    <a
                        class="nav-link dropdown-toggle"
                        href="#"
                        id="navbarDropdown"
                        role="button"
                        data-bs-toggle="dropdown"
                        aria-expanded="false"
                    >
                        Industries
                    </a>
                    <ul
                        class="dropdown-menu mega-menu"
                        aria-labelledby="navbarDropdown"
                    >
                        <nav-link
                            @hideNav="showNav"
                            :dropdown="true"
                            content="Fintech"
                            link="Fintech"
                        ></nav-link>
                        <nav-link
                            @hideNav="showNav"
                            :dropdown="true"
                            content="Healthcare"
                            link="Health"
                        ></nav-link>
                        <nav-link
                            @hideNav="showNav"
                            :dropdown="true"
                            content="E-Commerce"
                            link="Ecommerce"
                        ></nav-link>
                        <nav-link
                            @hideNav="showNav"
                            :dropdown="true"
                            content="Education"
                            link="Education"
                        ></nav-link>

                        <nav-link
                            @hideNav="showNav"
                            :dropdown="true"
                            content="Real Estate"
                            link="RealEstate"
                        ></nav-link>
                        <nav-link
                            @hideNav="showNav"
                            :dropdown="true"
                            content="Retail Software"
                            link="RetailSoftware"
                        ></nav-link>
                    </ul>
                </li>

                <li class="nav-item">
                    <a
                        href="http://portfolio.excelitai.com/"
                        target="_blank"
                        class="nav-link"
                        >Our Portfolio</a
                    >
                </li>

                <nav-link
                    @hideNav="showNav"
                    content="career"
                    link="Career"
                ></nav-link>
                <nav-link
                    @hideNav="showNav"
                    content="contact us"
                    link="Contact"
                ></nav-link>
            </ul>
        </div>
    </nav>
</template>

<script>
import NavLink from "./NavLink.vue";
export default {
    components: {
        NavLink,
    },
    methods: {
        showNav() {
            let navbar = document.querySelector(".navbar-collapse");
            if (navbar.classList.contains("show-nav")) {
                navbar.classList.remove("show-nav");
            } else {
                navbar.classList.add("show-nav");
            }
        },
    },
};
</script>

<style>
@media screen and (max-width: 992px) {
    .navbar-collapse {
        display: none;
    }
    .show-nav {
        display: block;
    }
}

.navbar-brand img {
    /* box-shadow: 0 25px 50px -12px green; */
    object-fit: contain !important;
}
.navbar-toggler {
    position: relative !important;
    right: 10% !important;
}
</style>
