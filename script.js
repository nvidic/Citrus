$(document).ready(function () {

    // $("#komentar_dugme").click(function(){
    //     //prikazujemo /skrivamo formu
    //     $("#komentar").slideToggle(1000);

    // });

    $("#addComment").click(function () {

        var name = $("#name").val();
        var email = $("#email").val();
        var comment = $("#comment").val();

        var re = new RegExp("@gmail\.com$");

        if (re.test(email) == false) {
            window.alert("Wrong email address!");
            return;
        }

        if (comment.length > 200) {
            window.alert("Comment too long!");
            return;
        }

        $.ajax({
            url: "addComment.php",
            method: "GET",
            data: { name: name, email: email, comment: comment },
            success: function (result) {
                window.alert(result);
            }
        });

    });

});
