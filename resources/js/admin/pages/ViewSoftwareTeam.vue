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
                <h4 class="mb-0 font-size-18">View Software Team</h4>

                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <router-link :to="{ name: 'AdminDashboard' }"
                                >Dashboards</router-link
                            >
                        </li>
                        <li class="breadcrumb-item active">
                            View Software Team
                        </li>
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
                    @click.prevent="showAddModal = true"
                >
                    Add Developer
                </button>
            </div>
        </div>
    </div>
    <!-- end page title -->
    <div class="row">
        <div class="col-xl-12">
            <div class="card">
                <div class="card-body">
                    <!-- showPaginationOption and search option  -->
                    <div class="d-flex justify-content-between my-3 mx-3">
                        <div class="d-flex justify-content-center">
                            <span style="font-size: 20px" class="mx-1"
                                >Show</span
                            >
                            <select
                                v-model.trim="currentEntries"
                                @change="paginateEntries()"
                                class="form-control px:width-15"
                            >
                                <option
                                    v-for="sh in showEntries"
                                    :key="sh"
                                    :value="sh"
                                >
                                    {{ sh }}
                                </option>
                            </select>
                            <span class="ml-1" style="font-size: 20px"
                                >entries</span
                            >
                        </div>
                        <div class="end:flex">
                            <input
                                type="search"
                                class="input px:width-25"
                                placeholder="Search"
                                v-model="searchInput"
                                @keyup="searchEvent"
                            />
                        </div>
                    </div>
                    <!-- end of showpaginationoption and search option  -->
                    <div class="table-responsive">
                        <table class="table table-centered mb-0 table-nowrap">
                            <thead class="thead-light">
                                <tr>
                                    <th
                                        v-for="column in columns"
                                        :key="column.name"
                                    >
                                        {{ column.text }}
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr
                                    v-for="row in filteredEntries"
                                    :key="row.id"
                                >
                                    <td>{{ row.id }}</td>
                                    <td>{{ row.name }}</td>
                                    <td>
                                        <img
                                            :src="row.profile_photo"
                                            alt="product-img"
                                            title="product-img"
                                            class="avatar-md"
                                        />
                                    </td>
                                    <td>
                                        {{
                                            row.designation.substr(0, 60) +
                                            "..."
                                        }}
                                    </td>
                                    <td>{{ row.employee_id }}</td>
                                    <td>{{ row.email }}</td>
                                    <td>{{ row.phone_number }}</td>
                                    <td>
                                        <a
                                            href="javascript:void(0);"
                                            @click.prevent="
                                                deleteDeveloper(row.id)
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
                    <div class="between:flex my-3 mx-3">
                        <div
                            style="font-size: 20px; font-weight: bold"
                            class="text-secondary"
                        >
                            Show {{ showInfo.from }} to {{ showInfo.to }} of
                            {{ showInfo.of }} entries
                        </div>
                        <div class="end:flex">
                            <ul class="pagination:nav">
                                <li
                                    :class="[
                                        'nav-item',
                                        { disabled: currentPage == 1 },
                                    ]"
                                >
                                    <a
                                        href="#"
                                        class="nav-link"
                                        @click.prevent="
                                            (currentPage = 1), paginateEntries()
                                        "
                                    >
                                        First
                                    </a>
                                </li>
                                <li
                                    :class="[
                                        'nav-item',
                                        { disabled: currentPage == 1 },
                                    ]"
                                >
                                    <a
                                        href="#"
                                        class="nav-link"
                                        @click.prevent="
                                            currentPage < 1
                                                ? (currentPage = 1)
                                                : (currentPage -= 1),
                                                paginateEntries()
                                        "
                                    >
                                        Prev
                                    </a>
                                </li>
                                <li
                                    class="nav-item"
                                    v-for="pagi in showPagination"
                                    :key="pagi"
                                    :class="{
                                        ellipsis: pagi === '...',
                                        active: pagi === currentPage,
                                    }"
                                >
                                    <a
                                        href="#"
                                        @click.prevent="paginateEvent(pagi)"
                                        class="nav-link"
                                        >{{ pagi }}</a
                                    >
                                </li>
                                <li
                                    :class="[
                                        'nav-item',
                                        { disabled: currentPage == allPages },
                                    ]"
                                >
                                    <a
                                        href="#"
                                        class="nav-link"
                                        @click.prevent="
                                            currentPage > allPages
                                                ? (currentPage = allPages)
                                                : (currentPage += 1),
                                                paginateEntries()
                                        "
                                    >
                                        Next
                                    </a>
                                </li>
                                <li
                                    :class="[
                                        'nav-item',
                                        { disabled: currentPage == allPages },
                                    ]"
                                >
                                    <a
                                        href="#"
                                        class="nav-link"
                                        @click.prevent="
                                            (currentPage = allPages),
                                                paginateEntries()
                                        "
                                    >
                                        Last
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <AddDeveloper
        @hideAddDeveloperModal="showAddModal = false"
        @newDeveloperAdded="getSoftwareTeamList(), (showAddModal = false)"
        v-if="showAddModal"
    ></AddDeveloper>
    <EditDeveloper
        @updateDeveloper="getSoftwareTeamList(), (showEditModal = false)"
        @hideEditDeveloperModal="showEditModal = false"
        :developer_id="developer_id"
        v-if="showEditModal"
    ></EditDeveloper>
</template>

<script>
import { $array } from "alga-js";
import SoftwareTeamApi from "../api/SoftwareTeamApi.js";
import EditDeveloper from "./softwareteammodals/EditDeveloper.vue";
import AddDeveloper from "./softwareteammodals/AddDeveloper.vue";
import Swal from "sweetalert2";
import GetAdmin from "../mixins/GetAdmin";
export default {
    components: { EditDeveloper, AddDeveloper },
    mixins: [GetAdmin],
    data() {
        return {
            columns: [
                { name: "id", text: "Id" },
                { name: "name", text: "Name" },
                { name: "profile_photo", text: "Profile Photo" },
                { name: "designation", text: "Designation" },
                { name: "employee_id", text: "Employee Id" },
                { name: "email", text: "Email" },
                { name: "phone_number", text: "Phone Number" },
                { name: "action", text: "Action" },
            ],
            softwareTeamList: [],
            filteredEntries: [],
            showEntries: [5, 10, 15, 25, 50, 100, 200],
            currentEntries: 10,
            currentPage: 1,
            allPages: 1,
            searchEntries: [],
            searchInput: "",
            showEditModal: false,
            showAddModal: false,
            developer_id: 0,
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
    },
    methods: {
        getSoftwareTeamList() {
            SoftwareTeamApi.lists()
                .then(({ data: { softwareTeamList } }) => {
                    console.log(softwareTeamList);
                    this.softwareTeamList = softwareTeamList;
                    this.paginateData(this.softwareTeamList);
                })
                .catch((error) => {
                    console.log(error);
                });
        },
        getCurrentList() {
            return this.searchEntries.length == 0 &&
                this.searchInput.length == 0
                ? this.softwareTeamList
                : this.searchEntries;
        },

        //update current page according to select page
        paginateEvent(page) {
            this.currentPage = page;
            this.paginateEntries();
        },
        searchEvent() {
            this.currentPage = 1;
            this.paginateEntries();
        },

        ///paginate entries for paginate data
        paginateEntries() {
            //check if searchInput is given
            if (this.searchInput.length >= 1) {
                // this.searchEntries = $array.search(this.searchInput)(this.leaveList);
                this.searchEntries = $array.searchBy(this.searchInput)(
                    this.softwareTeamList,
                    this.getColumns
                );
                this.paginateData(this.searchEntries);
            }
            //else get value from original Leaves list and then paginate
            else {
                this.paginateData(this.softwareTeamList);
            }
        }, //end method

        //paginate data.......
        paginateData(data) {
            //paginates entries from total list
            this.filteredEntries = $array.paginate(
                data,
                this.currentPage,
                this.currentEntries
            );
            //get pages according current entries
            this.allPages = $array.pages(data, this.currentEntries);
        },
        setShowEditModal(developer_id) {
            this.showEditModal = true;
            this.developer_id = developer_id;
        },
        deleteDeveloper(developer_id) {
            if (!confirm("Are you Sure You want to delete this ?")) {
                return;
            }
            SoftwareTeamApi.delete(developer_id)
                .then(({ data: { success } }) => {
                    Swal.fire("success", success, "success");
                    this.getSoftwareTeamList();
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
    },
    mounted() {
        this.GetAdmin();
        this.getSoftwareTeamList();
        document.title = "View Software Team List | Admin | Excel IT AI";
    },
};
</script>
