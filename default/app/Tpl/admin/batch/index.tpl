<include file="public:header" />
<!--添加商品-->
<div class="subnav">
<div class="pad_10" >
  <div class="explain_col">添加到分类：
   <select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}" data-selected="">
   </select>
    <input type="hidden" name="cate_id" id="J_cate_id" value="" />    
    开始时间:
    <input type="text" name="time_start" id="J_time_start" class="date" size="16" value='<?php echo date("Y-m-d H:i",time());?>'>
    有效期：<input type='text' name='valid' id='valid' value='5' class='input-text' size='2'/>天&nbsp;&nbsp;
  </div>
</div>
<div class="pad_lr_10">
  <div class="col_tab">
    <ul class="J_tabs tab_but cu_li">
      <li class="current">商品链接（<strong style="color:red">每行一个</strong>）</li>
    </ul>
    <div class="J_panes">
    <div class="content_list pad_10">
    <table width="100%" cellpadding="2" cellspacing="1" class="table_form">  
       <tr>
            <th width="150">选择性别 :</th>
           <td>
           <select id="sex" name="sex">
		   <option value="0">无</option>
			<option value="1">男</option>
			<option value="2">女</option>			
            </select>
           </td>
        </tr>	
      <tr>
          <th>请输入商品链接:</th>
          <td><textarea name="url" id="url" style="width:80%;height:500px"></textarea></td>
       </tr>
    </table>
    </div>
  </div>
    <div class="mt10">
      <input type="button" value="清空列表" id="clearurl" class="smt mr10" style="margin:0 0 10px 250px;">
       <input type="button" value="开始采集" id="dourl" class="smt mr10" style="margin:0 0 10px 100px;">
    </div>
  </div>
</div>

<include file="public:footer" />
<link rel="stylesheet" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script src="__STATIC__/js/calendar/calendar.js"></script>
<script type="text/javascript">
  $('.J_cate_select').cate_select('请选择');
  $('#clearurl').click(function(){
  $('#url').val('');
  });
  Calendar.setup({
  inputField : "J_time_start",
  ifFormat   : "%Y-%m-%d %H:%M",
  showsTime  : true,
  timeFormat : "24"
});
</script>
<script type="text/javascript">
  var ffxia = {
    sysurl : '{:U("batch/sysurl")}',
    addurl : '{:U("batch/addurl")}'
  };
  $('#dourl').click(function(){
      var cid = $('#J_cate_id').val();      
      var start = $('#J_time_start').val();
      var url = $('#url').val();
      var valid = $('#valid').val();    
	  var sex = $('#sex').val();
      if(cid==0) {
        $.ftxia.tip({content:'请选择分类 ！'});
        return;
      }
      if(!url){
        $.ftxia.tip({content:'至少有一个商品链接'});
        return;
      }
      $.post(ffxia.sysurl,{cid:cid,start:start,url:url,sex:sex,valid:valid},function(m){
         if(m.status==1){
            $.dialog({id:'tips', title:m.msg, content:m.data.data, padding:'10',lock:true});
            setTimeout('ffx_additems("'+m.data.flag+'")',3000);
         }else{
          $.ftxia.tip({content:'商品链接分析失败！',icon:'alert'});
         }
      })
  });

function ffx_additems(flag){
 $.get(ffxia.addurl,{flag:flag},function(m){
   $.dialog.get('tips').close();
   if(m.status==1){
      $.dialog({id:'tips', title:m.msg, content:m.data.data, padding:'10',lock:true});
       setTimeout('ffx_additems("'+m.data.flag+'")',1000); 
   }else{
     $.ftxia.tip({content:m.msg,icon:'alert'});
   }
 });
 
}
</script>
</body>
</html>