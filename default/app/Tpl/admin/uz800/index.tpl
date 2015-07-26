<include file="public:header" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<div class="subnav">
    <h1 class="title_2 line_x">折800-U站采集</h1>
</div>

<div class="pad_lr_10">
    <form id="J_info_form" action="{:U('uz800/setting')}" method="post">
    <table width="100%" cellspacing="0" class="table_form">
		<tr>
            <th width="150">选择折800U站分类 :</th>
            <td><select class="J_uz800_select mr10" data-pid="0" data-uri="{:U('uz800_cate/ajax_getchilds', array('type'=>0))}"></select></td>
        </tr>
        <tr>
            <th width="150">选择本站对应分类 :</th>
            <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}"></select></td>
        </tr>
		<tr>
            <th width="150">分批采集范围 :</th>
           <td>           
            <input type="text" name="start" size="5" class="input-text" value="0"/> - 
            <input type="text" name="end" size="5" class="input-text" value="10"/> 
            <span class="red ml10">分批采集起止范围，最高150</span>                      
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
	<input type="hidden" name="uz800_cate_id" id="J_uz800_cate_id" value="0" />
    </form>
	<br><br>
	<h2>友情提示：本插件是直接采集折800官方U站的商品，由于折800官方U站的商品标题经过人工修改，标题中带有大量推广内容，所以插件需要进一步获取商品原标题，并同时获取商品真实销量和正方形主图，同步获取卖家旺旺和卖家数字ID。采集过程中会自动过虑已存在的商品和信息不完整的商品，所以运行过程时间会长一点，视服务器配置情况而定，如果响应时间过长，请刷新后重新采集，或重启服务器重新采集，建议选择网络不繁忙的时段进行采集。</h2>
</div>
<include file="public:footer" />
<script>
$(function(){
    var collect_url = "{:U('uz800/collect')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'uz800', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.ftxia.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('uz800').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('uz800').close();
                $.ftxia.tip({content:result.msg});
            }
        });
    }
    //分类联动
	$('.J_uz800_select').uz800_select({field:'J_uz800_cate_id'});
    $('.J_cate_select').cate_select({field:'J_cate_id'});
});
</script>

<script language="javascript" type="text/javascript">
	                        Calendar.setup({
	                            inputField     :    "coupon_start_time",
	                            ifFormat       :    "%Y-%m-%d %H:%M:%S",
	                            showsTime      :    'true',
	                            timeFormat     :    "24"
	                        });
</script>
<script language="javascript" type="text/javascript">
	                        Calendar.setup({
	                            inputField     :    "coupon_end_time",
	                            ifFormat       :    "%Y-%m-%d %H:%M:%S",
	                            showsTime      :    'true',
	                            timeFormat     :    "24"
	                        });
</script>
</body>
</html>