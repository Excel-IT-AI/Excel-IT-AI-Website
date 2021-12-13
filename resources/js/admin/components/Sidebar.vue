<template>
    <!-- ========== Left Sidebar Start ========== -->
    <div class="vertical-menu">
        <div data-simplebar="" class="h-100">
            <!--- Sidemenu -->
            <div id="sidebar-menu">
                <!-- Left Menu Start -->
                <ul class="metismenu list-unstyled" id="side-menu">
                    <li class="menu-title">Menu</li>

                    <li>
                        <router-link
                            :to="{ name: 'AdminDashboard' }"
                            class="waves-effect"
                        >
                            <span>Dashboards</span>
                        </router-link>
                    </li>

                    <li>
                        <a href="#" class="has-arrow waves-effect">
                            <i class="bx bx-layout"></i>
                            <span>Management</span>
                        </a>
                        <ul class="sub-menu" aria-expanded="false">
                            <li>
                                <router-link :to="{ name: 'ViewManagement' }"
                                    >View Managment
                                </router-link>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="has-arrow waves-effect">
                            <i class="bx bx-layout"></i>
                            <span>ViewOrganogram</span>
                        </a>
                        <ul class="sub-menu" aria-expanded="false">
                            <li>
                                <router-link :to="{ name: 'ViewOrganogram' }"
                                    >View Organogram
                                </router-link>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a
                            href="javascript: void(0);"
                            class="has-arrow waves-effect"
                        >
                            <i class="bx bx-layout"></i>
                            <span>Manage Software Team</span>
                        </a>
                        <ul class="sub-menu" aria-expanded="false">
                            <li>
                                <router-link :to="{ name: 'ViewSoftwareTeam' }"
                                    >View Team
                                </router-link>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a
                            href="javascript: void(0);"
                            class="has-arrow waves-effect"
                        >
                            <i class="bx bx-layout"></i>
                            <span>Manage Slider</span>
                        </a>
                        <ul class="sub-menu" aria-expanded="false">
                            <li>
                                <router-link :to="{ name: 'ViewSlider' }"
                                    >View Slider</router-link
                                >
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a
                            href="javascript: void(0);"
                            class="has-arrow waves-effect"
                        >
                            <i class="bx bx-layout"></i>
                            <span>Manage Media</span>
                        </a>
                        <ul class="sub-menu" aria-expanded="false">
                            <li>
                                <router-link :to="{ name: 'ViewMedia' }"
                                    >View Media</router-link
                                >
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- Sidebar -->
        </div>
    </div>
    <!-- Left Sidebar End -->
</template>

<script>
export default {};
</script>
