
<%@ page import="digitalmediarecords.VideoCompleted" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'videoCompleted.label', default: 'VideoCompleted')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-videoCompleted" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-videoCompleted" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list videoCompleted">
			
				<g:if test="${videoCompletedInstance?.dateCompleted}">
				<li class="fieldcontain">
					<span id="dateCompleted-label" class="property-label"><g:message code="videoCompleted.dateCompleted.label" default="Date Completed" /></span>
					
						<span class="property-value" aria-labelledby="dateCompleted-label"><g:formatDate date="${videoCompletedInstance?.dateCompleted}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoCompletedInstance?.recorded}">
				<li class="fieldcontain">
					<span id="recorded-label" class="property-label"><g:message code="videoCompleted.recorded.label" default="Recorded" /></span>
					
						<span class="property-value" aria-labelledby="recorded-label"><g:link controller="videoRecorded" action="show" id="${videoCompletedInstance?.recorded?.id}">${videoCompletedInstance?.recorded?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoCompletedInstance?.targetReleaseDate}">
				<li class="fieldcontain">
					<span id="targetReleaseDate-label" class="property-label"><g:message code="videoCompleted.targetReleaseDate.label" default="Target Release Date" /></span>
					
						<span class="property-value" aria-labelledby="targetReleaseDate-label"><g:formatDate date="${videoCompletedInstance?.targetReleaseDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoCompletedInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="videoCompleted.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${videoCompletedInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:videoCompletedInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${videoCompletedInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
