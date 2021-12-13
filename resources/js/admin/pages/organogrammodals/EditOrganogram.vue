<template>
    <!-- Modal -->
    <div class="edit_custom_modal">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content" id="modal_content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel1">
                        Edit Organogram
                    </h4>
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
                                <label class="form-label" for="image"
                                    >Organogram Image</label
                                >
                                <input
                                    type="file"
                                    @change="uploadImage"
                                    class="form-control"
                                    name="image"
                                    id="image"
                                />
                                <span
                                    class="text-danger"
                                    v-if="errors['image']"
                                    v-text="errors['image'][0]"
                                ></span>
                            </div>
                            <div class="form-group col-md-6">
                                <img
                                    :src="form.image"
                                    style="width: 200px; height: 200px"
                                />
                            </div>
                        </div>
                        <button
                            type="submit"
                            :disabled="isClicked"
                            @click.prevent="updateOrganogram"
                            class="btn btn-primary"
                        >
                            {{
                                isClicked
                                    ? "Please Wait..."
                                    : "Update Organogram"
                            }}
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
import OrganogramApi from "../../api/OrganogramApi.js";

export default {
    props: ["organogram_id"],
    emits: ["updatedOrganogram", "hideEditOrganogramModal"],
    data() {
        return {
            form: {
                id: "",
                image: "",
            },
            isClicked: false,
            errors: {},
        };
    },
    computed: {
        hideModal() {
            this.$emit("hideEditOrganogramModal");
        },
    },
    methods: {
        updateOrganogram() {
            this.isClicked = true;
            this.errors = {};
            OrganogramApi.update(this.setFormData(), this.form.id)
                .then(({ data: { success } }) => {
                    this.isClicked = false;
                    this.$emit("updatedOrganogram");
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
            this.form.image = e.target.files[0];
        },
        getSingleOrganogram() {
            OrganogramApi.show(this.organogram_id)
                .then(({ data: { managementDetails } }) => {
                    this.form.image = managementDetails.image;
                    this.form.id = managementDetails.id;
                })
                .catch((error) => {
                    console.log(error);
                });
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
    mounted() {
        this.getSingleOrganogram();
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
