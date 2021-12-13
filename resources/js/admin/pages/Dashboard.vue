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
                <h4 class="mb-0 font-size-18">Dashboard</h4>

                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- end page title -->
    <div>
        <h3>Welcome to your Dashboard</h3>
    </div>
</template>

<script>
import GetAdmin from "../mixins/GetAdmin";
export default {
    mixins: [GetAdmin],
    mounted() {
        this.GetAdmin();
        document.title = "Dashboard | Admin | Excel IT AI";
    },
};
</script>
