<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<%@ include file="../common/comm.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�û���Ϣ�޸�</title>
<link href="../css/css.css" rel="stylesheet" type="text/css">
 <script src="../js/jquery-1.11.3.js" type="text/javascript" ></script>
 <script type="text/javascript">
 function modify(){
	    var form=$("#form1").get(0);
		form.action="QueryServlet?action=modifyOther";
		form.method="post";
		form.submit(); 
 }
 function  modifyPwd(){

	 var form=$("#form1").get(0);
		form.action="QueryServlet?action=modifyPwd";
		form.method="post";
		form.submit();
 }
 </script>

</head>

<body class="write_bg">
	<form action="" method="get" id="form1">
	<input type="hidden"   name="id" value="${pageUser.id}">
		<table width="100%" border="0" cellspacing="0">
			<tr>
				<td height="30"></td>
			</tr>
		</table>
		<table width="835" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="20" colspan="2"></td>
			</tr>
			<tr>
				<td width="64"></td>
				<td width="794" height="30" valign="top" class="text_blod_title">�޸ĸ�����Ϣ</td>
			</tr>
			<tr>
				<td height="15" colspan="2"><img src="../images/line1.jpg"
					width="835" height="6"></td>
			</tr>
			<tr>
				<td colspan="2" background="../images/wb_01 (3).jpg"><table
						width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="64">&nbsp;</td>
							<td width="771" height="25" align="left" class="text_cray">ע������
								<span class="text_red">*</span> ������Ϊ������
							</td>
						</tr>
						<tr>
							<td height="20" colspan="2">&nbsp;</td>
						</tr>
					</table>
					<table width="700" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td height="15" colspan="4" align="left" class="text_title">��¼��Ϣ</td>
						</tr>
						<tr>
							<td height="10" colspan="4"></td>
						</tr>
						<tr>
							<td width="20" align="center" class="text_red1"></td>
							<td width="100" height="40" align="left" class="text_cray1">��¼����</td>
							<td class="text_cray">
<input type="text" name="loginName" id="textfield22" readonly="readonly" disabled="true"	value="${pageUser.userName}" /></td>
							<td width="239" rowspan="6" align="center"><img
								src="../images/photo/horse.jpg" width="120" height="120"></td>
						</tr>
						<tr>
							<td width="20" align="center" class="text_red1"></td>
							<td width="100" height="40" align="left" class="text_cray1">�����ʼ����</td>
							<td class="text_cray"><label>
							 <input name="Submit" type="button" class="text_cray" value="�����ʼ��" onclick="modifyPwd();">
							</label></td>
						</tr>
						<tr>
							<td height="20" colspan="3"></td>
						</tr>
						<tr>
							<td height="15" colspan="3" align="left" class="text_title">Ȩ������</td>
						</tr>
						<tr>
							<td height="10" colspan="3"></td>
						</tr>
						<tr>
							<td width="20" align="center" class="text_red">*</td>
							<td width="100" height="40" align="left" class="text_cray1">�û�Ȩ�ޣ�</td>
							<td><select name="select" class="text_cray">
									<option>����Ա</option>
									<option>��ͨ�û�</option>
							</select></td>
						</tr>
					</table>
					<table width="700" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td height="20" colspan="6"></td>
						</tr>
						<tr>
							<td height="15" colspan="6" align="left" class="text_title">��ϸ��Ϣ</td>
						</tr>
						<tr>
							<td height="10" colspan="6"></td>
						</tr>
						<tr>
							<td width="20" align="center" class="text_red">*</td>
							<td width="100" height="40" align="left" class="text_cray1">��ʵ������</td>
							<td colspan="4" class="text_cray">
							<input name="realName" type="text" class="text_cray" id="textfield2" value="${pageUser.realName}" /></td>
						</tr>
						<tr>
							<td width="20" align="center" class="text_red">*</td>
							<td width="100" height="40" align="left" class="text_cray1">�� ��</td> 
							<td colspan="4" class="text_cray"><span class="mr25">
<input type="radio" name="sexCode" value="M" ${pageUser.sex=="M"?"checked":"" }/> <label>��</label>
							</span> <span>
 <input type="radio" name="sexCode" value="F" ${pageUser.sex=="F"?"checked":""}/> <label>Ů</label>
							</span></td>
						</tr>
						<tr>
							<td width="20" align="center" class="text_red">*</td>
							<td width="100" height="40" align="left" class="text_cray1">ʡ�ݣ�</td>
							<td width="106"><label> 
							<select name="province" 	class="text_cray" id="province">
										<option value="" selected="selected">${pageUser.city.province.province}</option>
								</select>
							</label></td>
							<td width="24" align="left" class="text_cray">&nbsp;</td>
							<td width="43" align="left" class="text_cray">���У�</td>
							<td width="407" align="left" class="text_cray"><label>
									<select name="city" class="text_cray" id="city">
										<option value="" selected="selected">${pageUser.city.city}</option>
								</select>
							</label></td>
						</tr>
						<tr>
							<td width="20" align="center" class="text_red">*</td>
							<td width="100" height="40" align="left" class="text_cray1">֤�����ͣ�</td>
							<td colspan="4">
							<select class="text_cray" name="idTypeCode" id="cardType">
									<option value="1" ${pageUser.certType.id=="1"?"selected":""}><span>��������֤</span>
									</option>
									<option value="2" ${pageUser.certType.id=="2"?"selected":""}><span>�۰�ͨ��֤</span>
									</option>
									<option value="3" ${pageUser.certType.id=="3"?"selected":""}><span>̨��ͨ��֤</span>
									</option>
									<option value="4" ${pageUser.certType.id=="4"?"selected":""}><span>����</span>
									</option>
							</select></td>
						</tr>
						<tr>
							<td width="20" align="center" class="text_red">*</td>
							<td width="100" height="40" align="left" class="text_cray1">֤�����룺</td>
							<td colspan="4" class="text_cray">
							<input type="text" name="idCode" id="textfield6" value="${pageUser.cert }"/></td>
						</tr>
						<tr>
							<td width="20" align="center" class="text_red">*</td>
							<td width="100" height="40" align="left" class="text_cray1">�������ڣ�</td>
							<td colspan="4" class="text_cray">
							<input type="text" name="birthday" id="textfield7"  value="${pageUser.birthday }"/></td>
						</tr>
						<tr>
							<td width="20" align="center">&nbsp;</td>
							<td width="100" height="40" align="left" class="text_cray1">�ÿ����ͣ�</td>
							<td colspan="4" class="text_cray"><select class="text_cray"
								id="passengerType" name="passenger_type">
									<option value="1"  ${pageUser.userType.id=="1"?"selected":""}>����</option>
									<option value="2" ${pageUser.userType.id=="2"?"selected":""}>��ͯ</option>
									<option value="3" ${pageUser.userType.id=="3"?"selected":""}>ѧ��</option>
									<option value="4" ${pageUser.userType.id=="4"?"selected":""}>�м����ˡ��˲����񾯲�</option>
							</select></td>
						</tr>
						<tr>
							<td height="10" colspan="6">&nbsp;</td>
						</tr>
						<tr>
							<td width="20" align="center">&nbsp;</td>
							<td height="15" align="left" class="text_cray1">��ע��</td>
							<td height="15" colspan="4">
							<textarea name="remark" rows="8" class="text_cray" style="width: 100%" >${pageUser.content }</textarea></td>
						</tr>
					</table>
					<table width="100%" border="0" cellspacing="0">
						<tr>
							<td>&nbsp;</td>
						</tr>
					</table>
		</table>
		<table width="700" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td width="164">&nbsp;</td>
				<td width="99" height="30" align="center">
<input name="button" type="button" class="buttj" id="button" value="" onclick="modify();"></td>
				<td width="98" align="center">&nbsp;</td>
				<td width="97" align="center">
<input name="button2" type="reset" class="butcz" id="button2" value=""></td>
				<td width="92" align="center">&nbsp;</td>
			</tr>
		</table>
		<table width="100%" border="0" cellspacing="0">
			<tr>
				<td height="20">&nbsp;</td>
			</tr>
		</table>
		<table width="100%" border="0" cellspacing="0">
			<tr>
				<td height="2" background="../images/bottom_point.gif"></td>
			</tr>
			<tr>
				<td height="25" align="center"
					background="../images/bottom_ny_bg.gif" class="text_cray">copyright@12306
					��Ʊ��</td>
			</tr>
		</table>
		</td>
		</tr>
		</table>
	</form>

	<script type="text/JavaScript" src="../js/common.js"></script>
</body>
</html>
    