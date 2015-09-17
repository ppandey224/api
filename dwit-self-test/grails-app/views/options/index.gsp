<%@ page import="com.dwit.research.begnas.api.Options" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'options.label', default: 'Options')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-options" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-options" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="option1" title="${message(code: 'options.option1.label', default: 'Option1')}"/>

            <g:sortableColumn property="option2" title="${message(code: 'options.option2.label', default: 'Option2')}"/>

            <g:sortableColumn property="option3" title="${message(code: 'options.option3.label', default: 'Option3')}"/>

            <g:sortableColumn property="option4" title="${message(code: 'options.option4.label', default: 'Option4')}"/>

            <th><g:message code="options.question.label" default="Question"/></th>

        </tr>
        </thead>
        <tbody>
        <g:each in="${optionsInstanceList}" status="i" var="optionsInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${optionsInstance.id}">${fieldValue(bean: optionsInstance, field: "option1")}</g:link></td>

                <td>${fieldValue(bean: optionsInstance, field: "option2")}</td>

                <td>${fieldValue(bean: optionsInstance, field: "option3")}</td>

                <td>${fieldValue(bean: optionsInstance, field: "option4")}</td>

                <td>${fieldValue(bean: optionsInstance, field: "question")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${optionsInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
