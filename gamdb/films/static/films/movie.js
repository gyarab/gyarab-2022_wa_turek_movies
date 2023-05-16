let csrftoken;
function setCsrf(csrf) {
  csrftoken = csrf;
}
function addComment() {
  let data = {
    author: $("#id_author").val(),
    text: $("#id_text").val(),
    rating: $("#id_rating").val(),
  };
  $.ajax({
    url: "",
    headers: { "X-CSRFToken": csrftoken },
    mode: "same-origin",
    type: "post",
    data: data,
    success: function (response) {
      displayComment(response);
    },
    error: function (response) {
      displayErrors(response.responseJSON);
    },
  });
}
function displayComment(data) {
  if (data.rating != null) {
    data.rating = data.rating + "%";
  } else {
    data.rating = "";
  }
  $("#alert").addClass("d-none");
  $(".container").append(
    (document.createElement("p").innerHTML =
      "<strong>" +
      data.author +
      "</strong>" +
      ", " +
      data.created_at +
      "</br>" +
      data.text +
      " " +
      data.rating +
      "</br>")
  );
  document.getElementById("form").reset();
  $("#addComment").collapse("hide");
}
function displayErrors(data) {
  let alert = $("#alert");
  alert.removeClass("d-none");
  for (let [element, er] of Object.entries(data.errors)) {
    alert.append(element + ": " + er + "</br>");
  }
}
