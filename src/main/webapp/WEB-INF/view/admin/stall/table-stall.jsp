<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Stalls</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
            <style>
                body {
                    font-family: 'Arial', sans-serif;
                    background-color: #f4f4f4;
                }

                .container {
                    margin-top: 50px;
                }

                h1 {
                    text-align: center;
                    margin-bottom: 30px;
                    color: #333;
                }

                .table {
                    background-color: #fff;
                    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                    border-radius: 8px;
                }

                .table th {
                    background-color: #007bff;
                    color: #fff;
                    font-weight: bold;
                    text-align: center;
                }

                .table td {
                    text-align: center;
                    vertical-align: middle;
                }

                .table-striped tbody tr:nth-of-type(odd) {
                    background-color: rgba(0, 0, 0, 0.05);
                }

                .update-date {
                    font-size: 14px;
                    color: #666;
                    margin-bottom: 10px;
                }
            </style>
        </head>

        <body>
            <div class="container mt-5">
                <h1>Stalls</h1>
                <a href="/admin/stalls/create" class="btn btn-primary mb-3">Create New Stall</a>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Stall Name</th>
                            <th>Location</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${stalls}" var="stall">
                            <tr>
                                <td>${stall.stallId}</td>
                                <td>${stall.stallName}</td>
                                <td>${stall.location}</td>
                                <td>
                                    <a href="/admin/stalls/edit/${stall.stallId}"
                                        class="btn btn-warning btn-sm">Edit</a>
                                    <a href="/admin/stalls/delete/${stall.stallId}" class="btn btn-danger btn-sm"
                                        onclick="return confirm('Are you sure you want to delete this stall?')">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </body>

        </html>