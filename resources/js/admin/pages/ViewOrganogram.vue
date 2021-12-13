<template>
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div
                class="
                    page-title-box
                    d-flex
                    align-items-center
                    justify-content-between
                "
            >
                <h4 class="mb-0 font-size-18">View Management Team</h4>

                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <router-link :to="{ name: 'AdminDashboard' }"
                                >Dashboards</router-link
                            >
                        </li>
                        <li class="breadcrumb-item active">View Organogram</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-12 my-2">
            <div class="header d-flex justify-content-end">
                <button
                    class="btn btn-success btn-lg"
                    @click="showAddModal = true"
                    v-if="!OrganogramListCount"
                >
                    Add Organogram
                </button>
            </div>
        </div>
    </div>
    <!-- end page title -->
    <div class="row">
        <div class="col-xl-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table
                            class="
                                table table-hovered table-striped
                                mb-0
                                table-nowrap
                            "
                        >
                            <thead class="thead-light">
                                <tr>
                                    <th>Organogram Id</th>
                                    <th>Organogram Image</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="row in organogramList" :key="row.id">
                                    <td>{{ row.id }}</td>
                                    <td>
                                        <img
                                            :src="row.image"
                                            alt="-img"
                                            title="management-img"
                                            class="avatar-md"
                                        />
                                    </td>
                                    <td>
                                        <a
                                            href="javascript:void(0);"
                                            @click.prevent="
                                                deleteOrganogram(row.id)
                                            "
                                            class="action-icon text-danger"
                                        >
                                            <vue-feather
                                                type="trash-2"
                                                class="text-danger"
                                            ></vue-feather
                                        ></a>
                                        <a
                                            href="#"
                                            @click.prevent="
                                                setShowEditModal(row.id)
                                            "
                                            class="action-icon text-primary"
                                        >
                                            <vue-feather
                                                type="edit"
                                            ></vue-feather>
                                        </a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <AddOrganogram
        @hideAddOrganogramModal="showAddModal = false"
        @addOrganogram="getOrganogramList(), (showAddModal = false)"
        v-if="showAddModal"
    ></AddOrganogram>
    <EditOrganogram
        @updatedOrganogram="getOrganogramList(), (showEditModal = false)"
        @hideEditOrganogramModal="showEditModal = false"
        :organogram_id="organogram_id"
        v-if="showEditModal"
    ></EditOrganogram>
</template>

<script>
import EditOrganogram from "./organogrammodals/EditOrganogram.vue";
import AddOrganogram from "./organogrammodals/AddOrganogram.vue";
import Swal from "sweetalert2";
import OrganogramApi from "../api/OrganogramApi.js";
import GetAdmin from "../mixins/GetAdmin";
export default {
    mixins: [GetAdmin],
    components: { EditOrganogram, AddOrganogram },
    data() {
        return {
            organogramList: [],
            showEditModal: false,
            showAddModal: false,
            organogram_id: 0,
        };
    },
    computed: {
        showPagination() {
            return $array.pagination(this.allPages, this.currentPage, 2);
        },
        showInfo() {
            return $array.pageInfo(
                this.getCurrentList(),
                this.currentPage,
                this.currentEntries
            );
        },
        //=> { from: 11, to: 12, of: 12 }
        getColumns() {
            return this.columns.map((column) => column.name);
        },
        OrganogramListCount() {
            return this.organogramList?.length > 0;
        },
    },
    methods: {
        getOrganogramList() {
            OrganogramApi.lists()
                .then(({ data: { organogramlist } }) => {
                    console.log(organogramlist, "running tap list");
                    this.organogramList = organogramlist;
                })
                .catch((error) => {
                    console.log(error);
                });
        },

        deleteOrganogram(organogram_id) {
            if (!confirm("Are you Sure You want to delete this ?")) {
                return;
            }
            OrganogramApi.delete(organogram_id)
                .then(({ data: { success } }) => {
                    Swal.fire("success", success, "success");
                    this.getOrganogramList();
                })
                .catch((error) => {
                    if (error?.response?.status === 500) {
                        Swal.fire("Error", error.response.data.error, "error");
                    } else {
                        Swal.fire(
                            "Error!",
                            "Some Error Occured Please Try Again!"
                        );
                    }
                });
        },
        setShowEditModal(organogram_id) {
            this.organogram_id = organogram_id;
            this.showEditModal = true;
        },
    },
    mounted() {
        this.GetAdmin();
        this.getOrganogramList();
        document.title = "View Organogram | Admin | Excel IT AI";
    },
};
</script>
