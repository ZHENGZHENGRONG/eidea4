<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/inc/taglib.jsp" %>
<div class="container-fluid" ng-controller="editCtrl">
    <form role="form" name="editForm" novalidate  ng-submit="save()">
        <jsp:include page="/common/common_edit_button.jsp"/>
        <div class="row-fluid">
            <div class="span12">
                <br>
                    <div class="form-group">
                        <label for="key"><%--键值--%><eidea:label key="label.keyvalue"/></label>
                        <input type="text" class="form-control" id="key" ng-model="messageBo.key" placeholder="<eidea:message key="label.input.keyvalue"/>" required ng-minlength="2" ng-maxlength="100" ng-disabled="!messageBo.created">
                    </div>
                    <div class="form-group">
                        <label for="msgtext"><%--信息--%><eidea:label key="label.message"/></label>
                        <input type="text" class="form-control" id="msgtext" placeholder="<eidea:message key="label.input.message"/>" ng-model="messageBo.msgtext" required ng-minlength="2" ng-maxlength="500">
                    </div>
                    <div class="form-group">
                        <label for="isactive"><%--是否有效--%> <eidea:label key="base.whetherEffective"/><input type="checkbox" class="form-control" id="isactive"   ng-true-value="'Y'" ng-false-value="'N'" ng-model="messageBo.isactive"  ></label>

                    </div>
                    <div>
                        <p><%--消息翻译--%><eidea:label key="message.message.translation"/></p>
                        <table id="international_list"  class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th><%--序号</--%><eidea:label key="base.serialNumber"/></th><th>language</th><th><%--名称--%><eidea:label key="datadict.column.name"/></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr ng-repeat="messageTrl in messageBo.messageTrlBoList track by $index">
                                <td>{{$index+1}}</td>
                                <td>
                                    <input type="text" readonly ng-model="messageTrl.lang">
                                </td>
                                <td  class="form-group">
                                    <input type="text" required ng-model="messageTrl.msgtext" >
                                </td>

                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="form-group">
                        <p class="text-center" style="color: red">
                            {{message}}
                        </p>
                    </div>
            </div>
        </div>
    </form>
    <jsp:include page="/common/common_upload.jsp"/>
</div>