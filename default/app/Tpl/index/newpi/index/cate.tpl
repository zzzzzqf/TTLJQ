<!DOCTYPE html>
<html class="jp-pc w1200">
<head>
<include file="public:head" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/pg-zhe-main.css" />
</head>
<body>
<include file="public:header" />
<div class="nav-main">
	<div class="main e-nav w1200">
		<div class="nav-item fl">
			<div class="item-list">
				<ul>
				<li><a href="{:C('ftx_site_url')}" <empty name="cid"> class="active"</empty>>全部</a></li>				
				<volist name="cate_data" id="bcate">	
				<if condition="$bcate['spid'] eq 0">
				<li><a <if condition="($cid eq $bcate['id']) OR ($cinfo['pid'] eq $bcate['id'])OR ($cinfo['spid'] eq $bcate['id'])">class="active"</if> href="{:U('index/cate', array('cid'=>$bcate['id']))}" title="{$bcate.name}">{$bcate.name}</a></li>	
				</if>
				</volist>
				</ul>
			</div>
		</div>
		</div>
	</div>
<notempty name="subnav"> 
<div class="jiu-nav-main ">
    <div class="subNav">
        <ul>           
			    <volist name="subnav" id="bcate"> 
					<li><a <if condition="$cid eq $bcate['id']">class="active"</if> href="{:U('index/cate', array('cid'=>$bcate['id']))}" title="{$bcate.name}">{$bcate.name}</a></li>
				</volist>
        </ul>
    </div>
</div>
</notempty>

<div class="main w1200">
<include file="public:itemlist" /> 
</div>
<include file="public:footer" />
<script src="__STATIC__/js/jquery/jquery.js"></script>
<script src="__STATIC__/newpi/js/preview.js"></script>
<script>
$('.J_lazy').preview(); 
$('.J_lazys').previews(); 
</script>
</body>
</html>