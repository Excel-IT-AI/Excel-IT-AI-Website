<template>
    <div class="course-header mt-5">
        <h2 class="mt-5 pt-5">Flutter Course</h2>
        <div class="d-flex justify-content-center">
            <img src="../../../../assets/images/course_bg/flutter_logo.png" />
        </div>
    </div>
    <section
        class="accordion-section clearfix mt-3"
        aria-label="Question Accordions"
    >
        <div class="container">
            <div class="container">
                <div class="row"></div>
                <div class="row">
                    <div class="col-12 col-md-6">
                        <div class="list-group">
                            <Accordian header="OOP">
                                <ul>
                                    <li>Class</li>
                                    <li>Method</li>
                                    <li>Data Member and Member Function</li>
                                    <li>Constructor and Destructor</li>
                                    <li>Inheritance</li>
                                    <li>Encapsulation</li>
                                    <li>Polymorphism</li>
                                    <li>Abstraction</li>
                                </ul>
                            </Accordian>
                            <Accordian
                                header="Brief of flutter and Code editor"
                            >
                                <ul>
                                    <li>Dart</li>
                                    <li>Android Studio</li>
                                </ul>
                            </Accordian>
                            <Accordian header="Widget">
                                <ul>
                                    <li>Material App</li>
                                    <li>Icons</li>
                                    <li>Theme and Styling</li>
                                    <li>Identity card</li>
                                </ul>
                            </Accordian>

                            <Accordian header="Responsive">
                                <ul>
                                    <li>Gesture Detector</li>
                                    <li>Flutter form and field</li>
                                    <li>Radio Button and Dropdown list</li>
                                </ul>
                            </Accordian>
                            <Accordian header="Responsive">
                                <ul>
                                    <li>Gesture Detector</li>
                                    <li>Flutter form and field</li>
                                    <li>Radio Button and Dropdown list</li>
                                </ul>
                            </Accordian>
                            <Accordian header="Responsive 2">
                                <ul>
                                    <li>Expanded widget</li>
                                    <li>Intension Action</li>
                                    <li>Dart Function</li>
                                    <li>Click and action</li>
                                    <li>Variable & Data type</li>
                                    <li>Stateful VS Stateless</li>
                                    <li>Randomize on action</li>
                                </ul>
                            </Accordian>

                            <Accordian header="Animation">
                                <ul>
                                    <li>Implicit and Explicit animations</li>
                                    <li>Hero animation</li>
                                </ul>
                            </Accordian>

                            <Accordian header="Authentication">
                                <ul>
                                    <li>Facebook,</li>
                                    <li>Gmail</li>
                                    <li>Facebook,</li>
                                    <li>Mobile Number</li>
                                </ul>
                            </Accordian>
                        </div>
                    </div>

                    <div class="col-12 col-md-6">
                        <div class="list-group">
                            <Accordian header="Practice Project">
                                <ul>
                                    <li>BMI Calculator</li>
                                </ul>
                            </Accordian>
                            <Accordian header="Saving Data">
                                <ul>
                                    <li>SQL Database</li>
                                    <li>Em</li>
                                    <li>Shared Preference</li>
                                    <li>Crud Operation</li>
                                </ul>
                            </Accordian>
                            <Accordian header="Flutter Networking">
                                <ul>
                                    <li>Http Package</li>
                                    <li>JSON Serialization</li>
                                </ul>
                            </Accordian>
                            <Accordian header="Permission">
                                <ul>
                                    <li>Camera</li>
                                    <li>Storage</li>
                                    <li>Contact</li>
                                    <li>Location</li>
                                </ul>
                            </Accordian>
                            <Accordian header="Permission">
                                <ul>
                                    <li>Camera</li>
                                    <li>Storage</li>
                                    <li>Contact</li>
                                    <li>Location</li>
                                </ul>
                            </Accordian>
                            <Accordian header="Firebase">
                                <ul>
                                    <li>Authentication</li>
                                    <li>Firebase Database</li>
                                    <li>Firebase Storage</li>
                                </ul>
                            </Accordian>
                            <Accordian header="Web View">
                                <ul>
                                    <li>Direct Webview</li>
                                    <li>URL Launcher</li>
                                </ul>
                            </Accordian>
                            <Accordian header="Extra">
                                <ul>
                                    <li>GPS</li>
                                    <li>Localization</li>
                                    <li>SMS Autofill</li>
                                    <li>Font</li>
                                    <li>Icons</li>
                                    <li>Audio</li>
                                    <li>Chatting App</li>
                                    <li>AWS</li>
                                    <li>MongoDB</li>
                                </ul>
                            </Accordian>

                            <Accordian header="Practice Live Project">
                                <ul>
                                    <li>Practice Live Project</li>
                                </ul>
                            </Accordian>
                        </div>
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
import Accordian from "./components/Accordian.vue";
export default {
    components: { Accordian },
    mounted() {
        document.title = "FLUTTER COURSE | Excel IT AI";
        window.scrollTo({ top: 0, behavior: "smooth" });
    },
};
</script>

<style scoped>
.course-header {
    background: url("../../../../assets/images/course_bg/mobile_application.jpg");
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
        rgba(0, 0, 0, 0.4),
        rgba(21, 37, 53, 0.9)
    );
}

.course-header img {
    width: 200px;
    height: 200px;
    z-index: 10000;
    object-fit: contain;
    /* background: #fff; */
    box-shadow: 0 4px 6px -1px #3f92d6, 0 2px 4px -1px #3f92d6;
    border-radius: 50%;
}
</style>
