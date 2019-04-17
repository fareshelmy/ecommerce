function deleteFun(itemId){
    
 swal({
        title: "Are you sure?",
        text: "Once deleted, you will not be able to recover this product!",
        icon: "warning",
        buttons: true,
        dangerMode: true,
    })
            .then((willDelete) => {
                if (willDelete) {
                  $.ajax({url: 'EditProductServlet' + "?productIdDeleted=" + itemId, //servlet url
                        type: 'GET',
                        success: function (data) {
                            window.location.reload()
                            console.log("Donnnnne");
                        },
                        error: function (data) {
                            console.log("Errrrorr");
                        }
                    });
                    swal("Poof! Your imaginary file has been deleted!", {
                        icon: "success",
                    });
                     
                } else {
                    swal("You are cancle Delete!");
                }
            });

};

