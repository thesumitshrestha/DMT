
<%@ page import="digitalmediarecords.VideoCompleted" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'videoCompleted.label', default: 'VideoCompleted')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-videoCompleted" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-videoCompleted" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dateCompleted" title="${message(code: 'videoCompleted.dateCompleted.label', default: 'Date Completed')}" />
					
						<th><g:message code="videoCompleted.recorded.label" default="Recorded" /></th>
					
						<g:sortableColumn property="targetReleaseDate" title="${message(code: 'videoCompleted.targetReleaseDate.label', default: 'Target Release Date')}" />
					
						<g:sortableColumn property="url" title="${message(code: 'videoCompleted.url.label', default: 'Url')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${videoCompletedInstanceList}" status="i" var="videoCompletedInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${videoCompletedInstance.id}">${fieldValue(bean: videoCompletedInstance, field: "dateCompleted")}</g:link></td>
					
						<td>${fieldValue(bean: videoCompletedInstance, field: "recorded")}</td>
					
						<td><g:formatDate date="${videoCompletedInstance.targetReleaseDate}" /></td>
					
						<td>${fieldValue(bean: videoCompletedInstance, field: "url")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${videoCompletedInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
