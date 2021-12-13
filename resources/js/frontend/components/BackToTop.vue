<template>
    <button
        class="backtotop"
        :class="[showTopButton ? 'showButton' : '']"
        title="Go to top"
        @click.prevent="BackToTopMethod"
    >
        <i class="fas fa-long-arrow-alt-up"></i>
    </button>
</template>

<script>
export default {
    data() {
        return {
            showTopButton: false,
            scrollTop: false,
        };
    },
    watch: {
        showTopButton() {
            this.setTopButton();
        },
    },
    methods: {
        setTopButton() {
            this.scrollTop =
                document.documentElement.scrollTop || document.body.scrollTop;
            if (this.scrollTop > 300) {
                this.showTopButton = true;
            } else {
                this.showTopButton = false;
            }
        },
        BackToTopMethod() {
            window.scrollTo({ top: 0, behavior: "smooth" });
            window.requestAnimationFrame(this.setTopButton());
            window.scrollTo(0, c - c / 8);
        },
    },
    mounted() {
        window.onscroll = function () {
            this.setTopButton();
        }.bind(this);
    },
};
</script>
<style scoped>
.backtotop {
    position: fixed;
    bottom: 5%;
    right: 5%;
    z-index: 1000;
    background: linear-gradient(to right, rgb(2, 108, 171), #0e5299, #1b3a8c);
    width: 50px;
    height: 50px;
    border: 5px solid rgb(2, 108, 171);
    border-radius: 50%;
    color: #fff;
    font-size: 1rem;
    display: none;
}
.showButton {
    display: block;
}
</style>
