<%--

    ********************************************************************
    Code developed by amazing QCADOO developers team.
    Copyright (c) Qcadoo Limited sp. z o.o. (2010)
    ********************************************************************

--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<tiles:useAttribute name="component" />
<tiles:useAttribute name="componentFullName" ignore="true"/>
<tiles:useAttribute name="componentFullNameWithDots" ignore="true"/>
<tiles:useAttribute name="viewName" ignore="true"/>
<tiles:useAttribute name="pluginIdentifier" ignore="true"/>

<div class="component component_container component_container_window" id="${componentFullName}">
	<div class=element_options style="display: none">
		${component.optionsAsJson}
	</div>
	
	<div class="windowContainer">
		<div class="windowContainerRibbon">
			<div id="${componentFullName}_windowContainerRibbon">
			</div>
		</div>
		<div class="windowContainerContentBody" id="${componentFullName}_windowContainerContentBody">
			<div id="${componentFullName}_windowContainerContentBodyWidthMarker" style=" z-index: 5000;"></div>
			<div class="windowContent" id="${componentFullName}_windowContent">
				<c:if test="${component.jspOptions['header']}">
					<div class="windowHeader" id="${componentFullName}_windowHeader"></div>
				</c:if>
				<div class="windowComponents" id="${componentFullName}_windowComponents">
					<c:forEach items="${component.components}" var="componentEntry">
						<tiles:insertTemplate template="../component.jsp">
							<tiles:putAttribute name="component" value="${componentEntry.value}" />
							<tiles:putAttribute name="parentComponentFullName" value="${componentFullName}" />
							<tiles:putAttribute name="parentComponentFullNameWithDots" value="${componentFullNameWithDots}" />
							<tiles:putAttribute name="viewName" value="${viewName}" />
							<tiles:putAttribute name="pluginIdentifier" value="${pluginIdentifier}" />
						</tiles:insertTemplate>
					</c:forEach>
				</div>
			</div>
			
		</div>
	</div>
	
</div>


