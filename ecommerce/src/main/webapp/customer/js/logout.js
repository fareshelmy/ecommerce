function processLogout() {


    Swal.fire({
        title: 'Are you sure?',
        text: "Are you sure you need to logout?",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#D10024',
        confirmButtonText: 'Yes, I am sure!'
    }).then((result) => {
        if (result.value) {
            window.location = "http://foodland-env-1.2hyy9yyf8i.us-east-2.elasticbeanstalk.com/logout";
            return false;
        }
    });
}