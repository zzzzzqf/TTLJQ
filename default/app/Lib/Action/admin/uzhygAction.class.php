<?php global $zym_decrypt;$zym_decrypt['����֯�����ֈ�å���������įï�ֈ']=base64_decode('X2luaXRpYWxpemU=');$zym_decrypt['����������Ô�������È��Ë�������']=base64_decode('aGVhZGVy');$zym_decrypt['����������Ë������������������Î']=base64_decode('c3RydG90aW1l');$zym_decrypt['֎���֯���־�ľ��ï���Ĕ����Ď��']=base64_decode('Rg==');$zym_decrypt['�åÈË�������Į���������Èċ���']=base64_decode('ZnR4aWFfaHR0cHM=');$zym_decrypt['����Ĉ�����������ĥ�����־��Î��']=base64_decode('ZmlsZV9nZXRfY29udGVudHM=');$zym_decrypt['þ��֋���������֥�Î����þ������']=base64_decode('cnRyaW0=');$zym_decrypt['��־���֋���������֥î����������']=base64_decode('bHRyaW0=');$zym_decrypt['����î�����ֈ���î�å������֋���']=base64_decode('dHJpbQ==');$zym_decrypt['��î��֋î���֥Î�Î��È��������']=base64_decode('aWNvbnY=');$zym_decrypt['���������֮��������֮������֥���']=base64_decode('cHJlZ19tYXRjaF9hbGw=');$zym_decrypt['��������į����Į֔�����֎�������']=base64_decode('Z2V0X3dvcmQ=');$zym_decrypt['�������������Į���Ô�����֋�Ĕ��']=base64_decode('cHJlZ19tYXRjaA==');$zym_decrypt['�����������������������֔�������']=base64_decode('c3RyaXBvcw==');$zym_decrypt['��������î�֎�å��È������������']=base64_decode('cmFuZA==');$zym_decrypt['������������î��î���þ������å�']=base64_decode('c3RyX3JlcGxhY2U=');$zym_decrypt['���ï��ï���ÔÎ���å������ċ���']=base64_decode('cm91bmQ=');$zym_decrypt['�������Ď����į����������È�����']=base64_decode('ZA==');$zym_decrypt['�����Ĉ�־���Ĉ�֎���֥��ľ��Ď�']=base64_decode('aW1wbG9kZQ==');$zym_decrypt['־��������ï������Ë��Į���ċË�']=base64_decode('c3RyaXBfdGFncw==');$zym_decrypt['��֮���������֋������Ô���������']=base64_decode('RA=='); ?>
<?php
class uzhygAction extends BackendAction {public function _initialize(){parent::$GLOBALS['zym_decrypt']['����֯�����ֈ�å���������įï�ֈ']();$GLOBALS['zym_decrypt']['����������Ô�������È��Ë�������'](base64_decode('Q29udGVudC1UeXBlOnRleHQvaHRtbDsgY2hhcnNldD11dGYtOA=='));if(!$this->checkAuth()){echo base64_decode('572R56uZ5pyq6KKr5o6I5p2DIOivt+iBlOezu+WNjue+jue9kee7nOaOiOadg1FRNDIyNjc3MjYxIOaXuuaXunFpcWkyNzA0NzAg6K665Z2bPGEgaHJlZj0iaHR0cDpcL1wvYmJzLjEzOGd6cy5jb20iIHRhcmdldD0iX2JsYW5rIj5iYnMuMTM4Z3pzLmNvbTwvYT4=');exit();}}public function index(){$this->display();}public function setting(){if(IS_POST){$�������ֈ����Ô�֥���þ��������� =$this->_post('cate_id', 'trim');$����������������ï��������֮֔�� =$this->_post(base64_decode('Y2F0X2lk'), base64_decode('dHJpbQ=='));$��֋���������Ë��î���������Ë�� =$this->_post(base64_decode('c3RhcnQ='), base64_decode('dHJpbQ=='));$end =$this->_post(base64_decode('ZW5k'), base64_decode('dHJpbQ=='));$����������Î֔����Ď�����Ô֮��� =$GLOBALS['zym_decrypt']['����������Ë������������������Î']($_POST[base64_decode('Y291cG9uX3N0YXJ0X3RpbWU=')]);$�����֥֔���ĥÔ���ֈ������ľË� =$GLOBALS['zym_decrypt']['����������Ë������������������Î']($_POST[base64_decode('Y291cG9uX2VuZF90aW1l')]);if(!$����������������ï��������֮֔��){$this->ajaxReturn(0, base64_decode('6YeH6ZuG5YiG57G75b+F6aG75aGr5YaZ77yB'));}if(!$�������ֈ����Ô�֥���þ���������){$this->ajaxReturn(0, base64_decode('5YWl5bqT5YiG57G75b+F6aG76YCJ5oupIQ=='));}$GLOBALS['zym_decrypt']['֎���֯���־�ľ��ï���Ĕ����Ď��'](base64_decode('dXpoeWdfc2V0dGluZw=='), array(base64_decode('Y2F0ZV9pZA==') => $�������ֈ����Ô�֥���þ���������, base64_decode('Y2F0X2lk') => $����������������ï��������֮֔��, base64_decode('c3RhcnQ=') => $��֋���������Ë��î���������Ë��, base64_decode('ZW5k') => $end, base64_decode('Y291cG9uX3N0YXJ0X3RpbWU=') => $����������Î֔����Ď�����Ô֮���, base64_decode('Y291cG9uX2VuZF90aW1l') => $�����֥֔���ĥÔ���ֈ������ľË�, ));$this->collect();}}public function collect(){if (false === $����֋������֔�֮֮��Ô�Į������ =$GLOBALS['zym_decrypt']['֎���֯���־�ľ��ï���Ĕ����Ď��']('uzhyg_setting')){$this->ajaxReturn(0, L('illegal_parameters'));}$֮��������Į�֯�ֈ�������������� =$this->_get('p', base64_decode('aW50dmFs'), 1);$���å���Ĉ��Ë�������ľ��������� =base64_decode('aHR0cDovL2h1aXl1YW5nb3UudXoudGFvYmFvLmNvbS8/cj1oeWdiL2luZGV4L2xpc3Qmaz0=').$����֋������֔�֮֮��Ô�Į������[base64_decode('Y2F0X2lk')].base64_decode('JnBhZ2U9').$֮��������Į�֯�ֈ��������������.base64_decode('I2luZGV4X2NhdGU=');$����֥ֈ�įĥ���Ď��������־����=3;if($֮��������Į�֯�ֈ��������������>1){if ($֮��������Į�֯�ֈ�������������� > $����֥ֈ�įĥ���Ď��������־����){$this->ajaxReturn(0, base64_decode('5bey57uP6YeH6ZuG5a6M5oiQ').$����֥ֈ�įĥ���Ď��������־����.base64_decode('6aG177yB6K+36L+U5Zue77yM6LCi6LCi'));}}if($֮��������Į�֯�ֈ��������������==1){$����������֔����Ĕ����ċ����֥�� =0;}else{$����������֔����Ĕ����ċ����֥�� =$GLOBALS['zym_decrypt']['֎���֯���־�ľ��ï���Ĕ����Ď��'](base64_decode('dG90YWxjb2xs'));}$����ֈ���֋֮�þ֎�����������Ë�=0;$�åÈË�������Į���������Èċ��� =new $GLOBALS['zym_decrypt']['�åÈË�������Į���������Èċ���']();$�åÈË�������Į���������Èċ���->fetch($���å���Ĉ��Ë�������ľ���������);$���î֔������������������������� =$�åÈË�������Į���������Èċ���->results;if(!$���î֔�������������������������){$���î֔������������������������� =$GLOBALS['zym_decrypt']['����Ĉ�����������ĥ�����־��Î��']($���å���Ĉ��Ë�������ľ���������);}$���î֔������������������������� =$GLOBALS['zym_decrypt']['þ��֋���������֥�Î����þ������']($GLOBALS['zym_decrypt']['��־���֋���������֥î����������']($GLOBALS['zym_decrypt']['����î�����ֈ���î�å������֋���']($���î֔�������������������������), '('), ')');$���î֔������������������������� =$GLOBALS['zym_decrypt']['��î��֋î���֥Î�Î��È��������'](base64_decode('R0JL'), base64_decode('VVRGLTgvL0lHTk9SRQ=='), $���î֔�������������������������);if($GLOBALS['zym_decrypt']['���������֮��������֮������֥���'](base64_decode('LzxkaXYgY2xhc3M9ImFTYWxlIj4oLio/KTxcL2Rpdj4vcw=='), $���î֔�������������������������, $���֮��Ĉ���������������־����֯)){for($�þ�����������î����������������=$����֋������֔�֮֮��Ô�Į������[base64_decode('c3RhcnQ=')];$�þ�����������î����������������<$����֋������֔�֮֮��Ô�Į������[base64_decode('ZW5k')];$�þ�����������î����������������++){$�����ĥ��֥�����֎��������������=$���֮��Ĉ���������������־����֯[1][$�þ�����������î����������������];$þîË��þ�����������������Ô��� =$GLOBALS['zym_decrypt']['��������į����Į֔�����֎�������']($�����ĥ��֥�����֎��������������,base64_decode('PGxpIGNsYXNzPSJsaTEiPg=='),base64_decode('PFwvbGk+'));$þîË��þ�����������������Ô��� =$GLOBALS['zym_decrypt']['��������į����Į֔�����֎�������']($þîË��þ�����������������Ô���,base64_decode('PFwvc3Bhbj4='),base64_decode('PFwvYT4='));$���å���Ĉ��Ë�������ľ��������� =$GLOBALS['zym_decrypt']['��������į����Į֔�����֎�������']($�����ĥ��֥�����֎��������������,base64_decode('PGEgY2xhc3M9ImJ0bkJ1eSIgaHJlZj0i'),'"');$GLOBALS['zym_decrypt']['�������������Į���Ô�����֋�Ĕ��'](base64_decode('L2lkPShcZCopLw=='), $���å���Ĉ��Ë�������ľ��������� ,$������������Ĉ�Î����ÈĮ�������);$���Ď��������֥����ֈ���Ô��Î�� =isset($������������Ĉ�Î����ÈĮ�������[1])? $������������Ĉ�Î����ÈĮ�������[1] : '';$��������È�����������ľ���þ���� =$GLOBALS['zym_decrypt']['��������į����Į֔�����֎�������']($�����ĥ��֥�����֎��������������,base64_decode('PGRlbD4='),base64_decode('PFwvZGVsPg=='));$�å��Ĉï����å�����Į�֥�Ď�È�=$GLOBALS['zym_decrypt']['��������į����Į֔�����֎�������']($�����ĥ��֥�����֎��������������,base64_decode('PGI+'),base64_decode('PFwvYj4='));if ($GLOBALS['zym_decrypt']['�����������������������֔�������']($���å���Ĉ��Ë�������ľ���������,base64_decode('dGFvYmFvLmNvbQ=='))> 0){$��È����������þ֔�������������� ='C';}else {$��È����������þ֔�������������� ='B';}$���į��Î������ֈ�������ÔÈî�� ='1';$�����֔����֥���������������ֈ�� =$GLOBALS['zym_decrypt']['��������î�֎�å��È������������'](99,9999);$�������ľ�����þֈ־֮֮�������� =base64_decode('aHR0cDovL2h3cy5tLnRhb2Jhby5jb20vY2FjaGUvd2RldGFpbC81LjAvP2lkPQ==').$���Ď��������֥����ֈ���Ô��Î��;$��֔�ÈÔ�Ĉ��åî�������֋֥Ď� =curl_init();curl_setopt($��֔�ÈÔ�Ĉ��åî�������֋֥Ď�, CURLOPT_URL, $�������ľ�����þֈ־֮֮��������);curl_setopt($��֔�ÈÔ�Ĉ��åî�������֋֥Ď�, CURLOPT_RETURNTRANSFER, 1);curl_setopt($��֔�ÈÔ�Ĉ��åî�������֋֥Ď�, CURLOPT_FOLLOWLOCATION,true);curl_setopt($��֔�ÈÔ�Ĉ��åî�������֋֥Ď�, CURLOPT_MAXREDIRS,2);$�֋�����ľ�֥�����î֎���ĈĈ��� =curl_exec($��֔�ÈÔ�Ĉ��åî�������֋֥Ď�);curl_close($��֔�ÈÔ�Ĉ��åî�������֋֥Ď�);if(!$�֋�����ľ�֥�����î֎���ĈĈ���){$�֋�����ľ�֥�����î֎���ĈĈ��� =$GLOBALS['zym_decrypt']['����Ĉ�����������ĥ�����־��Î��']($�������ľ�����þֈ־֮֮��������);}$����������������ï�����Ĕ�����þ =json_decode($�֋�����ľ�֥�����î֎���ĈĈ���,true);$�����Ë����֋�����å�֥֮������� =array();$����ÈË֮�����������֎�Ôå�Ĉ� =json_decode($����������������ï�����Ĕ�����þ[base64_decode('ZGF0YQ==')][base64_decode('YXBpU3RhY2s=')][0][base64_decode('dmFsdWU=')],true);$�����Ë����֋�����å�֥֮�������[base64_decode('dm9sdW1l')] =$����ÈË֮�����������֎�Ôå�Ĉ�[base64_decode('ZGF0YQ==')][base64_decode('aXRlbUluZm9Nb2RlbA==')][base64_decode('dG90YWxTb2xkUXVhbnRpdHk=')];$�����Ë����֋�����å�֥֮�������[base64_decode('cGljX3VybA==')] =$����������������ï�����Ĕ�����þ[base64_decode('ZGF0YQ==')][base64_decode('aXRlbUluZm9Nb2RlbA==')][base64_decode('cGljc1BhdGg=')][0];$�����Ë����֋�����å�֥֮�������[base64_decode('cGljX3VybA==')] =$GLOBALS['zym_decrypt']['������������î��î���þ������å�'](base64_decode('XzMyMHgzMjAuanBn'),"",$�����Ë����֋�����å�֥֮�������[base64_decode('cGljX3VybA==')]);$�����Ë����֋�����å�֥֮�������[base64_decode('c2VsbGVySWQ=')] =$����������������ï�����Ĕ�����þ[base64_decode('ZGF0YQ==')][base64_decode('c2VsbGVy')][base64_decode('dXNlck51bUlk')];$�����Ë����֋�����å�֥֮�������[base64_decode('bmljaw==')] =$����������������ï�����Ĕ�����þ[base64_decode('ZGF0YQ==')][base64_decode('c2VsbGVy')][base64_decode('bmljaw==')];$֮�ï֋������ֈ֋���֯��Ĕ֔����[base64_decode('cGFp')] =$����ÈË֮�����������֎�Ôå�Ĉ�[base64_decode('ZGF0YQ==')][base64_decode('aXRlbUluZm9Nb2RlbA==')][base64_decode('cHJpY2VVbml0cw==')][0][base64_decode('bmFtZQ==')];$�ֈ���������î�֋������־־�Ĕ�� =$�����Ë����֋�����å�֥֮�������[base64_decode('bmljaw==')];$�������ÈċĮ�ֈ��Ë����������î =$�����Ë����֋�����å�֥֮�������[base64_decode('cGljX3VybA==')];$������������������Į�������Ë��� =$�����Ë����֋�����å�֥֮�������[base64_decode('c2VsbGVySWQ=')];$�Ď�����������������Ëľ�������� =$�����Ë����֋�����å�֥֮�������[base64_decode('dm9sdW1l')];$������Ĉ���Į�îþ���Ĕ������Ĕ� =$GLOBALS['zym_decrypt']['���ï��ï���ÔÎ���å������ċ���'](($�å��Ĉï����å�����Į�֥�Ď�È�/$��������È�����������ľ���þ����)*10,1);$��������������������������Î�֮� =$GLOBALS['zym_decrypt']['�������Ď����į����������È�����'](base64_decode('aXRlbXM='))->get_tags_by_title($þîË��þ�����������������Ô���);$þ�����־�֥�ï�Į�֥��ïľ֎��� =$GLOBALS['zym_decrypt']['�����Ĉ�־���Ĉ�֎���֥��ľ��Ď�'](",",$��������������������������Î�֮�);$ľ֮�ľ����֔��֮����֯֋�������[base64_decode('c2hvcF90eXBl')]=$��È����������þ֔��������������;$ľ֮�ľ����֔��֮����֯֋�������[base64_decode('dGl0bGU=')]=$þîË��þ�����������������Ô���;$ľ֮�ľ����֔��֮����֯֋�������[base64_decode('dGFncw==')]=$þ�����־�֥�ï�Į�֥��ïľ֎���;$ľ֮�ľ����֔��֮����֯֋�������[base64_decode('cGljX3VybA==')]=$�������ÈċĮ�ֈ��Ë����������î;$ľ֮�ľ����֔��֮����֯֋�������[base64_decode('Y3U=')]=$֮�ï֋������ֈ֋���֯��Ĕ֔����[base64_decode('cGFp')];$ľ֮�ľ����֔��֮����֯֋�������[base64_decode('bnVtX2lpZA==')]=$���Ď��������֥����ֈ���Ô��Î��;$ľ֮�ľ����֔��֮����֯֋�������[base64_decode('cHJpY2U=')]=$��������È�����������ľ���þ����;$ľ֮�ľ����֔��֮����֯֋�������[base64_decode('Y291cG9uX3ByaWNl')]=$�å��Ĉï����å�����Į�֥�Ď�È�;$ľ֮�ľ����֔��֮����֯֋�������[base64_decode('dm9sdW1l')]=$�Ď�����������������Ëľ��������;$ľ֮�ľ����֔��֮����֯֋�������[base64_decode('bmljaw==')]=$�ֈ���������î�֋������־־�Ĕ��;$ľ֮�ľ����֔��֮����֯֋�������[base64_decode('c2VsbGVySWQ=')]=$������������������Į�������Ë���;$ľ֮�ľ����֔��֮����֯֋�������[base64_decode('ZW1z')]=$���į��Î������ֈ�������ÔÈî��;$ľ֮�ľ����֔��֮����֯֋�������[base64_decode('bGlrZXM=')]=$�����֔����֥���������������ֈ��;$ľ֮�ľ����֔��֮����֯֋�������[base64_decode('Y2F0ZV9pZA==')]=$����֋������֔�֮֮��Ô�Į������[base64_decode('Y2F0ZV9pZA==')];$ľ֮�ľ����֔��֮����֯֋�������[base64_decode('Y291cG9uX3JhdGU=')]=$������Ĉ���Į�îþ���Ĕ������Ĕ�*1000;$ľ֮�ľ����֔��֮����֯֋�������[base64_decode('Y291cG9uX2VuZF90aW1l')]=$����֋������֔�֮֮��Ô�Į������[base64_decode('Y291cG9uX2VuZF90aW1l')];$ľ֮�ľ����֔��֮����֯֋�������[base64_decode('Y291cG9uX3N0YXJ0X3RpbWU=')]=$����֋������֔�֮֮��Ô�Į������[base64_decode('Y291cG9uX3N0YXJ0X3RpbWU=')];if($þîË��þ�����������������Ô��� && $�������ÈċĮ�ֈ��Ë����������î && $���Ď��������֥����ֈ���Ô��Î�� ){$����֥����Î��������å����������[base64_decode('aXRlbV9saXN0')][]=$ľ֮�ľ����֔��֮����֯֋�������;}}}foreach ($����֥����Î��������å����������[base64_decode('aXRlbV9saXN0')] as $key => $���Î�֥�����������Ô�����������){$��֎����������������Ë������֮��=$this->_ajax_tb_publish_insert($���Î�֥�����������Ô�����������);if($��֎����������������Ë������֮��>0){$����ֈ���֋֮�þ֎�����������Ë�++;}$����������֔����Ĕ����ċ����֥��++;}$GLOBALS['zym_decrypt']['֎���֯���־�ľ��ï���Ĕ����Ď��'](base64_decode('dG90YWxjb2xs'),$����������֔����Ĕ����ċ����֥��);$this->assign('p',$֮��������Į�֯�ֈ��������������);$this->assign(base64_decode('Y29sbA=='), $����ֈ���֋֮�þ֎�����������Ë�);$this->assign(base64_decode('dG90YWxudW0='), $�����������֔��ï�Ô�����Ë�֮��);$this->assign(base64_decode('dG90YWxjb2xs'), $����������֔����Ĕ����ċ����֥��);$���Ë���֥��������Ĕ���È������� =$this->fetch(base64_decode('Y29sbGVjdA=='));$this->ajaxReturn(1, '', $���Ë���֥��������Ĕ���È�������);}private function _ajax_tb_publish_insert($�����ĥ��֥�����֎��������������){$�����ĥ��֥�����֎��������������['title']=$GLOBALS['zym_decrypt']['����î�����ֈ���î�å������֋���']($GLOBALS['zym_decrypt']['־��������ï������Ë��Į���ċË�']($�����ĥ��֥�����֎��������������['title']));$����֥����Î��������å���������� =$GLOBALS['zym_decrypt']['��֮���������֋������Ô���������'](base64_decode('aXRlbXM='))->ajax_yg_publish($�����ĥ��֥�����֎��������������);return $����֥����Î��������å����������;}}