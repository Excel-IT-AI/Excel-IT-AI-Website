<template>
    <div class="course-header mt-5">
        <h2 class="mt-5 pt-5">Media</h2>
    </div>
    <section
        class="accordion-section clearfix mt-3"
        aria-label="Question Accordions"
    >
        <div class="container">
            <div class="row" style="text-align: center; padding-bottom: 50px">
                <h1 class="global-title">
                    <span class="rounded">Visual Media</span>
                </h1>
            </div>
            <div class="media_container">
                <div class="row">
                    <div
                        class="col-md-3 my-4"
                        v-for="media in mediaList"
                        :key="media.id"
                    >
                        <div class="single_media pb-4">
                            <div class="single_media__image">
                                <img :src="media.media_image" />
                            </div>
                            <div class="single_media_content">
                                <h3>
                                    <a
                                        :href="media.media_link"
                                        target="_blank"
                                        >{{ media.media_link_name }}</a
                                    >
                                </h3>
                                <p class="single_media_title">
                                    {{ media.media_title }}
                                </p>
                                <a
                                    :href="media.media_link"
                                    target="_blank"
                                    class="global-button-sm single_media_button"
                                >
                                    Read More
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>
<script>
import MediaApi from "../api/MediaApi";
export default {
    data() {
        return {
            mediaList: [],
        };
    },
    methods: {
        getAllMedias() {
            MediaApi.list()
                .then(({ data: { mediaList } }) => {
                    this.mediaList = mediaList;
                    console.log(mediaList);
                })
                .catch((error) => {
                    console.log(error);
                });
        },
    },
    mounted() {
        document.title = "Media | Excel IT AI";
        window.scrollTo({ top: 0, behavior: "instant" });
        this.getAllMedias();
    },
};
</script>

<style scoped>
.course-header {
    background: url(/images/mediabg/media_bg.jpg);
    height: 700px;
    position: relative;
    background-repeat: no-repeat;
    /* background-attachment: fixed; */
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
        padding-left: 3rem !important;
        margin-top: 3rem !important;
        font-size: 4rem !important;
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
    /* background: linear-gradient(
        to bottom,
        rgba(0, 0, 0, 0.7),
        rgba(247, 147, 49, 0.7)
    ); */
}

.course-header img {
    width: 200px;
    height: 200px;
    z-index: 10000;
    object-fit: contain;
}
.single_media {
    border: 1px solid rgba(21, 37, 53, 0.2);
    border-radius: 10px;
    height: auto;
    --tw-shadow: 0 20px 25px -5px rgba(236, 97, 169, 0.1),
        0 10px 10px -5px rgba(236, 97, 169, 0.1);
    box-shadow: var(--tw-ring-offset-shadow, 0 0 #0000),
        var(--tw-ring-shadow, 0 0 #0000), var(--tw-shadow);
}
.single_media .single_media__image {
    margin-bottom: 1rem;
    overflow: hidden;
}

.single_media h3 {
    padding: 1rem;
    font-size: 1.5rem;
    font-family: sans-serif;
    text-transform: capitalize;
    text-align: center;
}
.single_media .single_media__image img {
    width: 100%;
    height: 300px;
    border-radius: 10px;
    transform: scale(1);
    transition: all 1s ease-in-out;
}
.single_media .single_media__image img:hover {
    transform: scale(1.2);
}
.single_media p {
    padding: 1rem;
    text-align: center;
    text-transform: capitalize;
}
.single_media_button {
    margin-bottom: 1rem;
}

.single_media_content {
    text-align: center;
}
</style>
