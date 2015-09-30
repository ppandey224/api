<%--
  Created by IntelliJ IDEA.
  User: Ruby
  Date: 9/25/2015
  Time: 2:39 PM
--%>

<%@ page import="com.dwit.research.begnas.api.Subject" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add Questions</title>
</head>
<body>

<g:form action="addQuestions" controller="dashboard" method="post">

    Question: <g:textArea name="question" required="required"/> <br/>

    <!--For Options-->
    <g:each in="${(1..<5)}" var="i">
        Option ${i} : <g:textField name="option${i}" required="required" class="options"/> <br/>
    </g:each>

    Subject: <g:select name="questionSubject"
                          from="${com.dwit.research.begnas.api.Subject.list()}"
                          optionValue="subject"
                          optionKey="id" noSelection="['':'Choose Subject']" required="required"/>
    <br/><br/>

    <em>Correct Answer: </em><br/>
    <!--For correct answer-->
    <g:each in="${(1..<5)}" var="i">
        <input type="radio" name="correct_answer" value="${i}" id="rdo_option${i}"/> <label for="rdo_option${i}">Option ${i}</label><br/>
    </g:each>

    <g:submitButton name="Next"/>
</g:form>

</body>
</html>