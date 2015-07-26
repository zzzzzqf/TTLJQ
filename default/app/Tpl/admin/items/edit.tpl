<include file="public:header" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<script src="/static/js/fileuploader.js"></script>
<form id="info_form" name="info_form" action="{:u('items/edit')}" method="post" enctype="multipart/form-data">
<div class="pad_lr_10">
	<div class="col_tab">
		<ul class="J_tabs tab_but cu_li">
			<li class="current">基本信息</li>
			<li>SEO设置</li>
		</ul>
		<div class="J_panes">
        <div class="content_list pad_10">
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
			<tr>
				<th width="120">所属分类 :</th>
                <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}" data-selected="{$selected_ids}"></select>
                <input type="hidden" name="cate_id" id="J_cate_id" value="{$info.cate_id}" /></td>
			</tr>
 
			<tr>
				<th>IID :</th>
				<td>
                	<input type="text" name="num_iid" id="J_num_iid" class="input-text" size="20" value="{$info.num_iid}">
                </td>
			</tr>
            <tr>
				<th>商品名称 :</th>
				<td><input type="text" name="title" id="J_title" class="input-text" size="60" value="{$info.title}"></td>
			</tr>
			<tr>
                <th>商品简介 :</th>
                <td><textarea name="intro" id="J_intro" cols="80" rows="2">{$info.intro}</textarea></td>
            </tr>
			<tr>
                <th>商品详情 :</th>
				
				<td><script name="desc" id="desc" type="text/plain" style="width:100%;height:300px">{$info.desc}</script></td>
				
                
            </tr>
			<tr>
				<th width="120">商品价格 :</th>
				<td><input type="text" name="price" size="10" class="input-text" value="{$info.price}"> 元</td>
			</tr>
			<tr>
				<th>秒杀价格 :</th>
				<td><input type="text" name="coupon_price" size="10" class="input-text" value="{$info.coupon_price}"> 元</td>
			</tr>
			<tr>
				<th>折扣比率 :</th>
				<td>
                	<input type="text" name="coupon_rate" id="coupon_rate" class="input-text" size="10" value="{$info.coupon_rate}">1000就是1折
                </td>
			</tr>
			<tr>
				<th>开始时间 :</th>
				<td><input type="text" name="coupon_start_time" id="coupon_start_time" size="20" class="date" value="{$info.coupon_start_time|date='Y-m-d H:i',###}"></td>
			</tr>
			<tr>
				<th>结束时间 :</th>
				<td><input type="text" name="coupon_end_time" id="coupon_end_time" size="20" class="date" value="{$info.coupon_end_time|date='Y-m-d H:i',###}"></td>
			</tr>
            <tr>
				<th>商品图片 :</th>
				<td>
					<notempty name="info['pic_url']"><img src="{$info['pic_url']}" width="100" id="J_pic_url_img"/><br /></notempty>
                      <div id="J_upload_img" class="upload_btn"><span>上传</span></div>					
					<input type="text" id="J_pic_url" name="pic_url" class="input-text" size="80" value="{$info.pic_url}"> 大图
				</td>
 			</tr>
 
            <tr>
				<th>商品标签 :</th>
				<td>
                	<input type="text" name="tags" id="J_tags" class="input-text" size="50" value="{$info.tags}">
                    <input type="button" value="{:L('auto_get')}" id="J_gettags" name="tags_btn" class="btn">
                </td>
			</tr>
			
			
			<tr>
				<th width="120">商品来源 :</th>
                <td>
				<select name="shop_type" id="shop_type">
            	<volist name="orig_list" id="val">
            	<option value="{$val.type}" <if condition="$info['shop_type'] eq $val['type']">selected="selected"</if>>{$val.name}</option>
            	</volist>
            	</select></td>
			</tr>
			<tr>
				<th>销量 :</th>
				<td>
                	<input type="text" name="volume" id="volume" class="input-text" size="10" value="{$info.volume}">
                </td>
			</tr>
			<tr>
				<th>点击量 :</th>
				<td>
                	<input type="text" name="hits" id="hits" class="input-text" size="10" value="{$info.hits}">
                </td>
			</tr>
			<tr>
				<th width="120">是否包邮 :</th>
                <td>
                	<input name="ems" value="0" type="radio" <if condition="$info['ems'] eq '0'">checked</if>>不包邮&nbsp;&nbsp;
					<input name="ems" value="1" type="radio" <if condition="$info['ems'] eq '1'">checked</if>>包邮
				</td>
			</tr>
			
			<tr>
				<th>推广链接 :</th>
				<td>
                	<input type="text" name="click_url" id="J_click_url" class="input-text" size="100" value="{$info.click_url}">
					<input type="button" value="{:L('auto_get')}" id="J_getclick_url" name="click_url_btn" class="btn">
                </td>
			</tr>
			<tr>
				<th>掌柜旺旺 :</th>
				<td>
                	<input type="text" name="nick" id="nick" class="input-text" size="20" value="{$info.nick}">
                </td>
			</tr>
			<tr>
				<th>掌柜ID :</th>
				<td>
                	<input type="text" name="sellerId" id="sellerId" class="input-text" size="20" value="{$info.sellerId}">
                </td>
			</tr>
			<tr>
				<th>评价1 :</th>
				<td>
				<textarea name="feedback" id="J_feedback" cols="80" rows="2">{$info.feedback}</textarea></td>                
			</tr>
			<tr>
				<th>评价者旺旺1 :</th>
				<td>
                	<input type="text" name="nicker" id="J_nicker" class="input-text" size="20" value="{$info.nicker}"></td>
			</tr>
			<tr>
				<th>评价者头像1 :</th>
				<td>
				<img src="{$info.headPic}"  width="100" ><br />
                <input type="text" name="headPic" id="J_headPic" class="input-text" size="100" value="{$info.headPic}">
				</td>
			</tr>
            <tr>
				<th>评价2 :</th>
				<td>
				<textarea name="feedback1" id="J_feedback1" cols="80" rows="2">{$info.feedback1}</textarea></td>                
			</tr>
			<tr>
				<th>评价者旺旺2 :</th>
				<td>
                	<input type="text" name="nicker1" id="J_nicker1" class="input-text" size="20" value="{$info.nicker1}"></td>
			</tr>
			<tr>
				<th>评价者头像2 :</th>
				<td>
				<img src="{$info.headPic1}"  width="100" ><br />
                <input type="text" name="headPic1" id="J_headPic1" class="input-text" size="100" value="{$info.headPic1}">
				</td>
			</tr>
            <tr>
				<th>评价3 :</th>
				<td>
				<textarea name="feedback2" id="J_feedback2" cols="80" rows="2">{$info.feedback2}</textarea></td>                
			</tr>
			<tr>
				<th>评价者旺旺3 :</th>
				<td>
                	<input type="text" name="nicker2" id="J_nicker2" class="input-text" size="20" value="{$info.nicker2}"></td>
			</tr>
			<tr>
				<th>评价者头像3 :</th>
				<td>
				<img src="{$info.headPic2}"  width="100" ><br />
                <input type="text" name="headPic2" id="J_headPic2" class="input-text" size="100" value="{$info.headPic2}">
				</td>
			</tr>
            <tr>
				<th>评价4 :</th>
				<td>
				<textarea name="feedback3" id="J_feedback3" cols="80" rows="2">{$info.feedback3}</textarea></td>                
			</tr>
			<tr>
				<th>评价者旺旺4 :</th>
				<td>
                	<input type="text" name="nicker3" id="J_nicker3" class="input-text" size="20" value="{$info.nicker3}"></td>
			</tr>
			<tr>
				<th>评价者头像4 :</th>
				<td>
				<img src="{$info.headPic3}"  width="100" ><br />
                <input type="text" name="headPic3" id="J_headPic3" class="input-text" size="100" value="{$info.headPic3}">
				</td>
			</tr>
           <tr>
				<th>评价5 :</th>
				<td>
				<textarea name="feedback4" id="J_feedback4" cols="80" rows="2">{$info.feedback4}</textarea></td>                
			</tr>
			<tr>
				<th>评价者旺旺5 :</th>
				<td>
                	<input type="text" name="nicker4" id="J_nicker4" class="input-text" size="20" value="{$info.nicker4}"></td>
			</tr>
			<tr>
				<th>评价者头像5 :</th>
				<td>
				<img src="{$info.headPic4}"  width="100" ><br />
                <input type="text" name="headPic4" id="J_headPic4" class="input-text" size="100" value="{$info.headPic4}">
				</td>
			</tr>			
			<tr>
            	<th>发布人 :</th>
                <td><input type="text" name="realname" id="realname" class="input-text" size="20" value="{$info.realname}"></td>
            </tr>
			<tr>
            	<th>发布人手机号 :</th>
                <td><input type="text" name="mobile" id="mobile" class="input-text" size="20" value="{$info.mobile}"></td>
            </tr>
			<tr>
            	<th>发布人QQ号 :</th>
                <td><input type="text" name="qq" id="qq" class="input-text" size="20" value="{$info.qq}"></td>
            </tr>
 
		</table>
		</div>


 
		<div class="content_list pad_10 hidden">
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
			<tr>
				<th width="120">{:L('seo_title')} :</th>
 				<td><input type="text" name="seo_title" class="input-text" size="60" value="{$info.seo_title}"></td>
			</tr>
			<tr>
				<th>{:L('seo_keys')} :</th>
				<td><input type="text" name="seo_keys" class="input-text" size="60" value="{$info.seo_keys}"></td>
			</tr>
			<tr>
				<th>{:L('seo_desc')} :</th>
				<td><textarea name="seo_desc" cols="80" rows="8">{$info.seo_desc}</textarea></td>
			</tr>
		</table>
		</div>
        
        </div>
		<div class="mt10"><input type="submit" value="{:L('submit')}" id="dosubmit" name="dosubmit" class="btn btn_submit" style="margin:0 0 10px 100px;"></div>
	</div>
</div>
<input type="hidden" name="menuid"  value="{$menuid}"/>
<input type="hidden" name="id" value="{$info.id}" />
</form>
<include file="public:footer" />
<script charset="utf-8" src="__STATIC__/js/ueditor/ueditor.config.js"></script>
<script charset="utf-8" src="__STATIC__/js/ueditor/ueditor.all.js"></script>
<script type="text/javascript">
$('.J_cate_select').cate_select('请选择');
var ue = UE.getEditor('desc');  
$(function() {	

  //上传图片
    var img_uploader = new qq.FileUploaderBasic({
        allowedExtensions: ['jpg','gif','jpeg','png','bmp','pdg'],
        button: document.getElementById('J_upload_img'),
        multiple: false,
        action: "?m=ad&a=ajax_upload_img",
        inputName: 'img',
        forceMultipart: true, //用$_FILES
        messages: {
            typeError: lang.upload_type_error,
            sizeError: lang.upload_size_error,
            minSizeError: lang.upload_minsize_error,
            emptyError: lang.upload_empty_error,
            noFilesError: lang.upload_nofile_error,
            onLeave: lang.upload_onLeave
        },
        showMessage: function(message){
            $.ftxia.tip({content:message, icon:'error'});
        },
        onSubmit: function(id, fileName){
            $('#J_upload_img').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
           // $('#J_pic_url').removeClass('btn_disabled').find('span').text(lang.upload);
            if(result.status == '1'){
                $('#J_pic_url').val("/data/upload/advert/"+result.data);
				$('#J_pic_url_img').attr('src',"/data/upload/advert/"+result.data);
            } else {
                $.ftxia.tip({content:result.msg, icon:'error'});
            }
        }
    });

	
	    var extimg_uploader = new qq.FileUploaderBasic({
        allowedExtensions: ['jpg','gif','jpeg','png','bmp','pdg'],
        button: document.getElementById('J_upload_extimg'),
        multiple: false,
        action: "{:U('items/ajax_upload_img')}",
        inputName: 'extimg',
        forceMultipart: true, //用$_FILES
        messages: {
            typeError: lang.upload_type_error,
            sizeError: lang.upload_size_error,
            minSizeError: lang.upload_minsize_error,
            emptyError: lang.upload_empty_error,
            noFilesError: lang.upload_nofile_error,
            onLeave: lang.upload_onLeave
        },
        showMessage: function(message){
            $.ftxia.tip({content:message, icon:'error'});
        },
        onSubmit: function(id, fileName){
            $('#J_upload_extimg').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
            $('#J_upload_extimg').removeClass('btn_disabled').find('span').text(lang.upload);
            if(result.status == '1'){
                $('#J_extimg').val(result.data);
            } else {
                $.ftxia.tip({content:result.msg, icon:'error'});
            }
        }
    });

	$('ul.J_tabs').tabs('div.J_panes > div');
	//自动获取标签
	$('#J_gettags').live('click', function() {
		var title = $.trim($('#J_title').val());
		if(title == ''){
			$.ftxia.tip({content:lang.title_empty, icon:'alert'});
			return false;
		}
		$.getJSON('{:U("items/ajax_gettags")}', {title:title}, function(result){
			if(result.status == 1){
				$('#J_tags').val(result.data);
			}else{
				$.ftxia.tip({content:result.msg});
			}
		});
	});

	$('#J_getclick_url').live('click', function() {
		var iid = $.trim($('#J_num_iid').val());
		if(iid == ''){
			$.ftxia.tip({content:lang.iid_empty, icon:'alert'});
			return false;
		}
		$.getJSON('{:U("items/ajax_getclick_url")}', {iid:iid}, function(result){
			if(result.status == 1){
				$('#J_click_url').val(result.data);
			}else{
				$.ftxia.tip({content:result.msg});
			}
		});
	});

	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#J_title").formValidator({onshow:'请填写商品名称',onfocus:'请填写商品名称'}).inputValidator({min:1,onerror:'请填写商品名称'}).defaultPassed();
});
function get_child_cates(obj,to_id)
{
	var parent_id = $(obj).val();
	if( parent_id ){
		$.get('?m=items&a=get_child_cates&g=admin&parent_id='+parent_id,function(data){
				var obj = eval("("+data+")");
				$('#'+to_id).html( obj.content );
	    });
    }
}
 
 
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