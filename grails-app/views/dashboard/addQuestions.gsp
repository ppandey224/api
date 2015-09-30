<%--
  Created by IntelliJ IDEA.
  User: Ruby
  Date: 9/25/2015
  Time: 2:39 PM
--%>

<%@ page import="com.dwit.research.begnas.api.Subject" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>
<body>

<g:form action="addQuestions" controller="dashboard" method="post">
    Question: <g:textArea name="question" required="required"/> <br/>
    Option 1: <g:textField name="option1" required="required"/> <br/>
    Option 2: <g:textField name="option2" required="required"/> <br/>
    Option 3: <g:textField name="option3" required="required"/><br/>
    Option 4: <g:textField name="option4" required="required"/><br/><br/>
    Subject: <g:select name="questionSubject"
                          from="${com.dwit.research.begnas.api.Subject.list()}"
                          optionValue="subject"
                          optionKey="id" noSelection="['':'Choose Subject']" required="required"/>
    <br/><br/>
    <em>Correct Answer: </em><br/>
    <g:radioGroup values="['1', '2', '3', '4']" labels="['Option 1', 'Option 2', 'Option 3', 'Option 4']" name="correct_answer" required="required">
        <p>${it.label} ${it.radio}</p>
    </g:radioGroup>

    <g:submitButton name="Next"/>
</g:form>

</body>
</html>