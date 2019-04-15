<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>pay.jsp</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/jsps/new/css/lib.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/new/css/shortcode.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/new/css/style.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/new/css/font-family.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/new/css/navigation-menu.css'/>">
	<script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>

<script type="text/javascript">
$(function() {
	$("img").click(function() {
		$("#" + $(this).attr("name")).attr("checked", true);
	});
});
</script>
  </head>
	<style>
		
		.linkNext {
	background: url(/cmj/images/icon2.png) no-repeat;
	display: inline-block;
	background-position: 0 -35px;
	height: 40px;
	width: 190px;
	margin: 0;
	text-align: center;
	text-decoration: none;
	font-size: 24px;
	font-weight: 900;
	color: #ffffff;
	line-height: 40px;
	font-family: ����;
}

</style>
			<main>
				<!-- Page Banner -->
				<div class="page-banner container-fluid no-padding">
					<!-- Container -->
					<div class="container">
						<div class="banner-content">
							<h3>�����б�</h3>
							<p>�鿴���Ķ�����¼��</p>
						</div>
						<ol class="breadcrumb">
							<li>
								<a title="��ҳ" href="<c:url value='/index.jsp'/>" target="_parent">��ҳ</a>
							</li>
							<li class="active">�����б�</li>
						</ol>
					</div>
					<!-- Container /- -->
				</div>
				<!-- Page Banner /- -->
				
				<!-- Cart -->
				<div class="woocommerce-cart container-fluid no-left-padding no-right-padding">
					<!-- Container -->
					<div class="container">
						<!-- Cart Table -->
							<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12 cart-table">
							<table class="table table-bordered table-responsive">
								<thead>
								<tr>
									<td colspan="2">
										<span class="spanPrice">֧����</span><span style="color:red" class="price_t">&yen;${order.total }</span>
										<span class="spanOid">��ţ�${order.oid }</span>
									</td>
								</tr>
								<tr>
									<td align="center"><span>ѡ���������С�</span></td>
								</tr>
								<tr>
									<td></td>
									<td rowspan="2">
									<form action="<c:url value='/OrderServlet'/>" method="post" id="form1" target="_top">
<input type="hidden" name="method" value="payment"/>
<input type="hidden" name="oid" value="${order.oid }"/>
<div class="divBank">
	<div style="margin-left: 20px;">
	  <div style="margin-bottom: 20px;">
		<input id="ICBC-NET-B2C" type="radio" name="yh" value="ICBC-NET-B2C" checked="checked"/>
		<img name="ICBC-NET-B2C" align="middle" src="<c:url value='/bank_img/icbc.bmp'/>"/>
		
		<input id="CMBCHINA-NET-B2C" type="radio" name="yh" value="CMBCHINA-NET-B2C"/>
		<img name="CMBCHINA-NET-B2C" align="middle" src="<c:url value='/bank_img/cmb.bmp'/>"/>

		<input id="ABC-NET-B2C" type="radio" name="yh" value="ABC-NET-B2C"/>
		<img name="ABC-NET-B2C" align="middle" src="<c:url value='/bank_img/abc.bmp'/>"/>
		
		<input id="CCB-NET-B2C" type="radio" name="yh" value="CCB-NET-B2C"/>
		<img name="CCB-NET-B2C" align="middle" src="<c:url value='/bank_img/ccb.bmp'/>"/>
	  </div>	
	  <div style="margin-bottom: 20px;">
		<input id="BCCB-NET-B2C" type="radio" name="yh" value="BCCB-NET-B2C"/>
		<img name="BCCB-NET-B2C" align="middle" src="<c:url value='/bank_img/bj.bmp'/>"/>

		<input id="BOCO-NET-B2C" type="radio" name="yh" value="BOCO-NET-B2C"/>
		<img name="BOCO-NET-B2C" align="middle" src="<c:url value='/bank_img/bcc.bmp'/>"/>

		<input id="CIB-NET-B2C" type="radio" name="yh" value="CIB-NET-B2C"/>
		<img name="CIB-NET-B2C" align="middle" src="<c:url value='/bank_img/cib.bmp'/>"/>

		<input id="NJCB-NET-B2C" type="radio" name="yh" value="NJCB-NET-B2C"/>
		<img name="NJCB-NET-B2C" align="middle" src="<c:url value='/bank_img/nanjing.bmp'/>"/>
	  </div>
	  <div style="margin-bottom: 20px;">
		<input id="CMBC-NET-B2C" type="radio" name="yh" value="CMBC-NET-B2C"/>
		<img name="CMBC-NET-B2C" align="middle" src="<c:url value='/bank_img/cmbc.bmp'/>"/>

		<input id="CEB-NET-B2C" type="radio" name="yh" value="CEB-NET-B2C"/>
		<img name="CEB-NET-B2C" align="middle" src="<c:url value='/bank_img/guangda.bmp'/>"/>

		<input id="BOC-NET-B2C" type="radio" name="yh" value="BOC-NET-B2C"/>
		<img name="BOC-NET-B2C" align="middle" src="<c:url value='/bank_img/bc.bmp'/>"/>

		<input id="PINGANBANK-NET" type="radio" name="yh" value="PINGANBANK-NET"/>
		<img name="PINGANBANK-NET" align="middle" src="<c:url value='/bank_img/pingan.bmp'/>"/>
	  </div>
	  <div style="margin-bottom: 20px;">
		<input id="CBHB-NET-B2C" type="radio" name="yh" value="CBHB-NET-B2C"/>
		<img name="CBHB-NET-B2C" align="middle" src="<c:url value='/bank_img/bh.bmp'/>"/>

		<input id="HKBEA-NET-B2C" type="radio" name="yh" value="HKBEA-NET-B2C"/>
		<img name="HKBEA-NET-B2C" align="middle" src="<c:url value='/bank_img/dy.bmp'/>"/>

		<input id="NBCB-NET-B2C" type="radio" name="yh" value="NBCB-NET-B2C"/>
		<img name="NBCB-NET-B2C" align="middle" src="<c:url value='/bank_img/ningbo.bmp'/>"/>

		<input id="ECITIC-NET-B2C" type="radio" name="yh" value="ECITIC-NET-B2C"/>
		<img name="ECITIC-NET-B2C" align="middle" src="<c:url value='/bank_img/zx.bmp'/>"/>
	  </div>
	  <div style="margin-bottom: 20px;">
		<input id="SDB-NET-B2C" type="radio" name="yh" value="SDB-NET-B2C"/>
		<img name="SDB-NET-B2C" align="middle" src="<c:url value='/bank_img/sfz.bmp'/>"/>

		<input id="GDB-NET-B2C" type="radio" name="yh" value="GDB-NET-B2C"/>
		<img name="GDB-NET-B2C" align="middle" src="<c:url value='/bank_img/gf.bmp'/>"/>

		<input id="SHB-NET-B2C" type="radio" name="yh" value="SHB-NET-B2C"/>
		<img name="SHB-NET-B2C" align="middle" src="<c:url value='/bank_img/sh.bmp'/>"/>

		<input id="SPDB-NET-B2C" type="radio" name="yh" value="SPDB-NET-B2C"/>
		<img name="SPDB-NET-B2C" align="middle" src="<c:url value='/bank_img/shpd.bmp'/>"/>
	  </div>
	  <div style="margin-bottom: 20px;">
		<input id="POST-NET-B2C" type="radio" name="yh" value="POST-NET-B2C"/>
		<img name="POST-NET-B2C" align="middle" src="<c:url value='/bank_img/post.bmp'/>"/>

		<input id="BJRCB-NET-B2C" type="radio" name="yh" value="BJRCB-NET-B2C"/>
		<img name="BJRCB-NET-B2C" align="middle" src="<c:url value='/bank_img/beijingnongshang.bmp'/>"/>

		<input id="HXB-NET-B2C" type="radio" name="yh" value="HXB-NET-B2C"/>
		<img name="HXB-NET-B2C" align="middle" src="<c:url value='/bank_img/hx.bmp'/>"/>

		<input id="CZ-NET-B2C" type="radio" name="yh" value="CZ-NET-B2C"/>
		<img name="CZ-NET-B2C" align="middle" src="<c:url value='/bank_img/zheshang.bmp'/>"/>
	  </div>
	</div>
	<a href="javascript:void $('#form1').submit();" class="linkNext">��һ��</a>
</form>
									</td>
								</tr>
								
								</thead>
								</table>
								</div>
								</div>
								</div>
								</div>
								</main>
								</div>


  </body>
</html>
