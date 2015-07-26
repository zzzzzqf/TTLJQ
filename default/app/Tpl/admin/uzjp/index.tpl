<include file="public:header" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<div class="subnav">
    <h1 class="title_2 line_x">卷皮尺官网和U站采集</h1>
</div>
<div class="pad_lr_10">
    <form id="J_info_form" action="{:U('uzjp/setting')}" method="post">
    <table width="100%" cellspacing="0" class="table_form">
	    <tr>
            <th width="150">采集源 :</th>
			<td>
            <select name="fors">		   
			<option value="1">卷皮官网</option>
			<option value="2">卷皮U站</option>			
            </select>
			</td>
        </tr>
		<tr>
            <th width="150">选择卷皮尺U站分类 :</th>
            <td><select class="J_uzjp_select mr10" data-pid="0" data-uri="{:U('uzjp_cate/ajax_getchilds', array('type'=>0))}"></select>
			</td>
        </tr>
        <tr>
            <th width="150">选择本站对应分类 :</th>
            <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}"></select></td>
        </tr>
		<tr>
            <th width="150">性别 :</th>
           <td>
           <select name="sex">
		   <option value="0">无</option>
			<option value="1">男</option>
			<option value="2">女</option>			
            </select>
            <span class="red ml10">采集官网的服饰，请注意选择男女性能，否则采集容易分类错误</span>    
           </td>
        </tr>
		<tr>
            <th width="150">分批采集范围 :</th>
           <td>           
            <input type="text" name="start" size="5" class="input-text" value="0"/> - 
            <input type="text" name="end" size="5" class="input-text" value="10"/> 
            <span class="red ml10">分批采集起止范围，U站最高90，官网最高120</span>                      
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
	<input type="hidden" name="uzjp_cate_id" id="J_uzjp_cate_id" value="0" />
    </form>
	<br><br>
	<h2>分批采集解释：0-10表示每页只采集前10条数据，这样可以减少请求的数量避免卡机，第一轮采集完成之后，再修改分批范围为10-20，表示第二轮将只采集每页的第10-20条数据，以此类推。</h2>
</div>
<include file="public:footer" />
<script>
$(function(){
    var collect_url = "{:U('uzjp/collect')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'uzjp', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.ftxia.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('uzjp').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('uzjp').close();
                $.ftxia.tip({content:result.msg});
            }
        });
    }
    //分类联动
	$('.J_uzjp_select').uzjp_select({field:'J_uzjp_cate_id'});
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