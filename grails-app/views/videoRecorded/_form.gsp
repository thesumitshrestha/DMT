<%@ page import="digitalmediarecords.VideoRecorded" %>
<script>
	$(document).ready(function(){
		$("#paymentMoneyDiv").hide();
	});

	function statusChanged(){
		document.getElementById("paymentMoney").value = '';
		if($("#stsChanged").val()=="Closed"){
			document.getElementById("paymentMoneyDiv").style.display="block";
			document.getElementById("paymentMoneyDiv").hidden = false;
		}
		else {
			$("#paymentMoneyDiv").hide()
		}
	}
</script>
<div class="form-group "  hidden="hidden" id="paymentMoneyDiv">
	<label for="inputName">Payment Money Rs.</label>
	<input type="number"  class="form-control" name="paymentMoney" id="paymentMoney">
</div>


<div class="fieldcontain ${hasErrors(bean: videoRecordedInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="videoRecorded.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="status" onchange="statusChanged()" id="stsChanged" from="${videoRecordedInstance.constraints.status.inList}" required="" value="${videoRecordedInstance?.status}" valueMessagePrefix="videoRecorded.status"/>
</div>



<div class="fieldcontain ${hasErrors(bean: videoRecordedInstance, field: 'assignedTo', 'error')} required">
	<label for="assignedTo">
		<g:message code="videoRecorded.assignedTo.label" default="Assigned To" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="assignedTo" name="assignedTo.id" from="${digitalmediarecords.User.list()}" optionKey="id" required="" value="${videoRecordedInstance?.assignedTo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoRecordedInstance, field: 'chapter', 'error')} required">
	<label for="chapter">
		<g:message code="videoRecorded.chapter.label" default="Chapter" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="chapter" required="" value="${videoRecordedInstance?.chapter}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoRecordedInstance, field: 'classes', 'error')} required">
	<label for="classes">
		<g:message code="videoRecorded.classes.label" default="Classes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="classes" type="number" value="${videoRecordedInstance.classes}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoRecordedInstance, field: 'recordedBy', 'error')} required">
	<label for="recordedBy">
		<g:message code="videoRecorded.recordedBy.label" default="Recorded By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="recordedBy" name="recordedBy.id" from="${digitalmediarecords.User.list()}" optionKey="id" required="" value="${videoRecordedInstance?.recordedBy?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoRecordedInstance, field: 'recordedDate', 'error')} required">
	<label for="recordedDate">
		<g:message code="videoRecorded.recordedDate.label" default="Recorded Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="recordedDate" precision="day"  value="${videoRecordedInstance?.recordedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: videoRecordedInstance, field: 'subject', 'error')} required">
	<label for="subject">
		<g:message code="videoRecorded.subject.label" default="Subject" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subject" required="" value="${videoRecordedInstance?.subject}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoRecordedInstance, field: 'teacher', 'error')} required">
	<label for="teacher">
		<g:message code="videoRecorded.teacher.label" default="Teacher" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="teacher" name="teacher.id" from="${digitalmediarecords.User.list()}" optionKey="id" required="" value="${videoRecordedInstance?.teacher?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoRecordedInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="videoRecorded.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${videoRecordedInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoRecordedInstance, field: 'unit', 'error')} required">
	<label for="unit">
		<g:message code="videoRecorded.unit.label" default="Unit" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="unit" required="" value="${videoRecordedInstance?.unit}"/>

</div>

