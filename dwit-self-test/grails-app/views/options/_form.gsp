<%@ page import="com.dwit.research.begnas.api.Options" %>



<div class="fieldcontain ${hasErrors(bean: optionsInstance, field: 'option1', 'error')} required">
    <label for="option1">
        <g:message code="options.option1.label" default="Option1"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="option1" required="" value="${optionsInstance?.option1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: optionsInstance, field: 'option2', 'error')} required">
    <label for="option2">
        <g:message code="options.option2.label" default="Option2"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="option2" required="" value="${optionsInstance?.option2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: optionsInstance, field: 'option3', 'error')} required">
    <label for="option3">
        <g:message code="options.option3.label" default="Option3"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="option3" required="" value="${optionsInstance?.option3}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: optionsInstance, field: 'option4', 'error')} required">
    <label for="option4">
        <g:message code="options.option4.label" default="Option4"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="option4" required="" value="${optionsInstance?.option4}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: optionsInstance, field: 'question', 'error')} required">
    <label for="question">
        <g:message code="options.question.label" default="Question"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="question" name="question.id" from="${com.dwit.research.begnas.api.Question.list()}" optionKey="id"
              required="" value="${optionsInstance?.question?.id}" class="many-to-one"/>

</div>

