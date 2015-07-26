<div id="header">
  <div class="h_top"> 
   <span id="find_nav"><i><img src="__STATIC__/wap/images/ss1.png" width="29px" /></i></span> 
   <span id="logo"><i><img src="__STATIC__/wap/images/logo.png" width="52px" /></i></span> 
   <span id="find_search"><i><img src="__STATIC__/wap/images/search.png" width="29px" /></i></span> 
  </div>
  <div id="search_box" class="view currents out">
    <form method="get" action="{:C('ftx_header_html')}">
      <div class="search">
        <input x-webkit-speech type="text"  placeholder="请输入商品关键字" autocomplete="off" value="" name="k" id="key"/>
         <span id="delete_search" class="delete_button"><i><img src="__STATIC__/wap/images/X.png"/></i></span></div>
       <button type="submit" > <i> <img src="__STATIC__/wap/images/search-w.png" /></i> </button>
    </form>
  </div> 
  <div id="nav">
   <span id="close"></span>  
   <ul class="nav_list">
    <li><a href="/">首页</a></li>
    <volist name="cate_data" id="bcate">
      <if condition="($bcate['spid'] eq 0) AND ($cdi lt 9)">
      <?php $cdi++; ?>
       <li><a <if condition="$spid eq $bcate['id']">class="active"</if> href="{:U('index/cate', array('cid'=>$bcate['id']))}" title="{$bcate.name}">{$bcate.name}</a></li>	
      </if>
    </volist>
   </ul> 
  </div>
  
  <div id="cate_nav" class="cate_nav">
   <ul>
    <notempty name="subnav">
      <li><a href="{:U('index/cate', array('cid'=>$cinfo['pid']))}" class="active">全部</a></li>
      <volist name="subnav" id="bcate">
       <li><a href="{:U('index/cate', array('cid'=>$bcate['id']))}" title="{$bcate.name}">{$bcate.name}</a></i> 
      </volist>
    </notempty> 
   </ul>
  </div>
   
</div>
