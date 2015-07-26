<div id="head">
<div class="fixtop">
<span id="find"><i class="ico08"><img src="__STATIC__/wap/images/ss1.png" width="29px" /></i></span>
<span id="index"><i class="ico07"><img src="__STATIC__/wap/images/111.png" width="52px" /></i></span>
<span id="user"><i class="ico10">共 {$total_item} 件</i></i></span>
</div>
<ul class="head-nav">
<a href="{:C('ftx_header_html')}"><li <if condition='$nav_curr eq index'>class="active"</if>>首页</li></a>
<a href="{:U('tmall/index')}"><li <if condition='$nav_curr eq tmall'>class="active"</if>>天猫精品</li></a>
<a href="{:U('jiu/index')}"><li <if condition='$nav_curr eq jiu'>class="active"</if>>9.9包邮</li></a>
<a href="{:U('shijiu/index')}"><li <if condition='$nav_curr eq shijiu'>class="active"</if>>19.9包邮</li></a>
</ul>

<div id="nav" class="view currents out">
<div id="search-box">
<form method="get" action="{:C('ftx_header_html')}" id="search-form">
<div class="box-search">
<span class="icon-search icon"></span>
<input type="hidden" name="m" value="search">
<input type="hidden" name="a" value="index">
<input x-webkit-speech type="text"  placeholder="请输入商品关键字" autocomplete="off" value="" name="k" id="k"/>
<span id="delete-search" class="delete-button" style="display: none;">
<i class="ico20"><img src="__STATIC__/wap/images/X.png"/></i></span>
</div>
<button type="submit" >
<i class="ico01">
<img src="__STATIC__/wap/images/search-w.png"  />
<img class="active" src="__STATIC__/wap/images/search-o.png" style="display:none;" />
</i>
</button>
</form>
</div>
<ul class="nav-list">
<volist name="cate_data" id="bcate">
<if condition="$bcate['spid'] eq 0">				
<a href="{:U('index/cate', array('cid'=>$bcate['id']))}" title="{$bcate.name}"><li>{$bcate.name}</li></a>
</if>
</volist>
</ul>
</div>
</div>