<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<div class="product-status mg-b-30">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="product-status-wrap">
                    <h4>Products List</h4>
                    <div class="add-product">
                        <a href="product-edit.html">Add Product</a>
                    </div>
                    <table>
                        <tr>
                            <th>Product Image</th>
                            <th>Product Name</th>
                            <th>Purchases</th>
                            <th>Product Sales</th>
                            <th>Stock Status</th>
                            <th>Unit Price</th>
                            <th>Settings</th>
                        </tr>

                        <c:forEach items="${requestScope.products}" var="product">
                            <tr>
                                <td><a href="product-detail.html"><img src="${product.image}" alt="Image" /></a></td>
                                <td>${product.name}</td>
                                <td>${product.itemsSold}</td>
                                <td>EGP${product.itemsSold * product.price}</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${product.quantity == 0}">
                                            <c:out value="Out Of Stock"/>
                                        </c:when>
                                        <c:otherwise>
                                            <c:out value="In Stock"/>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>${product.price}</td>
                                <td>
                                    <button data-toggle="tooltip" title="Edit" class="pd-setting-ed"><a href="admin/viewProductServlet?productId=${product.id}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></button>
                                    <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
                                </td>
                            </tr>
                        </c:forEach>


                    </table>
                    <div class="custom-pagination">
                        <ul class="pagination">
                            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
