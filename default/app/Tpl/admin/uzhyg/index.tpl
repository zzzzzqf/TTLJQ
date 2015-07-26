<include file="public:header" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<div class="subnav">
<h1 class="title_2 line_x">会员购U站采集</h1>
</div>
<div class="pad_lr_10">
    <form id="J_info_form" action="{:U('uzhyg/setting')}" method="post">
    <table width="100%" cellspacing="0" class="table_form">       
		
		<tr>
           <th width="150">会员购分类 :</th>
           <td>
           <select name="cat_id">
			<option value="cid_1">女装</option>
			<option value="cid_2">男装</option>		
            <option value="cid_4">母婴</option>
			<option value="cid_3">鞋包</option>	
			<option value="cid_207">美食</option>			
			<option value="cid_6">家居</option>	
			<option value="stid_186">九块九包邮</option>
			<option value="cid_158">其他分类</option>								
            </select>
			<span class="red ml10">必选，请选择需要采集的会员购分类。</span>
           </td>
        </tr>	
		<tr>
            <th width="150">分批采集范围 :</th>
           <td>           
            <input type="text" name="start" size="5" class="input-text" value="0"/> - 
            <input type="text" name="end" size="5" class="input-text" value="240"/> 
            <span class="red ml10">起止范围：0-10表示采集前10件商品，以此类推，最高240</span>                      
           </td>
        </tr>
        <tr>
            <th width="150">入库分类 :</th>
            <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}"></select>
			<span class="red ml10">必选，请选择采集后要写入的分类。</span>
			</td>			
        </tr>
       <tr>
          <th>设置开始时间 :</th>
          <td><input type="text" name="coupon_start_time" id="coupon_start_time"  class="date" value="<?php echo $showtime=date("Y-m-d H:i:s");?>"/></td>
          </tr>
        <tr>
           <th>设置结束时间 :</th>
           <td><input type="text" name="coupon_end_time" id="coupon_end_time" class="date" value="<?php echo $now = date('Y-m-d H:i:s',strtotime('next week')); ?>"/></td>
        </tr>		
        <tr>
            <th></th>
            <td><input type="submit" value="开始采集" name="dosubmit" class="smt mr10"></td>
        </tr>
    </table>
    <input type="hidden" name="cate_id" id="J_cate_id" value="0" />	
    </form>
	<br><br>
	<h2>友情提示：本插件是直接采集淘宝U站---会员购的商品［<a href="http://huiyuangou.uz.taobao.com" target="_blank">http://huiyuangou.uz.taobao.com</a>］。</h2>
	<br><br><br>
</div>
<include file="public:footer" />
<script>
$(function(){
    var collect_url = "{:U('uzhyg/collect')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'uzhyg', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.ftxia.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('uzhyg').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('uzhyg').close();
                $.ftxia.tip({content:result.msg});
            }
        });
    }
    $('.J_cate_select').cate_select({field:'J_cate_id'});
});
</script>
<script language="javascript" type="text/javascript">
	                        Calendar.setup({
	                            inputField     :    "coupon_start_time",
	                            ifFormat       :    "%Y-%m-%d %H:%M",
	                            showsTime      :    'true',
	                            timeFormat     :    "24"
	                        });
</script>
<script language="javascript" type="text/javascript">
	                        Calendar.setup({
	                            inputField     :    "coupon_end_time",
	                            ifFormat       :    "%Y-%m-%d %H:%M",
	                            showsTime      :    'true',
	                            timeFormat     :    "24"
	                        });
</script>

</body>
</html>