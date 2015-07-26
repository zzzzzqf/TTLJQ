<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<include file="public:head" />
</head>
<body>
<div class="main w1200">
<include file="public:header" />
</div>



<!--==========================header============================-->


	
<link rel="stylesheet" type="text/css" href="__STATIC__/tupian/register/reg.css">
<div id="main">
	<p class="bt">请选择注册类型</p>
	<div class="zhuce">
		<div class="left">
			<div class="left_top">
				<img src="__STATIC__/tupian/register/tuiche.png">
				<p class="maijia">我是买家，我是抢购达人</p>
				<p class="xq">全场商品0-2.9折还包邮哦</p>
				<p class="xq">优惠社！会省钱，会生活！</p>
			</div>
			<div class="left_bot">
				<p>请选择:</p>
				<a target="_self" href="{:U('user/register',array('login_type'=>'1'))}">
					<img src="__STATIC__/tupian/register/mai1.png">
					<span>买家注册</span>
				</a>
			</div>
		</div>
		<div class="right">
			<div class="right_top">
				<img class="one" src="__STATIC__/tupian/register/shangjia.png">
				<p class="maijia">我是商家，我要快速打造爆款</p>
				<p class="xq1">抢占搜索排名</p>
				<p class="xq2">优惠社，打造热卖品的营销渠道</p>
			</div>
			<div class="right_bot">
				<p>请选择:</p>
				<a class="sj" target="_self" href="{:U('user/register',array('login_type'=>'2'))}">
					<img src="__STATIC__/tupian/register/mai2.png">
					<span>商家注册</span>
				</a>
			</div>
		</div>
		<div class="clear"></div>
	</div>
</div>



<include file="public:footer" />
</body>
</html>