<%-- 
    Document   : AddQuestion
    Created on : 6 Jul 2022, 11:20:30
    Author     : adrianadewunmi
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="bootstrap.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="indexStyle.css"/>
    <title>Add Question</title>
  </head>
  <body>
        <h2><font  face = "WildWest" color="blue">Enter Questions Here</font></h2>
        <form action="oes.controller.QuestionInsert">
        <pre>
        Question:    <input type="text" name="Question">

        Option A:     <input type="text" name="option1">

        Option B:     <input type="text" name="option2">

        Option C:     <input type="text" name="option3">

        Option D:     <input type="text" name="option4">

        Answer:      <select name="answer">
                     <option value="a">a</option>
                     <option value="b">b</option>
                     <option value="c">c</option>
                     <option value="d">d</option>
                     </select>

                     <input type="submit" value="Done" class="btn btn-outline-primary">    <input type="button" onclick="location.href='AdminPanel.jsp'" value="Home" class="btn btn-outline-success">    <input type="button" onclick="location.href='QuestionList.jsp'" value="Back" class="btn btn-outline-danger">
        </pre>
        </form>
        <div>
        <font color="red" >
        <%
			if(request.getParameter("msg2") != null)
				out.print(request.getParameter("msg2"));
		%>
		</font>
			<font color="green" >
		<%
			if(request.getParameter("msg1") != null)
				out.print(request.getParameter("msg1"));
		%>
		</font>
	</div>
        <div class="footer">
        <footer>
             � 2022 Examily, Inc. 
        </footer>
      </div>
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  </body>
</html>

