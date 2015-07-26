<!DOCTYPE html>
<html class="jp-pc w1200">
<head>
<include file="public:head" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/pg-zhe-main.css" />
</head>
<body>
<include file="public:header" />
<notempty name="tag_list"> 
<div class="jiu-nav-main ">
    <div class="subNav">
        <ul>            
			<volist name="tag_list" id="bcate">	
					<li><a <if condition="$tag eq $bcate['id']">class="active"</if> href="{:U('shijiu/index',array('tag'=>$bcate['id']))}" title="{$bcate.name}">{$bcate.name}</a></i>
				</volist>
        </ul>
    </div>
</div>
</notempty>
<div class="main w1200">
<include file="public:itemlist" /> 
</div>
<include file="public:footer" />
</body>
</html>