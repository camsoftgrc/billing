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

<g:applyLayout name="form/input">
    <content tag="label"><g:message code="${field.name}"/><g:if test="${field.mandatory}"><span id="mandatory-meta-field">*</span></g:if></content>
    <content tag="label.for">metaField_${field.id}.value</content>

    <g:textField name="metaField_${field.id}.value"
                 class="field text {validate:{ digits:true, messages: {digits: ' ${g.message(code:"metafield.integer.valid",args:[field.name]) }' }}}"
                 value="${fieldValue}"/>
</g:applyLayout>
%{--
class="field text {validate:{ digits:true, messages: {digits: ${message(code:'metafield.integer.valid',args:[field.name] ) }}}}"
--}%
