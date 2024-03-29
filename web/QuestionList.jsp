<%-- 
    Document   : QuestionList
    Created on : 24 Jun 2022, 16:58:40
    Author     : adrianadewunmi
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="oes.model.QuestionsDao"%>
<%@page import="oes.db.*"%>
<%@page import="java.util.ArrayList"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="indexStyle.css"/>
    <title>Question List</title>
  </head>
  <body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <center><h3><pre><font color="blue">List of all questions</font></pre></h3></center>
        <table class="table table-bordered table-hover">
            <tr tr class="table-dark">
             <th>s no.</th>
             <th>Question</th>
             <th>Option A </th>
             <th>Option B </th>
             <th>Option C </th>
             <th>Option D </th>
             <th>Correct Answer</th>
             <th>Update</th>
             <th>Delete</th>
            </tr>
            <tr>
                <%
                    int i = 0;
                    ArrayList<Questions> allQuestions = QuestionsDao.getAllRecords();
                   for(Questions e : allQuestions)
                   {   
                   %>
                    <tr>
                   <td><%=i++%></td>
                   <td><%=e.getQuestion() %></td>
                   <td><%=e.getA()%></td>
                   <td><%=e.getB()%></td>
                   <td><%=e.getC()%></td>
                   <td><%=e.getD()%></td>
                   <td><%=e.getAnswer()%></td>
                   <td><a href="updatequestion.jsp?ques=<%=e.getQuestion()%>">Update</a></td>
                   <td><a href="deletequestion.jsp?ques=<%=e.getQuestion()%>">Delete</a></td>
                   </tr>
                   <%
                   }
                %>
            <th colspan="4"  ><center><input type="button" value="Add Question" class="btn btn-outline-success" onclick="location.href='AddQuestion.jsp'"></center></th>
            <th><input type="hidden"></th>
            <th colspan="4"  ><center><input type="button" class="btn btn-outline-danger" value="Back to Panel" onclick="location.href='AdminPanel.jsp'"></center></th>
        </table>
        <div class="footer">
        <footer>
             � 2022 Examily, Inc. 
        </footer>
      </div>
    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
