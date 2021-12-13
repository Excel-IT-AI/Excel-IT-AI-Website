import Api from "./Api";
export default {
    list() {
        return Api().get("/media/list/frontend");
    },
};
