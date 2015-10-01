%{--
     jBilling - The Enterprise Open Source Billing System
   Copyright (C) 2003-2011 Enterprise jBilling Software Ltd. and Emiliano Conde

   This file is part of jbilling.
   
   jbilling is free software: you can redistribute it and/or modify
   it under the terms of the GNU Affero General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   jbilling is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU Affero General Public License for more details.
   
   You should have received a copy of the GNU Affero General Public License
   along with jbilling.  If not, see <http://www.gnu.org/licenses/>.
 
  --}%

<div id="${filter.name}">
    <span class="title <g:if test='${filter.value}'>active</g:if>"><g:message
            code="filters.${filter.field}.title"/></span>
    <g:remoteLink class="delete" controller="filter" action="remove" params="[name: filter.name]" update="filters"/>

    <div class="slide">
        <fieldset>
            <div class="input-row">
                <div class="select-filter">
                    <g:select name="filters.${filter.name}.integerValue"
                              from="${[[value:0,label:message(code:'prompt.no')], [value:1,label:message(code:'prompt.yes')]]}"
                              optionKey="value"
                              optionValue="label"
                              value="${filter.integerValue}"/>
                </div>
                <label for="filters.${filter.name}.integerValue"><g:message code="filters.deleted.label"/></label>
            </div>
        </fieldset>
    </div>
</div>
