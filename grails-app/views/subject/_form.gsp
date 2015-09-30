<%@ page import="com.dwit.research.begnas.api.Subject" %>



<div class="fieldcontain ${hasErrors(bean: subjectInstance, field: 'subject', 'error')} required">
	<label for="subject">
		<g:message code="subject.subject.label" default="Subject" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subject" required="" value="${subjectInstance?.subject}"/>

</div>

