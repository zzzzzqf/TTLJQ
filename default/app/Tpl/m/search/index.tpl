<!DOCTYPE html>
<html lang="en">
<head>
<include file='public:head'/>
</head>
<body>
<div class="main">
<div class="app">
<include file='public:header'/>
<div class='sort'>
<a href="{:U('index/index',array('sort'=>'new'))}"><span <if condition="$index_info['sort'] eq 'new'"> class='cur' </if> >最新发布</span></a>
<a href="{:U('index/index',array('sort'=>'hot'))}"><span <if condition="$index_info['sort'] eq 'hot'"> class='cur' </if> >点击最高</span></a>
<a href="{:U('index/index',array('sort'=>'price'))}"><span <if condition="$index_info['sort'] eq 'price'"> class='cur' </if> >价格最低</span></a>
<a href="{:U('index/index',array('sort'=>'rate'))}"><span <if condition="$index_info['sort'] eq 'rate'"> class='cur' </if> >折扣最低</span></a>
</div>
<div id="goods">
<div id="cover"></div>
<div id="dwon"></div>
<ul class="goods-list clear">
<volist name='items_list' id='item'>
<li>
<if condition="$item.class eq 'wait'">
<a class="goods-a">
<img class="lazy" src="{:attach(get_thumb($item['pic_url'], '_m'),'item')}" _src="__STATIC__/wap/images/blank.gif" />
{$item.coupon_start_time|mnewicon}
</a><a><h1>{$item.title}</h1></a>
<a>
<div class="list-price buy">
<span class="price-new"><i>￥</i>{$item.coupon_price}</span><i class="del">￥{$item.price}</i>
<span class="good-btn">即将开始</span>
</div>
</a>
<else />
<a class="goods-a" target="_blank"  href="{:U('jump/index',array('id'=>$item['id']))}">
<img class="lazy" src="{:attach(get_thumb($item['pic_url'], '_m'),'item')}" _src="__STATIC__/wap/images/blank.gif" />
{$item.coupon_start_time|mnewicon}
</a><a target="_blank"  href="{:U('jump/index',array('id'=>$item['id']))}"><h1>{$item.title}</h1></a>
<a target="_blank"  href="{:U('jump/index',array('id'=>$item['id']))}">
<div class="list-price buy">
<span class="price-new"><i>￥</i>{$item.coupon_price}</span><i class="del">￥{$item.price}</i>
<span class="good-btn"><if condition="$item.shop_type eq 'C' ">淘宝抢购</if><if condition="$item.shop_type eq 'B' ">天猫抢购</if></span>
</div>
</a>
</if>
</li>
</volist>
</ul>
<div class="paging">
<div class="paging-nav next">
{$page}
</div>    
</div>
</div>        
<include file='public:footer'/>
</div>
</body>
</html>