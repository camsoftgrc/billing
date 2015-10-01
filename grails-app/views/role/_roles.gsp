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

<%@ page import="org.apache.commons.lang.StringEscapeUtils" contentType="text/html;charset=UTF-8" %>

<%--
  Shows a list of user roles.

  @author Brian Cowdery
  @since  02-Jun-2011
--%>

<div class="table-box">
    <table id="roles" cellspacing="0" cellpadding="0">
        <thead>
            <tr>
                <th><g:message code="role.th.name"/></th>
            </tr>
        </thead>

        <tbody>
            <g:each var="role" in="${roles}">

                <tr id="role-${role.id}" class="${selected?.id == role.id ? 'active' : ''}">
                    <td>
                        <g:remoteLink class="cell double" action="show" id="${role.id}" before="register(this);" onSuccess="render(data, next);">
                            <strong>${StringEscapeUtils.escapeHtml(role?.getTitle(session['language_id']))}</strong>
                            <em><g:message code="table.id.format" args="[role.id as String]"/></em>
                        </g:remoteLink>
                    </td>
                </tr>

            </g:each>
        </tbody>
    </table>
</div>
<div class="pager-box">
  <div class="row">
        <div class="results">
            <g:render template="/layouts/includes/pagerShowResults"
                      model="[steps: [10, 20, 50], update: 'column1']"/>
        </div>
    </div>

    <div class="row">
        <util:remotePaginate controller="role" action="${action ?: 'list'}"
                             params="${sortableParams(params: [partial: true])}"
                             total="${roles?.totalCount ?: 0}" update="column1"/>
    </div>
</div>
<div class="btn-box">
    <g:link action="edit" class="submit add">
        <span><g:message code="button.create"/></span>
    </g:link>
</div>