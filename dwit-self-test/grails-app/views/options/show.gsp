<%@ page import="com.dwit.research.begnas.api.Options" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'options.label', default: 'Options')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-options" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-options" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list options">

        <g:if test="${optionsInstance?.option1}">
            <li class="fieldcontain">
                <span id="option1-label" class="property-label"><g:message code="options.option1.label"
                                                                           default="Option1"/></span>

                <span class="property-value" aria-labelledby="option1-label"><g:fieldValue bean="${optionsInstance}"
                                                                                           field="option1"/></span>

            </li>
        </g:if>

        <g:if test="${optionsInstance?.option2}">
            <li class="fieldcontain">
                <span id="option2-label" class="property-label"><g:message code="options.option2.label"
                                                                           default="Option2"/></span>

                <span class="property-value" aria-labelledby="option2-label"><g:fieldValue bean="${optionsInstance}"
                                                                                           field="option2"/></span>

            </li>
        </g:if>

        <g:if test="${optionsInstance?.option3}">
            <li class="fieldcontain">
                <span id="option3-label" class="property-label"><g:message code="options.option3.label"
                                                                           default="Option3"/></span>

                <span class="property-value" aria-labelledby="option3-label"><g:fieldValue bean="${optionsInstance}"
                                                                                           field="option3"/></span>

            </li>
        </g:if>

        <g:if test="${optionsInstance?.option4}">
            <li class="fieldcontain">
                <span id="option4-label" class="property-label"><g:message code="options.option4.label"
                                                                           default="Option4"/></span>

                <span class="property-value" aria-labelledby="option4-label"><g:fieldValue bean="${optionsInstance}"
                                                                                           field="option4"/></span>

            </li>
        </g:if>

        <g:if test="${optionsInstance?.question}">
            <li class="fieldcontain">
                <span id="question-label" class="property-label"><g:message code="options.question.label"
                                                                            default="Question"/></span>

                <span class="property-value" aria-labelledby="question-label"><g:link controller="question"
                                                                                      action="show"
                                                                                      id="${optionsInstance?.question?.id}">${optionsInstance?.question?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: optionsInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${optionsInstance}"><g:message code="default.button.edit.label"
                                                                                        default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
