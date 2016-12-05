
<%@ page import="digitalmediarecords.VideoReleased" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'videoReleased.label', default: 'VideoReleased')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-videoReleased" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-videoReleased" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list videoReleased">
			
				<g:if test="${videoReleasedInstance?.completed}">
				<li class="fieldcontain">
					<span id="completed-label" class="property-label"><g:message code="videoReleased.completed.label" default="Completed" /></span>
					
						<span class="property-value" aria-labelledby="completed-label"><g:link controller="videoCompleted" action="show" id="${videoReleasedInstance?.completed?.id}">${videoReleasedInstance?.completed?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoReleasedInstance?.duration}">
				<li class="fieldcontain">
					<span id="duration-label" class="property-label"><g:message code="videoReleased.duration.label" default="Duration" /></span>
					
						<span class="property-value" aria-labelledby="duration-label"><g:fieldValue bean="${videoReleasedInstance}" field="duration"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoReleasedInstance?.releasedDate}">
				<li class="fieldcontain">
					<span id="releasedDate-label" class="property-label"><g:message code="videoReleased.releasedDate.label" default="Released Date" /></span>
					
						<span class="property-value" aria-labelledby="releasedDate-label"><g:formatDate date="${videoReleasedInstance?.releasedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoReleasedInstance?.reviewer}">
				<li class="fieldcontain">
					<span id="reviewer-label" class="property-label"><g:message code="videoReleased.reviewer.label" default="Reviewer" /></span>
					
						<span class="property-value" aria-labelledby="reviewer-label"><g:link controller="user" action="show" id="${videoReleasedInstance?.reviewer?.id}">${videoReleasedInstance?.reviewer?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:videoReleasedInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${videoReleasedInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
