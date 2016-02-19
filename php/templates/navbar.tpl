<!-- 导航栏 -->
<nav class="navbar navbar-default navbar-static-top">
    <div id="navbar_div" class="container-fluid"> <!-- 加了这个div可以使Login不太靠向右边 -->
        <div class="navbar-header col-md-1">    <!-- 因为下面的内容框空出里一个列的宽度 -->
            <!--<a class="navbar-brand" href="."></a>-->
            <a href="index.php"><span class="text-info navbar-brand">xiaofud</span></a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="index.php">POSTS</a></li>
            <li><a href="#">PHOTOS</a></li>
            <li><a href="https://github.com/Hjsmallfly">GITHUB</a></li>
            <li><a href="#">ABOUT</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <!-- 这里需要根据session改变-->
            {if isset($smarty.session["logged"]) && $smarty.session["logged"] == true}
                <li><a href="addPost.php"><span class="glyphicon glyphicon-edit"></span> POST</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> {$smarty.session["username"]}</a></li>
                <li><a href="logout.php"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
            {else}
                <li><a href="login.php"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            {/if}

        </ul>
    </div>
</nav>
<!-- 导航栏 -->