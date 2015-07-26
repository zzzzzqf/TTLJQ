<!DOCTYPE html>
<html class="jp-pc w1200">
<head>
<include file="public:head" />

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
				<li><a <if condition="$spid eq $bcate['id']">class="active"</if> href="{:U('index/cate', array('cid'=>$bcate['id']))}" title="{$bcate.name}">{$bcate.name}</a></li>	
				</if>
				</volist>
				</ul>
			</div>
		</div>
		</div>
	</div>

<include file="public:lunbo" />      
<div class="main w1200">
<include file="public:bar" /> 

<include file="public:itemlist" /> 

<!--文章系统start-->
<center>
  <div class="bottom1">
    <div class="bottom_tp">
      <span>最新文章</span>
      <a class="kanmore" href="{:U('article/index')}" target="_blank">
        <b class="txt">查看更多</b>
      </a>
    </div>
    <div class="mains2">
      <div class="content_text" style="margin: auto 20px">
        <ul>
        <volist name="article" id="data">
          	<li>
                <a href="{:U('article/read',array('id'=>$data['id']))}" target="_blank">{$data['title']}</a>
                <span>{$data['add_time']|date="Y-m-d",###}</span>
            </li>
        </volist>
        </ul>          
      </div>
      <div class="clr"></div>
    </div>
  </div>
</center>
<!--文章系统end-->

<div class="intBrand w1200">
      <div class="tit"><h2>您可能感兴趣的标签</h2><a href="{:U('tag/index')}" target="_blank">标签购物 &gt;</a></div>
 
    </div>	
	<div id="ju_tags_search" class="w1200">
    <ul>
<ftx:tag type="lists" num="50">
<volist name="data" id="tag">
<li><a href="{:U('tag/view',array('k'=>$tag['ename']))}" target="_blank">{$tag.name}</a></li>
</volist>
</ftx:tag> 
    </ul>
  </div>
</div>


<include file="public:footer" />
<script>
$('.J_lazy').preview(); 
$('.J_lazys').previews(); 
</script>
</body>
</html>