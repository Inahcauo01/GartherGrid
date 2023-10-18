//Form Categorys Modal
const form_categorys = document.forms["form_categorys"];
const add_country = document.querySelector("#add-event");
const update_country = document.querySelector("#update-event");
// add
function addCategory() {
    //clear
    form_categorys.reset();

    // action changes
    form_categorys.action = add_country.value;

    //btn save
    form_categorys.save.innerHTML = "Save";
}
// edite
function editCategory(id, username, email, job){
    // action changes
    form_categorys.action = update_country.value;

    form_categorys.id.value = id;
    form_categorys.username.value = username;
    form_categorys.email.value = email;
    form_categorys.job.value = job;

    //btn save
    form_categorys.save.innerHTML = "Update";

    //remove required picture -> 'if using picture you must remove required because you don't need change picture'
    form_categorys.picture.removeAttribute('required');

}

// remove methode PUT
