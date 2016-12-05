
<%@ page import="digitalmediarecords.VideoRecorded" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'videoRecorded.label', default: 'VideoRecorded')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-videoRecorded" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-videoRecorded" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list videoRecorded">
			
				<g:if test="${videoRecordedInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="videoRecorded.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${videoRecordedInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoRecordedInstance?.assignedTo}">
				<li class="fieldcontain">
					<span id="assignedTo-label" class="property-label"><g:message code="videoRecorded.assignedTo.label" default="Assigned To" /></span>
					
						<span class="property-value" aria-labelledby="assignedTo-label"><g:link controller="user" action="show" id="${videoRecordedInstance?.assignedTo?.id}">${videoRecordedInstance?.assignedTo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoRecordedInstance?.chapter}">
				<li class="fieldcontain">
					<span id="chapter-label" class="property-label"><g:message code="videoRecorded.chapter.label" default="Chapter" /></span>
					
						<span class="property-value" aria-labelledby="chapter-label"><g:fieldValue bean="${videoRecordedInstance}" field="chapter"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoRecordedInstance?.classes}">
				<li class="fieldcontain">
					<span id="classes-label" class="property-label"><g:message code="videoRecorded.classes.label" default="Classes" /></span>
					
						<span class="property-value" aria-labelledby="classes-label"><g:fieldValue bean="${videoRecordedInstance}" field="classes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoRecordedInstance?.recordedBy}">
				<li class="fieldcontain">
					<span id="recordedBy-label" class="property-label"><g:message code="videoRecorded.recordedBy.label" default="Recorded By" /></span>
					
						<span class="property-value" aria-labelledby="recordedBy-label"><g:link controller="user" action="show" id="${videoRecordedInstance?.recordedBy?.id}">${videoRecordedInstance?.recordedBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoRecordedInstance?.recordedDate}">
				<li class="fieldcontain">
					<span id="recordedDate-label" class="property-label"><g:message code="videoRecorded.recordedDate.label" default="Recorded Date" /></span>
					
						<span class="property-value" aria-labelledby="recordedDate-label"><g:formatDate date="${videoRecordedInstance?.recordedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoRecordedInstance?.subject}">
				<li class="fieldcontain">
					<span id="subject-label" class="property-label"><g:message code="videoRecorded.subject.label" default="Subject" /></span>
					
						<span class="property-value" aria-labelledby="subject-label"><g:fieldValue bean="${videoRecordedInstance}" field="subject"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoRecordedInstance?.teacher}">
				<li class="fieldcontain">
					<span id="teacher-label" class="property-label"><g:message code="videoRecorded.teacher.label" default="Teacher" /></span>
					
						<span class="property-value" aria-labelledby="teacher-label"><g:link controller="user" action="show" id="${videoRecordedInstance?.teacher?.id}">${videoRecordedInstance?.teacher?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoRecordedInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="videoRecorded.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${videoRecordedInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoRecordedInstance?.unit}">
				<li class="fieldcontain">
					<span id="unit-label" class="property-label"><g:message code="videoRecorded.unit.label" default="Unit" /></span>
					
						<span class="property-value" aria-labelledby="unit-label"><g:fieldValue bean="${videoRecordedInstance}" field="unit"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:videoRecordedInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${videoRecordedInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
