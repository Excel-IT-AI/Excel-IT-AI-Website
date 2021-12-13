<template>
    <div class="contact-wrapper">
        <!-- contact top part start -->
        <section class="mt-5 pt-3">
            <div class="container mt-4">
                <div class="row">
                    <div class="col-sm-6 offset-sm-3 mt-4">
                        <h4 class="text-center global-title">
                            <span class="rounded">CONTACT INFORMATION</span>
                        </h4>
                        <!-- <h5 class="text-center">
                        We’d love to hear from you anytime
                    </h5> -->
                    </div>
                    <!-- <div class="col-sm-6 offset-sm-3 mt-4 mb-4"> -->
                    <!-- <p style="text-align: center">
                        Always holds in these matters to this principle of
                        selection he rejects pleasures to secure other greater
                        pleasures, or else he endures pains to avoid
                    </p> -->
                    <!-- </div> -->
                </div>
                <!-- contact cart start -->
            </div>
        </section>
        <!-- contact top part end -->

        <!-- Wrapper container -->
        <div
            class="container py-4"
            :class="[showContact ? 'contact-container' : '']"
        >
            <!-- Bootstrap 5 starter form -->
            <div class="form-container">
                <div class="contact-form-front" style="padding-top: 5rem">
                    <h2
                        style="margin-left: 30%"
                        class="text-left my-3 text-uppercase text-white"
                    >
                        Contact Details
                    </h2>

                    <div
                        class="contact-details"
                        style="
                            display: flex;
                            justify-content: flex-start;
                            align-items: flex-start;
                            flex-direction: column;
                        "
                    >
                        <p>
                            <span>01. MAIL:</span>
                            <span> info@excelitai.com</span>
                        </p>
                        <p>
                            <span>02. ADDRESS:</span>

                            <span
                                >17, Alhaz Samsuddin Mansion (9th Floor),
                                Moghbazar, New Easkaton, Ramna, Dhaka-1217</span
                            >
                        </p>
                        <p>
                            <span>03. PHONE:</span>
                            <span>+88 01611 815656</span>
                        </p>
                        <p class="contact-button">
                            <button
                                class="global-button-lg"
                                style="cursor: pointer"
                                @click="showContact = true"
                            >
                                Contact
                            </button>
                        </p>
                    </div>
                </div>
                <div class="contact-form-backend">
                    <p style="font-size: 2rem; cursor: pointer !important">
                        <button @click="showContact = false" class="text-white">
                            &times;
                        </button>
                    </p>
                    <div class="container mt-4 py-5" style="text-align: center">
                        <h3 style="text-align: center; color: #fff">
                            Contact Us
                        </h3>
                        <img
                            src="../../../assets/images/contact.png"
                            class="img-fluid"
                            alt=""
                        />
                    </div>
                    <form
                        id="contactForm"
                        style="display: flex; justify-content: center"
                    >
                        <div class="contact-container text-center">
                            <div class="row">
                                <div class="col-xl-6">
                                    <!-- Name input -->
                                    <div class="mb-3">
                                        <label
                                            class="form-label pl-3"
                                            for="name"
                                            >Name</label
                                        >
                                        <input
                                            class="form-control"
                                            id="name"
                                            v-model="form.name"
                                            type="text"
                                            placeholder="Name"
                                        />
                                        <div
                                            class="text-white"
                                            style="text-align: left !important"
                                            v-if="errors['name']?.length > 0"
                                            v-text="errors['name'][0]"
                                        ></div>
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <!-- Subject input -->
                                    <div class="mb-3">
                                        <label
                                            class="form-label pl-3"
                                            for="subject"
                                            >Subject</label
                                        >
                                        <input
                                            class="form-control"
                                            id="subject"
                                            type="text"
                                            v-model="form.subject"
                                            placeholder="Subject"
                                            data-sb-validations="required, email"
                                        />
                                        <div
                                            class="text-white"
                                            style="text-align: left !important"
                                            v-if="errors['subject']?.length > 0"
                                            v-text="errors['subject'][0]"
                                        ></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <!-- Email address input -->
                                <div class="mb-3 col-md-12">
                                    <label
                                        class="form-label pl-3"
                                        for="emailAddress"
                                        >Email</label
                                    >
                                    <input
                                        class="form-control"
                                        id="emailAddress"
                                        type="email"
                                        v-model="form.email"
                                        placeholder="Email Address"
                                        data-sb-validations="required, email"
                                    />
                                    <div
                                        class="text-white"
                                        v-if="errors['email']?.length > 0"
                                        v-text="errors['email'][0]"
                                    ></div>
                                </div>
                            </div>
                            <div class="row my-3">
                                <!-- Message input -->
                                <div class="mb-3 col-md-12">
                                    <label class="form-label pl-3" for="message"
                                        >Message</label
                                    >
                                    <textarea
                                        class="form-control"
                                        id="message"
                                        type="text"
                                        placeholder="Message"
                                        style="height: 5rem"
                                        required
                                        v-model="form.message"
                                    ></textarea>
                                    <div
                                        class="text-white"
                                        v-if="errors['message']?.length > 0"
                                        v-text="errors['message'][0]"
                                    ></div>
                                </div>
                            </div>
                            <!-- Form submit button -->
                            <a
                                class="global-button-sm"
                                @click.prevent="SendEmail"
                                >{{ isClicked ? "Sending..." : "Submit" }}</a
                            >
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- contact part start  -->
    <section class="contact my-4" style="margin-bottom: 100px !important">
        <div class="map">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14606.432655682407!2d90.39212834436911!3d23.76134845824867!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b926c620f459%3A0xf0b4514991e507c8!2sExcel%20IT%20AI!5e0!3m2!1sen!2sbd!4v1630475258403!5m2!1sen!2sbd"
                width="100%"
                height="450"
                style="border: 0"
                allowfullscreen=""
                loading="lazy"
            ></iframe>
        </div>
    </section>
    <!-- contact part end  -->
</template>

<script>
import Swal from "sweetalert2";
import ContactApi from "../api/ContactApi.js";
export default {
    data() {
        return {
            form: {
                name: "",
                email: "",
                subject: "",
                message: "",
            },
            errors: {},
            isClicked: false,
            showContact: false,
        };
    },
    methods: {
        SendEmail() {
            this.isClicked = true;
            ContactApi.sendContact(this.formData())
                .then(({ data: { success } }) => {
                    this.isClicked = false;
                    Swal.fire("Success!", success, "success");
                    this.resetForm();
                })
                .catch((error) => {
                    this.isClicked = false;
                    if (error?.response?.status === 422) {
                        console.log(error.response.data);
                        this.errors = error?.response?.data.errors;
                    } else {
                        Swal.fire(
                            "Error!",
                            "Some Error occured Please Try Again",
                            "error"
                        );
                    }
                });
        },
        formData() {
            const formData = new FormData();
            for (let column in this.form) {
                formData.append(column, this.form[column]);
            }
            return formData;
        },
        resetForm() {
            for (let column in this.form) {
                this.form[column] = "";
            }
        },
    },
    mounted() {
        document.title = "CONTACT | Excel IT AI";
        window.scrollTo({ top: 0, behavior: "instant" });
    },
};
</script>

<style scoped>
/* @import "../../../assets/css/contact.css"; */
.contact-wrapper {
    background: url("../../../assets/images/contact.jpg");
    position: relative;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    background-position: center;
    width: 100%;
    /* height: auto; */
    padding-top: 5rem;
}

.contact-wrapper::before {
    position: absolute;
    content: "";
    top: 0;
    right: 0;
    left: 0;
    bottom: 0;
    background: linear-gradient(
        to right,
        rgba(0, 0, 0, 0.4),
        rgba(21, 37, 53, 0.3)
    );
}

.form-container {
    position: relative !important;
    width: 700px;
    margin-left: 25%;
    height: 700px;
    /* border-radius: 10px; */
    transform-style: preserve-3d;
    transition: transform 1s;
    transform-style: preserve-3d;
}

.contact-container .form-container {
    transform: perspective(800px) rotateY(180deg);
}

@media screen and (max-width: 1100px) {
    .form-container {
        width: 500px;
        min-width: 100%;
        height: 100vh;
        margin-left: 0 !important;
        /* margin-bottom: 5rem; */
    }
}
@media screen and (max-width: 992px) {
    .form-container {
        margin-left: 10%;
    }
}
@media screen and (max-width: 500px) {
    .form-container {
        width: 390px;
        min-width: 100%;
        height: calc(100vh + 200px);
        margin-left: 0;
        /* margin-bottom: 5rem; */
    }
}
@media screen and (max-width: 400px) {
    .form-container {
        width: 300px;
        min-width: 100%;
        height: 700px;
        margin-left: 0;
        font-size: 1rem;
        /* margin-bottom: 5rem; */
    }
}
.contact-container .contact-form-front {
    display: none;
}
.contact-form-front {
    background: linear-gradient(to bottom, #06716d, #0b9994) !important;
    padding: 1rem;
    position: absolute;
    border-radius: 10px;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    width: 100%;
    height: 100%;
    box-shadow: 0 0 0 5px rgba(49, 44, 45, 0.1);
    transition: all 1s ease;
    -webkit-transition: all 1s ease;
    -webkit-transition: all 1s ease;
    backface-visibility: hidden;
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
}

.contact-container .contact-form-front::before {
    content: "";
    top: 0;
    left: 70%;
    bottom: 0;
    width: 30%;
    position: absolute;
    border-radius: 10px;
    background: linear-gradient(
        to bottom,
        #353535,
        rgba(87, 187, 214, 0.8)
    ) !important;
}
.contact-details {
    margin: 2rem 3rem;
    padding: 1rem;
    padding-left: 1.5rem;
    border: 10px solid #92e3a9;
    border-radius: 10px;
}

@media screen and (max-width: 700px) {
    .contact-details {
        border: none !important;
    }
}
.contact-details p {
    text-align: center;
    display: flex;
    justify-content: flex-start;
    align-items: flex-start;
    flex-direction: column;
    font-size: 1rem;
    letter-spacing: 0.2px;
    text-transform: uppercase;
    position: relative;
    color: #215670 !important;
}

.contact-details p span:first-child {
    margin: 0.3rem 0 0.3rem 0;
    margin-left: 50%;
    color: black !important;
    text-align: left !important;
    margin-left: -1px;
    font-weight: bold;
}

.contact-details p span:nth-child(2) {
    color: #fff !important;
}

.contact-details p.contact-button {
    display: block;
    text-transform: uppercase;
    text-align: left;
}

.contact-form-backend {
    position: absolute !important;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    width: 100%;
    background: #05625f;
    height: 100%;
    transform: rotateY(180deg);
    -webkit-transform: rotateY(180deg);
    -moz-transform: rotateY(180deg);
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    backface-visibility: hidden;
    z-index: 10000;
}
@media screen and (max-width: 992px) {
}
.contact-form-backend > p {
    position: absolute;
    top: 0;
    right: 0;
    width: 50px;
    height: 50px;
    background: #313131;
    display: flex;
    justify-content: center;
    align-items: center;
}

label {
    display: block;
    text-align: left;
    color: #fff;
}
</style>
