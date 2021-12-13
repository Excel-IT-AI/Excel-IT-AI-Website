<template>
    <div class="accordion-item">
        <h2 class="accordion-header btn-h" id="panelsStayclose-headingOne">
            <button
                class="accordion-button"
                type="button"
                @click.prevent="ToggleItem"
            >
                <span> {{ header }}</span>
            </button>
        </h2>
        <div class="accordion-collapse" v-if="accordian">
            <div class="accordion-body" style="color: white">
                <slot></slot>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    props: ["header"],
    data() {
        return {
            accordian: false,
        };
    },
    methods: {
        ToggleItem() {
            this.accordian = !this.accordian;
        },
    },
    mounted() {
        console.log(this.$style);
    },
};
</script>

<style scoped>
.accordion-item .accordion-button {
    /* background: black !important; */
    /* background: linear-gradient(
        to bottom,
        rgb(2, 108, 171, 0.4),
        rgb(2, 108, 171)
    ) !important; */
    background: linear-gradient(
        to top,
        rgb(2, 108, 171),
        rgb(4, 57, 87)
    ) !important;
}

.accordion-button:focus {
    z-index: 3;
    border-color: #ffffff;
    outline: 0;
    box-shadow: none !important;
}

.accordion-item .accordion-button {
    background-color: #5faace !important;
    -webkit-box-shadow: 3px 3px 5px 6px #ccc; /* Safari 3-4, iOS 4.0.2 - 4.2, Android 2.3+ */
    -moz-box-shadow: 3px 3px 5px 6px #ccc; /* Firefox 3.5 - 3.6 */
    box-shadow: 3px 3px 5px 6px #ccc; /* Opera 10.5, IE 9, Firefox 4+, Chrome 6+, iOS 5 */
}
.accordion-item .accordion-button span {
    color: white;
    /* background-color: #58abd1; */
    font-weight: bolder;
    font-family: "Poppins", sans-serif;
    font-size: 15px;
    margin-left: 20px;
}

.accordion-item .accordion-collapse .accordion-body {
    /* background: #fff; */
    background: #103244;
}
.accordion-item .accordion-collapse .accordion-body ul li {
    font-family: "Mulish", sans-serif;
    /* color: #103244 !important; */
    color: white !important;
    cursor: pointer !important;
}

.accordion-item .accordion-collapse .accordion-body ul li:hover {
    color: #103244 !important;
    font-weight: bold;
}

.heder-font {
    font-family: "Ubuntu", sans-serif;
    font-weight: bold;
}
</style>
