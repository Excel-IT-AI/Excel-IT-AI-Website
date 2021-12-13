import Api from "./Api.js";

export default {
    lists() {
        return Api().get("/organogram/list");
    },
    show(organogram_id) {
        return Api().get(`organogram/show/${organogram_id}`);
    },
    store(form) {
        return Api().post("organogram/store", form);
    },
    update(form, organogram_id) {
        return Api().post(`organogram/update/${organogram_id}`, form);
    },
    delete(organogram_id) {
        return Api().delete(`/organogram/delete/${organogram_id}`);
    },
};
