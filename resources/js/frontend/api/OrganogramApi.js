import Api from "./Api";
export default {
    getOrganogram() {
        return Api().get("organogram");
    },
};
