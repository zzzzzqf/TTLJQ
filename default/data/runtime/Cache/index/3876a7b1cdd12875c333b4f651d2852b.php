<?php if (!defined('THINK_PATH')) exit(); if(is_array($ad_list)): $i = 0; $__LIST__ = $ad_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ad): $mod = ($i % 2 );++$i;?><img src="<?php echo attach($ad['content'],'banner');?>" alt="<?php echo ($ad["desc"]); ?>"><?php endforeach; endif; else: echo "" ;endif; ?>