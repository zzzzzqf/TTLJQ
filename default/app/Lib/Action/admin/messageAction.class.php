<?php global $zym_decrypt;$zym_decrypt['����֯�����ֈ�å���������įï�ֈ']=base64_decode('X2luaXRpYWxpemU=');$zym_decrypt['�֎���������Ĉ���å������ċ�־��']=base64_decode('TA==');$zym_decrypt['���ĥ�Î���������ċ�ֈ���ÈľĈ�']=base64_decode('VQ==');$zym_decrypt['���Ô�������į�ֈ��֥���־������']=base64_decode('c2Vzc2lvbg==');$zym_decrypt['��������������������֯���ֈĎ���']=base64_decode('c3BsaXQ=');$zym_decrypt['ïï�����������þ���Į�Ĕ��Î���']=base64_decode('TQ==');$zym_decrypt['��֮���������֋������Ô���������']=base64_decode('RA=='); ?>
<?php
 class messageAction extends BackendAction{public function _initialize(){parent::$GLOBALS['zym_decrypt']['����֯�����ֈ�å���������įï�ֈ']();$this->_mod =D(base64_decode('bXNn'));}public function _before_index(){$�������֯���Ë���Ĉ�ֈ��Î������ =$this->_get('type','intval',1);if($�������֯���Ë���Ĉ�ֈ��Î������==1 ){$����֯���Ë������þ���Ô���֯��� =array(base64_decode('dGl0bGU=') => $GLOBALS['zym_decrypt']['�֎���������Ĉ���å������ċ�־��'](base64_decode('5Y+R6YCB6YCa55+l')), base64_decode('aWZyYW1l') => $GLOBALS['zym_decrypt']['���ĥ�Î���������ċ�ֈ���ÈľĈ�'](base64_decode('bWVzc2FnZS9hZGQ=')), base64_decode('aWQ=') => base64_decode('YWRk'), base64_decode('d2lkdGg=') => base64_decode('NTAw'), base64_decode('aGVpZ2h0') => base64_decode('MzIw') );$this->assign(base64_decode('YmlnX21lbnU='), $����֯���Ë������þ���Ô���֯���);}$this->assign(base64_decode('dHlwZQ=='),$�������֯���Ë���Ĉ�ֈ��Î������);}protected function _search(){$������ֈþ��ĥ���֋��ĥ��֥����� =array();($���Ĕ���Ĉ�־��������ï�Į������ =$this->_request(base64_decode('dGltZV9zdGFydA=='), base64_decode('dHJpbQ==')))&& $������ֈþ��ĥ���֋��ĥ��֥�����[base64_decode('YWRkX3RpbWU=')][] =array(base64_decode('ZWd0'), strtotime($���Ĕ���Ĉ�־��������ï�Į������));($�Ĕ�����������ï�ï��������֔־� =$this->_request(base64_decode('dGltZV9lbmQ='), base64_decode('dHJpbQ==')))&& $������ֈþ��ĥ���֋��ĥ��֥�����[base64_decode('YWRkX3RpbWU=')][] =array(base64_decode('ZWx0'), strtotime($�Ĕ�����������ï�ï��������֔־�)+(24*60*60-1));($��Ô��åÔ���Ĉ������å��Į���Î =$this->_request(base64_decode('a2V5d29yZA=='), base64_decode('dHJpbQ==')))&& $������ֈþ��ĥ���֋��ĥ��֥�����[base64_decode('aW5mbw==')] =array(base64_decode('bGlrZQ=='), '%'.$��Ô��åÔ���Ĉ������å��Į���Î.'%');($�������������Į��Ô���È���֋��� =$this->_request(base64_decode('ZnJvbV9uYW1l'), base64_decode('dHJpbQ==')))&& $������ֈþ��ĥ���֋��ĥ��֥�����[base64_decode('ZnJvbV9uYW1l')] =array(base64_decode('bGlrZQ=='), '%'.$�������������Į��Ô���È���֋���.'%');($������Ô��������֋���È�������î =$this->_request(base64_decode('dG9fbmFtZQ=='), base64_decode('dHJpbQ==')))&& $������ֈþ��ĥ���֋��ĥ��֥�����[base64_decode('dG9fbmFtZQ==')] =array(base64_decode('bGlrZQ=='), '%'.$������Ô��������֋���È�������î.'%');$�������֯���Ë���Ĉ�ֈ��Î������ =$this->_request(base64_decode('dHlwZQ=='), base64_decode('aW50dmFs'));if($�������֯���Ë���Ĉ�ֈ��Î������ ){if($�������֯���Ë���Ĉ�ֈ��Î������==1 ){$������ֈþ��ĥ���֋��ĥ��֥�����[base64_decode('ZnJvbV9pZA==')] =0;}else if($�������֯���Ë���Ĉ�ֈ��Î������==2 ){$������ֈþ��ĥ���֋��ĥ��֥�����[base64_decode('ZnJvbV9pZA==')] =array(base64_decode('Z3Q='),0);}}$this->assign(base64_decode('c2VhcmNo'), array(base64_decode('dGltZV9zdGFydA==') => $���Ĕ���Ĉ�־��������ï�Į������, base64_decode('dGltZV9lbmQ=') => $�Ĕ�����������ï�ï��������֔־�, base64_decode('ZnJvbV9uYW1l') => $�������������Į��Ô���È���֋���, base64_decode('dG9fbmFtZQ==') => $������Ô��������֋���È�������î, base64_decode('dHlwZQ==') => $�������֯���Ë���Ĉ�ֈ��Î������, base64_decode('a2V5d29yZA==') => $��Ô��åÔ���Ĉ������å��Į���Î, ));return $������ֈþ��ĥ���֋��ĥ��֥�����;}public function add(){if (IS_POST){$������Ô��������֋���È�������î =$this->_post('to_name', 'trim');$���������ĥ����Î�������ĥ�Ô��� =$GLOBALS['zym_decrypt']['���Ô�������į�ֈ��֥���־������'](base64_decode('YWRtaW4='));$�������������Į��Ô���È���֋��� =$���������ĥ����Î�������ĥ�Ô���[base64_decode('dXNlcm5hbWU=')];$��֯��ÔĮ֥��������åî�������� =array(array(base64_decode('aWQ=')=>'0', base64_decode('dXNlcm5hbWU=')=>base64_decode('U1lTVEVN')));if ($������Ô��������֋���È�������î){$������Ô��������֋���È�������î =$GLOBALS['zym_decrypt']['��������������������֯���ֈĎ���'](PHP_EOL, $������Ô��������֋���È�������î);$��֯��ÔĮ֥��������åî�������� =$GLOBALS['zym_decrypt']['ïï�����������þ���Į�Ĕ��Î���'](base64_decode('dXNlcg=='))->field(base64_decode('aWQsdXNlcm5hbWU='))->where(array(base64_decode('dXNlcm5hbWU=')=>array(base64_decode('aW4='), $������Ô��������֋���È�������î)))->select();}$�����Ë����֋�����å�֥֮������� =$this->_post(base64_decode('aW5mbw=='), base64_decode('dHJpbQ=='));!$�����Ë����֋�����å�֥֮������� && $this->ajaxReturn(0, L(base64_decode('bWVzc2FnZV9lbXB0eQ==')));$���þ�������������������������ֈ =$GLOBALS['zym_decrypt']['��֮���������֋������Ô���������'](base64_decode('bWVzc2FnZV90cGw='));$���î�ï�����������Ď�֋��֔���� =$GLOBALS['zym_decrypt']['��֮���������֋������Ô���������'](base64_decode('dXNlcl9tc2d0aXA='));foreach ($��֯��ÔĮ֥��������åî�������� as $���Î�֥�����������Ô�����������){$this->_mod->create(array(base64_decode('ZnRpZA==') => $���Î�֥�����������Ô�����������[base64_decode('aWQ=')], base64_decode('ZnJvbV9pZA==') => 0, base64_decode('ZnJvbV9uYW1l') => $�������������Į��Ô���È���֋���, base64_decode('dG9faWQ=') => $���Î�֥�����������Ô�����������[base64_decode('aWQ=')], base64_decode('dG9fbmFtZQ==') => $���Î�֥�����������Ô�����������[base64_decode('dXNlcm5hbWU=')], base64_decode('aW5mbw==') => $�����Ë����֋�����å�֥֮�������, ));$this->_mod->add();if ($���Î�֥�����������Ô�����������[base64_decode('aWQ=')] != '0'){$���î�ï�����������Ď�֋��֔����->add_tip($���Î�֥�����������Ô�����������[base64_decode('aWQ=')], 4);}}$this->ajaxReturn(1, L(base64_decode('b3BlcmF0aW9uX3N1Y2Nlc3M=')), '', base64_decode('YWRk'));}else {$����������������ĮÈ�ċ֎��֯��� =$GLOBALS['zym_decrypt']['ïï�����������þ���Į�Ĕ��Î���'](base64_decode('bWVzc2FnZV90cGw='))->field(base64_decode('aWQsYWxpYXMsbmFtZQ=='))->where(array(base64_decode('dHlwZQ==')=>base64_decode('bXNn'), base64_decode('aXNfc3lz')=>'0'))->select();$this->assign(base64_decode('dHBsX2xpc3Q='), $����������������ĮÈ�ċ֎��֯���);$�Ĕ�ֈ���ï�����������������ċ�� =$this->fetch();$this->ajaxReturn(1, '', $�Ĕ�ֈ���ï�����������������ċ��);}}}