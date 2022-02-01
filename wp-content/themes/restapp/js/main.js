var addBtn = document.querySelector("#quick-add-button");
var deleteBtn = document.querySelector(".quick-delete-button");

// Create post AJAX

if (addBtn) {
    addBtn.addEventListener("click", function() {
        var postData = {
            "title": document.querySelector("#post-title").value,
            "content": document.querySelector("#post-desc").value,
            // "_embedded": {
            //     "wp:term": [
            //         [{

            //             "link": `https:\/\/localhost\/restapp\/${document.querySelector("#category").value}\/`,
            //             "name": document.querySelector("#category").value,
            //             "slug": document.querySelector("#category").value,
            //             "taxonomy": "category",
            //         }]
            //     ]
            // },
            "categories": [document.querySelector("#category").value],
            "featured_media": document.querySelector("#media").value,
            "status": "publish"
        }
        var createPost = new XMLHttpRequest();
        createPost.open("POST", "http://localhost/restapp/wp-json/wp/v2/posts");
        createPost.setRequestHeader("X-WP-Nonce", customData.nonce);
        createPost.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
        createPost.send(JSON.stringify(postData));
        createPost.onreadystatechange = function() {
            if (createPost.readyState == 4) {
                if (createPost.status == 201) {
                    document.querySelector("#post-title").value = "";
                    document.querySelector("#post-desc").value = "";
                    document.querySelector("#category").value = "";
                    document.querySelector("#media").value = "";

                } else {
                    alert("Error has occured. Try again please.")
                }
            }
        }
    });
    if (deleteBtn) {
        deleteBtn.addEventListener("click", function() {
            var deletePost = new XMLHttpRequest();
            var postData = {
                "title": document.querySelector("#post-title").value,
                "status": "trash"
            }
            deletePost.open("DELETE", "http://localhost/restapp/wp-json/wp/v2/posts/112?force=true");
            deletePost.send(JSON.stringify(postData));

        });
    }
}