<!DOCTYPE html>
<html lang="en">
<head>
<include file='public:c_head'/>
</head>
<body>
<div class="wrapper">
  <div class="main"> 
   <include file='public:c_header'/> 
   <div id="goods">
     <ul class="grid effect-2" id="grid">
        <volist name='items_list' id='item'>
          <li> <a target="_blank"  href="{:C('ftx_site_url')}{:U('jump/index',array('id'=>$item['id']))}"> <img class="lazy" src="{:attach(get_thumb($item['pic_url'], '_m'),'item')}" _src="__STATIC__/wap/images/blank.gif" /> <if condition='$item["shop_type"] eq "B"'><img class="tmall" src="__STATIC__/wap/images/tmall.png" /></if></a><a target="_blank"  href="{:C('ftx_site_url')}{:U('jump/index',array('id'=>$item['id']))}">
            <h1>{$item.title}</h1></a>
            <a target="_blank"  href="{:C('ftx_site_url')}{:U('jump/index',array('id'=>$item['id']))}">
            <div class="info"> <span class="price"><i>￥</i>{$item.coupon_price}</span><span class="been_sold">{$item.volume}</span> </div>
            </a> </li>
        </volist>
      </ul>
      <div class="paging">
        <div class="paging_nav"> {$page} </div>
      </div>
    </div>
  </div>
  <include file='public:footer'/> 
</div>
</body>
</html>