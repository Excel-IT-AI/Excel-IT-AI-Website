import Api from "./Api.js";

export default {
    lists() {
        return Api().get("/media/list");
    },
    show(media_id) {
        return Api().get(`/media/show/${media_id}`);
    },
    store(form) {
        return Api().post("/media/store", form);
    },
    update(form, media_id) {
        return Api().post(`/media/update/${media_id}`, form);
    },
    delete(media_id) {
        return Api().delete(`/media/delete/${media_id}`);
    },
};
