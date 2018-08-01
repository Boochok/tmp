<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="springboot.demo.model.Article" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.Collections" %>

<%
    ArrayList<Article> articles = new ArrayList<>();
    articles.add((new Article("title1", "author1", "text1",
            Collections.singletonList(new Article("title1.1", "author1.1", "text1.1", null)))));
    articles.add(new Article("title2", "author2", "text2", null));
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <title>Recommendation results</title>
</head>
<body>
<div class="container">

    <hr class="my-4">
    <% if (articles != null && !articles.isEmpty()) {%>
    <%}%>

    <br/><br/><br/><strong><h3>Found results: <%= articles.size()%>
</h3></strong><br/>
    <table class="table table-striped">
        <thead>
        <tr>
            <th></th>
            <th>Title</th>
            <th>Author</th>
            <th>Text</th>
        </tr>
        </thead>
        <tbody>
        <%
            for (Article article : articles) {
                int idx = articles.indexOf(article);
        %>
        <tr>
            <td><%= (idx + 1) %>
            </td>
            <td><%= article.getTitle() %>
            </td>
            <td><%= article.getAuthor() %>
            </td>
            <td><%= article.getText() %>
            </td>
        </tr>

        <table id="duplicates" class="table table-striped">
            <tr class="breakrow" aria-colspan="4">
                <a role="button">Duplicates</a>
            </tr>
            <%
                if (article.getDuplicates() != null && article.getDuplicates().isEmpty()) {
                    for(Article dupl : article.getDuplicates()) {
            %>
            <tr>
                <td><%= dupl.getTitle()%></td>
                <td><%= dupl.getAuthor()%></td>
                <td><%= dupl.getText()%></td>
            </tr>
            <%}%>
        </table>
        <%}%>
        <%}%>
        </tbody>
    </table>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script>
    $( document ).ready(function() {

        //collapse and expand sections

        // $('.breakrow').click(function(){
        $('#duplicates').on('click', 'tr.breakrow',function(){
            $(this).nextUntil('tr.breakrow').slideToggle(200);
        });
    });
</script>


</body>
</html>
