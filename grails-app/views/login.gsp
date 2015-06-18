<!doctype html>
<html>
    <head>
        <meta  name="layout" content="main">
        <title>用户登录窗口</title>
    </head>
    <body>
        <div class='container-fluid'>
            <div class="row">
                <div class='col-md-8'>
                    <g:render template="/templates/carousel"/>
                </div>
                <div class='col-md-4'>
                    <form action="/login" method="post">

                        <g:if test="${params.error != null}">
                            <div class='alert alert-danger'>
                                <p>用户名或者密码错误</p>
                            </div>
                        </g:if>
                        <g:if test="${params.logout != null}">
                            <div class='alert alert-danger'>
                                <p>你已经退出帐号</p>
                            </div>
                        </g:if>                       
                        <div  class="form-group">
                            <label for="username">用户名</label>
                            <input class='form-control' type="text" id="username" name="username" placeholder='请输入用户名'/>
                        </div>
                        <div class='form-group'>
                            <label for="password">密&nbsp;&nbsp;&nbsp;码</label>
                            <input class='form-control' type="password" id="password" name="password" placeholder="请输入密码"/>
                        </div>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <button type="submit" class='btn btn-info'>登&nbsp;&nbsp;录</button>
                        <button type='reset' class='btn btn-default'>重&nbsp;&nbsp;置</button>
                    </form>
                </div>
            </div>
        </div>
</html>
