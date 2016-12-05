
<%@ page import="digitalmediarecords.VideoReleased" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'videoReleased.label', default: 'VideoReleased')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-videoReleased" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-videoReleased" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="videoReleased.completed.label" default="Completed" /></th>
					
						<g:sortableColumn property="duration" title="${message(code: 'videoReleased.duration.label', default: 'Duration')}" />
					
						<g:sortableColumn property="releasedDate" title="${message(code: 'videoReleased.releasedDate.label', default: 'Released Date')}" />
					
						<th><g:message code="videoReleased.reviewer.label" default="Reviewer" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${videoReleasedInstanceList}" status="i" var="videoReleasedInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${videoReleasedInstance.id}">${fieldValue(bean: videoReleasedInstance, field: "completed")}</g:link></td>
					
						<td>${fieldValue(bean: videoReleasedInstance, field: "duration")}</td>
					
						<td><g:formatDate date="${videoReleasedInstance.releasedDate}" /></td>
					
						<td>${fieldValue(bean: videoReleasedInstance, field: "reviewer")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${videoReleasedInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
