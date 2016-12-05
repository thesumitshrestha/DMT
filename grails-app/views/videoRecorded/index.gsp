
<%@ page import="digitalmediarecords.VideoRecorded" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'videoRecorded.label', default: 'VideoRecorded')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-videoRecorded" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-videoRecorded" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="status" title="${message(code: 'videoRecorded.status.label', default: 'Status')}" />
					
						<th><g:message code="videoRecorded.assignedTo.label" default="Assigned To" /></th>
					
						<g:sortableColumn property="chapter" title="${message(code: 'videoRecorded.chapter.label', default: 'Chapter')}" />
					
						<g:sortableColumn property="classes" title="${message(code: 'videoRecorded.classes.label', default: 'Classes')}" />
					
						<th><g:message code="videoRecorded.recordedBy.label" default="Recorded By" /></th>
					
						<g:sortableColumn property="recordedDate" title="${message(code: 'videoRecorded.recordedDate.label', default: 'Recorded Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${videoRecordedInstanceList}" status="i" var="videoRecordedInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${videoRecordedInstance.id}">${fieldValue(bean: videoRecordedInstance, field: "status")}</g:link></td>
					
						<td>${fieldValue(bean: videoRecordedInstance, field: "assignedTo")}</td>
					
						<td>${fieldValue(bean: videoRecordedInstance, field: "chapter")}</td>
					
						<td>${fieldValue(bean: videoRecordedInstance, field: "classes")}</td>
					
						<td>${fieldValue(bean: videoRecordedInstance, field: "recordedBy")}</td>
					
						<td><g:formatDate date="${videoRecordedInstance.recordedDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${videoRecordedInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
