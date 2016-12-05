<%@ page import="digitalmediarecords.VideoReleased" %>



<div class="fieldcontain ${hasErrors(bean: videoReleasedInstance, field: 'completed', 'error')} required">
	<label for="completed">
		<g:message code="videoReleased.completed.label" default="Completed" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="completed" name="completed.id" from="${digitalmediarecords.VideoCompleted.list()}" optionKey="id" required="" value="${videoReleasedInstance?.completed?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoReleasedInstance, field: 'duration', 'error')} required">
	<label for="duration">
		<g:message code="videoReleased.duration.label" default="Duration" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="duration" required="" value="${videoReleasedInstance?.duration}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoReleasedInstance, field: 'releasedDate', 'error')} required">
	<label for="releasedDate">
		<g:message code="videoReleased.releasedDate.label" default="Released Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="releasedDate" precision="day"  value="${videoReleasedInstance?.releasedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: videoReleasedInstance, field: 'reviewer', 'error')} required">
	<label for="reviewer">
		<g:message code="videoReleased.reviewer.label" default="Reviewer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="reviewer" name="reviewer.id" from="${digitalmediarecords.User.list()}" optionKey="id" required="" value="${videoReleasedInstance?.reviewer?.id}" class="many-to-one"/>

</div>

