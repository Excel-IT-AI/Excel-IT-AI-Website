<template>
    <!-- Modal -->
    <div class="edit_custom_modal">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content" id="modal_content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel1">Add Media</h4>
                    <button
                        type="button"
                        class="close"
                        data-dismiss="modal"
                        aria-label="Close"
                        @click.prevent="hideModal"
                    >
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label class="form-label" for="media_image"
                                    >Media Image</label
                                >
                                <input
                                    type="file"
                                    @change="uploadImage"
                                    class="form-control"
                                    name="media_image"
                                    id="media_image"
                                />
                                <span
                                    class="text-danger"
                                    v-if="errors['media_image']"
                                    v-text="errors['media_image'][0]"
                                ></span>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="form-label" for="media_title"
                                    >Media Title</label
                                >
                                <input
                                    type="text"
                                    v-model="form.media_title"
                                    class="form-control"
                                    name="media_title"
                                    id="media_title"
                                />
                                <span
                                    class="text-danger"
                                    v-if="errors['media_title']"
                                    v-text="errors['media_title'][0]"
                                ></span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label class="form-label" for="media_link"
                                    >Media Link</label
                                >
                                <input
                                    type="text"
                                    v-model="form.media_link"
                                    class="form-control"
                                    name="media_link"
                                    id="media_link"
                                />
                                <span
                                    class="text-danger"
                                    v-if="errors['media_link']"
                                    v-text="errors['media_link'][0]"
                                ></span>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="form-label" for="media_link"
                                    >Media Link Name</label
                                >
                                <input
                                    type="text"
                                    v-model="form.media_link_name"
                                    class="form-control"
                                    name="media_link_name"
                                    id="media_link_name"
                                />
                                <span
                                    class="text-danger"
                                    v-if="errors['media_link_name']"
                                    v-text="errors['media_link_name'][0]"
                                ></span>
                            </div>
                        </div>
                        <button
                            type="submit"
                            :disabled="isClicked"
                            @click.prevent="addMedia"
                            class="btn btn-primary"
                        >
                            {{ isClicked ? "Please Wait..." : "Add Media" }}
                        </button>
                    </form>
                </div>
                <div class="modal-footer">
                    <button
                        type="button"
                        class="btn btn-success"
                        @click.prevent="hideModal"
                    >
                        close
                    </button>
                </div>
            </div>
        </div>
    </div>
    <!-- end modal -->
</template>

<script>
import Swal from "sweetalert2";
import MediaApi from "../../api/MediaApi.js";

export default {
    emits: ["addMedia", "hideAddMediaModal"],
    data() {
        return {
            form: {
                media_image: "",
                media_title: "",
                media_link: "",
                media_link_name: "",
            },
            isClicked: false,
            errors: {},
        };
    },
    computed: {
        hideModal() {
            this.$emit("hideAddMediaModal");
        },
    },
    methods: {
        addMedia() {
            this.isClicked = true;
            this.errors = {};
            MediaApi.store(this.setFormData())
                .then(({ data: { success } }) => {
                    this.isClicked = false;
                    this.$emit("addMedia");
                    Swal.fire("Success!", success, "success");
                })
                .catch((error) => {
                    this.isClicked = false;
                    if (error?.response?.status === 422) {
                        this.errors = error.response.data.errors;
                    } else {
                        Swal.fire(
                            "Error!",
                            "Some Error Occured Please Try Again!",
                            "error"
                        );
                    }
                });
        },
        uploadImage(e) {
            console.log(e.target.files[0]);
            this.form.media_image = e.target.files[0];
        },

        //wrap form data using FormData class
        setFormData() {
            const formData = new FormData();
            for (let column in this.form) {
                formData.append(column, this.form[column]);
            }
            return formData;
        }, //end method
    },
};
</script>

<style scoped>
.edit_custom_modal {
    position: fixed;
    top: 0;
    right: 0;
    left: 0;
    bottom: 0;
    background: rgba(0, 0, 0, 0.3);
    z-index: 99;
    height: 100vh;
    overflow-y: scroll;
    width: 100vw;
}
.modal-dialog {
    z-index: 1000000;
    width: 80%;
    text-align: center;
    position: relative;
    left: 0;
}
#modal_content {
    width: 1000px !important;
    /* width:100% */
}
</style>
