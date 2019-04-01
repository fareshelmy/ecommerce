<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

            <div class="product-status mg-b-30">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="product-status-wrap">
                                <h4>All Users</h4>

                                <table>
                                    <tr>
                                        <th>User Name</th>
                                        <th>Total orders</th>
                                        <th>Setting</th>
                                    </tr>
                                    <c:forEach items="${requestScope.users}" var="user">
                                        <tr>
                                            <td>${user.username}</td>
                                            <c:set var = "userOrderNumber" value = "${user.orders}"/> 
                                            <td> ${fn:length(userOrderNumber)}</td>
                                            <td>
                                                <button data-toggle="tooltip" title="Edit" class="pd-setting-ed"><a href="user-detail.jsp?userId=${user.email}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></button>
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
            