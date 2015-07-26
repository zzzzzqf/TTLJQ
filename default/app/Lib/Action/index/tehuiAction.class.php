<?php
class tehuiAction extends FrontAction {

	public function _initialize() {
        parent::_initialize();
		$this->cats_mod = D('tehui_cate');
		$this->cid = $_SERVER['HTTP_HOST'];
        $this->_cate_mod = D('items_cate');
		$this->items_mod = D('items');
		$this->assign('nav_curr', 'index');	        
		$this->tehui_mod = M('tehui');
		$this->cats_list = $this->cats_mod->get_cats();
        $this->assign('acats', $this->cats_list);
    }

	public function index(){
        $cid = I('id','', 'trim');		
		$p = I('p',1, 'intval');
		$map['status']="1";
		if($cid){
            $map['cate_id'] = $cid;
			$title = $this->cats_list[$cid]['name'];
        }
		$page_size = 60;
		$start = $page_size * ($p - 1) ;
		$order = 'ordid asc ';
		$order.= ', id DESC';
		$cat = $this->cats_mod->find($cid);
        $tehui_list = $this->tehui_mod->where($map)->order($order)->limit($start . ',' . $page_size)->select();
		$this->assign('cid',$cid);
		$this->assign('p',$p);
		$this->assign('tehui_list',$tehui_list);
		$count = $this->tehui_mod->where($map)->count();
        $pager = $this->_pager($count, $page_size);
        $this->assign('page', $pager->jshow());		
		$this->assign('nav_curr', 'tehui');
		$this->_config_seo(array(
			'title' => '特惠频道-'.C('ftx_site_name'),			
            'seo_title' => $cat['seo_title'],
            'seo_keywords' => '超级优惠,全场促销,包邮打折,达人推荐',
            'seo_description' => C('ftx_site_name').'特惠频道。',
        ));
        $this->display('index');
	}

	public function cate(){	
		$cid = I('cid','', 'trim');
		$cinfo = $this->cats_mod->where(array('id' => $cid))->find();
        !$cinfo && $this->_404();		
		$p = I('p',1, 'intval');
		$map['status']="1";		
		$subnav = $this->cats_mod->where(array('pid'=>$cid))->order(ordid,desc)->select();
		if($cinfo['pid'] && !$subnav){
		$subnav = $this->cats_mod->where(array('pid'=>$cinfo['pid']))->order(ordid,desc)->select();
		}
		if($cinfo['pid']==0){
		$id_arr = $this->cats_mod->get_child_ids($cid, true);
    	$map['cate_id'] = array('IN', $id_arr);
		}else{
		$map['cate_id'] = $cid;
		}		
		$page_size = 60;
		$start = $page_size * ($p - 1) ;
		$order = 'ordid asc ';
		$order.= ', id DESC';	
		$this->assign('subnav', $subnav);	
		$this->assign('subnavs', $subnavs);
		$this->assign('cinfo', $cinfo);
		$cat = $this->cats_mod->find($cid);
        $tehui_list = $this->tehui_mod->where($map)->order($order)->limit($start . ',' . $page_size)->select();
		$this->assign('cid',$cid);
		$this->assign('tehui_list',$tehui_list);
		$count = $this->tehui_mod->where($map)->count();
        $pager = $this->_pager($count, $page_size);
        $this->assign('page', $pager->jshow());		
		$this->assign('nav_curr', 'tehui');
		$this->_config_seo(array(
			'title' => $cat['name'],
			'cate_name' => $cat['name'],
            'seo_title' => $cinfo['seo_title'],
            'seo_keywords' => $cinfo['seo_keys'],
            'seo_description' => $cinfo['seo_desc'],
        ));
        $this->display('cate');
	}

	public function view(){	
        $tehui_mod = M('tehui');
		$id = I('id','', 'intval');	
		$item = $tehui_mod->where(array('id' => $id))->find();		
        !$item && $this->_404();
		$itemurl = 'http://ai.taobao.com/sales/detail.htm?discountId='.$item['item_id'];
		$ch = curl_init(); 
		curl_setopt($ch, CURLOPT_URL, $itemurl);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION,true);
		curl_setopt($ch, CURLOPT_MAXREDIRS,2);
		$contents = curl_exec($ch);
		curl_close($ch);				
		$picitem	=get_word($contents,'<div class="easybuy-detail-imgs">','<div class="bl-maylike-slide">');				
		preg_match_all('/data-ks-lazyload="(.*?)_790x10000.jpg/s',$picitem,$match);	
		$picitems = $match[1];
		$ms = count($picitems);				
		for($x=0;$x<$ms;$x++){
		$num=$x+1;
		$desc[$num] = $picitems[$x];	
		$desc[$num] = '<a href="'.$itemurl.'" target="_blank"><img src="'.$desc[$num].'_790x10000.jpg"></a>';
		}
		if($ms==4){
		$desc = $desc[1].''.$desc[2].''.$desc[3].''.$desc[4];
		}elseif($ms==3){
		$desc = $desc[1].''.$desc[2].''.$desc[3];
		}elseif($ms==2){
		$desc = $desc[1].''.$desc[2];
		}elseif($ms==1){
		$desc = $desc[1];
		}
		$item['desc']=$desc;			
		$item['title']=trim(strip_tags($item['title']));
		$this->_config_seo(array(
            'title' => $item['title'],
        ));
        $this->assign('item',$item); 		
        $this->display();
	}

}