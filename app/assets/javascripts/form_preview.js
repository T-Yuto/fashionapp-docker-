// multiple preview jquery
// $(function () {

//     let cnt = 0;
//     let tmpId = "tmp-" + cnt;

//     let loop = (e, id) => {
//         const setParent = $(e.target).parent()
//         for (let file of e.target.files) {
//             imgPreview(file, id, setParent)
//         }
//         tmpId = "tmp-" + ++cnt;
//     }

//     let imgPreview = (file, id, parent) => {
//         let preview = $("preview-" + id);
//         let previewImages = $(tmpId);
//         let reader = new FileReader();
//         let parents = parent.children(".previews");

//         if (previewImages != null) {
//             parents.children().remove();
//         }
//         reader.onload = function (e) {
//             let img = document.createElement("img");
//             const div = document.createElement("div");

//             $(img).attr("src", reader.result);
//             $(img).attr("id", "previewImage-" + id);
//             $(img).attr("class", tmpId);

//             parents.append($(div));
//             $(div).append($(img));
//         };
//         reader.readAsDataURL(file);
//     }

//     $("form").on("change", "input", function (e) {
//         loop(e, this.id);
//     });

// });

$(function () {
    let buildEditBtn = (id) => {
        html = `<label for= "#{id}">編集</label>`
        return html;
    }
    let buildDeleteBtn = () => {
        html = `<label>削除</label>`
        return html;
    }
    let buildPreviewField = (index) => {
        html = `<div data-index= "${index}" class= "preview"></div>`
        return html;
    }
    let buildPreviewImg = (url) => {
        html = `<img src= "${url}">`
        return html;
    }
    let setPreview = (id, index, file, ) => {
        const preview = buildEditBtn(id);
        const img = document.createElement("img");
        const editBtn = document.createElement("label");
        const deleteBtn = document.createElement("label");
        $(editBtn).html("編集")
        $(parent).append($(preview).append($(img), $(editBtn), $(deleteBtn)));
    }
    $("form").on("change", "input", function (e) {
        debugger
        const id = e.target.id
        const index = 
        setPreview(e.target);
    })
})