import Home from "../pages/Home.vue";
import Login from "../pages/Login.vue";
import Career from "../pages/Career.vue";
import About from "../pages/About.vue";
import Ecommerce from "../pages/Ecommerce.vue";
import Fintech from "../pages/Fintech";
import Health from "../pages/Health.vue";
import Education from "../pages/Education.vue";
import WhyChoose from "../pages/WhyChoose.vue";
import RealEstate from "../pages/RealEstate.vue";
import Contact from "../pages/Contact.vue";
import WebApplication from "../pages/WebApplication.vue";
import MobileApplication from "../pages/MobileApplication.vue";
import UiUxDesign from "../pages/UiUxDesign.vue";
import CustomSoftware from "../pages/CustomSoftware.vue";
import DigitalMarketing from "../pages/DigitalMarketing.vue";
import SoftwareTeam from "../pages/SoftwareTeam.vue";
import Media from "../pages/Media.vue";
import Methodology from "../pages/Methodology.vue";
import Management from "../pages/Management.vue";
import RetailSoftware from "../pages/RetailSoftware.vue";
// software team views
import DigitalMarketingCourse from "../pages/course/DigitalMarketingCourse.vue";
import FlutterCourse from "../pages/course/FlutterCourse.vue";
import UXUIDesignCourse from "../pages/course/UXUIDesignCourse.vue";
import LaravelCourse from "../pages/course/LaravelCourse.vue";
import Organogram from "../pages/Organogram.vue";
import PageNotFound from "../pages/PageNotFound.vue";
const routes = [
    {
        path: "/",
        component: Home,
        name: "Home",
        meta: { requiresUser: true, frontend: true },
        // beforeEnter: (to, _, next) => {
        //     if (to.meta.requiresUser && isAuthUser()) {
        //         next();
        //     } else {
        //         next({ name: "Login" });
        //     }
        // },
    },
    {
        path: "/career",
        component: Career,
        name: "Career",
        meta: { requiresUser: true, frontend: true },
        // beforeEnter: (to, _, next) => {
        //     if (to.meta.requiresUser && isAuthUser()) {
        //         next();
        //     } else {
        //         next({ name: "Login" });
        //     }
        // },
    },
    {
        path: "/about",
        component: About,
        name: "About",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/why-choose-us",
        component: WhyChoose,
        name: "WhyChoose",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/methodology",
        component: Methodology,
        name: "Methodology",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/media",
        component: Media,
        name: "Media",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/management",
        component: Management,
        name: "Management",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/organogram",
        component: Organogram,
        name: "Organogram",
        meta: { requiresUser: true, frontend: true },
    },

    //industries ecomerce page
    {
        path: "/industries/ecommerce",
        component: Ecommerce,
        name: "Ecommerce",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/industries/financial-technology",
        component: Fintech,
        name: "Fintech",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/industries/health",
        component: Health,
        name: "Health",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/industries/Education",
        component: Education,
        name: "Education",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/contact",
        component: Contact,
        name: "Contact",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/industries/RealEstate",
        component: RealEstate,
        name: "RealEstate",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/industries/RetailSoftware",
        component: RetailSoftware,
        name: "RetailSoftware",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/service/web-application",
        component: WebApplication,
        name: "WebApplication",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/service/mobile-application",
        component: MobileApplication,
        name: "MobileApplication",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/services/ui-ux-design",
        component: UiUxDesign,
        name: "UiUxDesign",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/services/digital-marketing",
        component: DigitalMarketing,
        name: "DigitalMarketing",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/services/custom-software",
        component: CustomSoftware,
        name: "CustomSoftware",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/team/software-team",
        component: SoftwareTeam,
        name: "SoftwareTeam",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/course/digital-marketing",
        component: DigitalMarketingCourse,
        name: "DigitalMarketingCourse",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/course/digital-marketing",
        component: DigitalMarketingCourse,
        name: "DigitalMarketingCourse",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/course/flutter-course",
        component: FlutterCourse,
        name: "FlutterCourse",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/course/laravel-course",
        component: LaravelCourse,
        name: "LaravelCourse",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/course/ui/ux-course",
        component: UXUIDesignCourse,
        name: "UXUIDesignCourse",
        meta: { requiresUser: true, frontend: true },
    },
    {
        path: "/login",
        component: Login,
        name: "Login",
        meta: { guestUser: true, frontend: true },
    },
    // {
    //     path: "*",
    //     component: ,
    //     name: "PageNotFound",
    //     meta: { guestUser: true, frontend: true },
    // beforeEnter: (to, _, next) => {
    //     if (to.meta.guestUser && !isAuthUser()) {
    //         next();
    //     } else {
    //         next({ name: "Home" });
    //     }
    // },
    // },
    {
        path: "/:pathMatch(.*)*",
        name: "PageNotFound",
        component: PageNotFound,
        meta: { guestUser: true, frontend: true },
    },
];

export default routes;

function isAuthUser() {
    console.log(localStorage.getItem("token"));
    if (localStorage.getItem("token")) return true;
    return true;
}
