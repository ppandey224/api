<%--
  Created by IntelliJ IDEA.
  User: ppandey
  Date: 9/23/15
  Time: 1:01 PM
--%>
<html>

<head>
    <title><g:message code='spring.security.ui.registrationMessage.header'/></title>
    <meta name='layout' content='register'/>
</head>

<body>

<p/>

<s2ui:form width='400' height='220' elementId='registrationMsgFormContainer'
           titleCode='spring.security.ui.registrationMessage.header' center='true'>

    <g:form action='auth' name="registrationMsgForm" controller="login" autocomplete='off'>
        <br/><br/>
        <label>Your registration has been successful! You have been logged in.</label>
        <br/>
        <s2ui:submitButton elementId='dash' form='registrationMsgForm' messageCode='spring.security.ui.registrationMessage.submit'/>



    </g:form>
</s2ui:form>

</body>
</html>