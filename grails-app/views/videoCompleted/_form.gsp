<%@ page import="digitalmediarecords.VideoCompleted" %>



<div class="fieldcontain ${hasErrors(bean: videoCompletedInstance, field: 'dateCompleted', 'error')} required">
	<label for="dateCompleted">
		<g:message code="videoCompleted.dateCompleted.label" default="Date Completed" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateCompleted" precision="day"  value="${videoCompletedInstance?.dateCompleted}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: videoCompletedInstance, field: 'recorded', 'error')} required">
	<label for="recorded">
		<g:message code="videoCompleted.recorded.label" default="Recorded" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="recorded" name="recorded.id" from="${digitalmediarecords.VideoRecorded.list()}" optionKey="id" required="" value="${videoCompletedInstance?.recorded?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoCompletedInstance, field: 'targetReleaseDate', 'error')} required">
	<label for="targetReleaseDate">
		<g:message code="videoCompleted.targetReleaseDate.label" default="Target Release Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="targetReleaseDate" precision="day"  value="${videoCompletedInstance?.targetReleaseDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: videoCompletedInstance, field: 'url', 'error')} required">
	<label for="url">
		<g:message code="videoCompleted.url.label" default="Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="url" required="" value="${videoCompletedInstance?.url}"/>

</div>

