<include file="public:header" />
<!--商品列表-->
<div class="subnav">
	<div class="content_menu ib_a blue line_x">
		发布时间 :
       <input type="text" name="time_start" id="J_time_start" class="date" size="12" value="<?php echo $now = date('Y-m-d',strtotime('last week')); ?>">
                    -
       <input type="text" name="time_end" id="J_time_end" class="date" size="12" value="<?php echo $showtime=date("Y-m-d",strtotime('next day'));?>">
       <input type="hidden" value="1" name='step' id='step' />       
        下架宝贝二次检测:<input type="checkbox" value="0" name='sec' id='sec' class='data'/>
       &nbsp;&nbsp;<a class="add fb " href="javascript:auto_check()" ><em>下架商品检测</em></a>
	</div>
</div>
<div class="pad_lr_10" >
        <div class="J_tablelist table_list" data-acturi="{:U('items/ajax_edit')}">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width=25><input type="checkbox" id="checkall_t" class="J_checkall"></th>
                <th><span data-tdtype="order_by" data-field="id">ID</span></th>
                <th width="50" align="center">缩略图</th>
                <th align="left"><span data-tdtype="order_by" data-field="title">商品名称</span></th>
                <th width="60"><span data-tdtype="order_by" data-field="cate_id">分类</span></th>
                <th width="100">掌柜</th>
                <th width="70"><span data-tdtype="order_by" data-field="price">价格(元)</span></th>
                <th width="70"><span data-tdtype="order_by" data-field="coupon_rate">折扣比率</span></th>
                <th width="90"><span data-tdtype="order_by" data-field="volume">已购买人数</span></th>
                <th width="40"><span data-tdtype="order_by" data-field="ordid">{:L('sort_order')}</span></th>
                <th width="40"><span data-tdtype="order_by" data-field="pass">{:L('pass')}</span></th>
                <th width="120"><span data-tdtype="order_by" data-field="add_time">发布时间</span></th>
                <th width="80">{:L('operations_manage')}</th>
            </tr>
        </thead>
        <tbody>
            <volist name="list" id="val" >
            <tr>
                <td align="center"><input type="checkbox" class="J_checkitem" value="{$val.id}"></td>
                <td align="center">{$val.id}</td>
                <td align="right">
                    <div class="img_border"><a href="http://item.taobao.com/item.htm?id={$val.num_iid}" target="_blank"><img src="{:attach(get_thumb($val['pic_url'], '_s'), 'item')}" width="32" width="32" class="J_preview" data-bimg="{:attach(get_thumb($val['pic_url '],'_m'), 'item')}"></a></div>
                </td>
                <td align="left"><span data-tdtype="edit" data-field="title" data-id="{$val.id}" class="tdedit" style="color:{$val.colors};">{$val.title}</span></td>
                <td align="center"><b>{$cate_list[$val['cate_id']]}</b></td>
                <td align="center">{$val.nick}</td>
                
                <td align="center" class="red">{$val.price}</td> 
                <td align="center" class="red">{$val.coupon_rate}</td> 
                <td align="center"><span data-tdtype="edit" data-field="volime" data-id="{$val.id}" class="tdedit">{$val.volume}</span></td>
                <td align="center"><span data-tdtype="edit" data-field="ordid" data-id="{$val.id}" class="tdedit">{$val.ordid}</span></td>
                <td align="center"><img data-tdtype="toggle" data-id="{$val.id}" data-field="pass" data-value="{$val.pass}" src="__STATIC__/images/admin/toggle_<if condition="$val.pass eq 0">disabled<else/>enabled</if>.gif" /></td>
                <td align="center">{$val.add_time|frienddate}</td>
                <td align="center"><a href="{:u('items/edit', array('id'=>$val['id'], 'menuid'=>$menuid))}">{:L('edit')}</a> | <a href="javascript:void(0);" class="J_confirmurl" data-uri="{:u('items/delete', array('id'=>$val['id']))}" data-acttype="ajax" data-msg="{:sprintf(L('confirm_delete_one'),$val['title'])}">{:L('delete')}</a></td>
            </tr>
            </volist>
        </tbody>
    </table>
    </div>

<div class="btn_wrap_fixed">
        <label class="select_all mr10"><input type="checkbox" name="checkall" class="J_checkall">{:L('select_all')}/{:L('cancel')}</label>
        <input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('items/delete')}" data-name="id" data-msg="{:L('confirm_delete')}" value="{:L('delete')}" />
        <div id="pages">{$page}</div>
    </div>
</div>
<include file="public:footer" />
<link rel="stylesheet" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script src="__STATIC__/js/calendar/calendar.js"></script>
<script>
    var collect_url = "{:U('cha/item_checks')}";
	var p = 1;
    var time_start;
    var time_end;
    var step_val;
    var sec_check;
    function auto_check(){
        time_start = $('#J_time_start').val();
        time_end = $('#J_time_end').val();
        step_val     = $('#step').attr('value');
        sec_check    =$('#sec').attr('value');
        $.getJSON(collect_url, {auto:1,start:time_start,end:time_end,step:step_val,sec:sec_check}, function(result){
            if(result.status == 1){
                $.dialog({id:'cmt_ftxia', title:result.msg.title, content:result.data, padding:'', lock:true});
                p     = result.msg.p;
                time_start = result.msg.start;
                time_end   = result.msg.end;
                step_val   = result.msg.step;
                setTimeout(auto_check_page(p,time_start,time_end,step_val,sec_check),1000);
            }else{
                $.ftxia.tip({content:result.msg});
            }
        });
    }
    function auto_check_page(p,time_start,time_end,step_val,sec_check){
        $.getJSON(collect_url, {p:p,auto:1,start:time_start,end:time_end,step:step_val,sec:sec_check}, function(result){
            if(result.status == 1){
                $.dialog.get('cmt_ftxia').content(result.data);
                p = result.msg.p;
                time_start = result.msg.start;
                time_end   = result.msg.end;
                step_val   = result.msg.step;
                setTimeout(auto_check_page(p,time_start,time_end,step_val,sec_check),1000);
            }else{
                $.dialog.get('cmt_ftxia').close();
                $.ftxia.tip({content:result.msg});
            }
        });
    }

 Calendar.setup({
    inputField : "J_time_start",
    ifFormat   : "%Y-%m-%d",
    showsTime  : false,
    timeFormat : "24"
});
Calendar.setup({
    inputField : "J_time_end",
    ifFormat   : "%Y-%m-%d",
    showsTime  : false,
    timeFormat : "24"
});
$('.J_preview').preview(); //查看大图
$('.J_cate_select').cate_select({top_option:lang.all}); //分类联动
$('.J_tooltip[title]').tooltip({offset:[10, 2], effect:'slide'}).dynamic({bottom:{direction:'down', bounce:true}});
$(function(){
    $('.J_tablelist').listTable();
});
$('#sec').click(function(){
        sec_check    = $(this).attr('value');
        if(sec_check==0){
            $(this).attr('value',1);
        }
        if (sec_check==1) {
            $(this).attr('value',0);
        };
});
</script>
<script src="__STATIC__/js/jquery/plugins/listTable.js"></script>
</body>
</html>