<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<head>
<title>경력등록</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/Career_common.css" />
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/Career_jquery-ui.css" />


<!--

일단 패스
 
<script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery/jquery-1.7.2.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery/jquery-ui-1.9.2.custom.min.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery/jquery.alphanumeric.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery/jquery.form.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery/jquery.placeholder.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery/jquery.tmpl.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery/jquery.blockUI.js"></script>

<script type="text/javascript" src="<%= request.getContextPath() %>/js/kimsoft/kimsoft.js"></script>

<script type="text/javascript" src="<%= request.getContextPath() %>/js/common.dev.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/common.modal.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/date.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/gnb.js"></script>
<script type="text/javascript">
 

	gUserType = "PERSONAL";

		var CQWEB_SERVICE_NAME = "kipa";
	var CQWEBID_SERVICE_NAME = "kipa";
	var CQWEB_SERVICE_URL = "https://career.sw.or.kr/CQJava";


</script>
-->

<style type="text/css" media="screen">
	.printOnly {
		display:none;
	}
</style>
<style type="text/css" media="print">
	#wrap {
		background: url(none) repeat-x 0 0 !important;
	}
	#container {
		width:764px;
		background: url(none) repeat-x 0 0 !important;
	}
	.noprint {
		display:none;
	}
	
</style>
</head>
<body>

<div>

			<script type="text/javascript">
			


<!--
	var workCareer = kutil.obj2Array([ ]);
	var skillCareer = kutil.obj2Array([ ]);
	var scholar = kutil.obj2Array([ ]);
	var skillCert = kutil.obj2Array([ ]);
	var education = kutil.obj2Array([ ]);
	var prize = kutil.obj2Array([ ]);

	var ncsDutyDiv1Infos = [ {
  "code" : "IT01",
  "value" : "IT컨설턴트"
}, {
  "code" : "IT02",
  "value" : "IT프로젝트관리자"
}, {
  "code" : "IT03",
  "value" : "SW아키텍트"
}, {
  "code" : "IT10",
  "value" : "DB엔지니어 "
}, {
  "code" : "IT11",
  "value" : "NW엔지니어 "
}, {
  "code" : "IT04",
  "value" : "SW엔지니어"
}, {
  "code" : "IT05",
  "value" : "임베디드SW엔지니어"
}, {
  "code" : "IT12",
  "value" : "시스템엔지니어"
}, {
  "code" : "IT06",
  "value" : "IT마케터"
}, {
  "code" : "IT07",
  "value" : "IT보안엔지니어"
}, {
  "code" : "IT08",
  "value" : "IT품질관리자"
}, {
  "code" : "IT09",
  "value" : "IT 교육강사"
}, {
  "code" : "IT91",
  "value" : "기타"
} ];
	var ncsDutyDiv2Infos = [ {
  "code" : "IT01-01",
  "value" : "정보기술기획자"
}, {
  "code" : "IT01-02",
  "value" : "정보기술컨설턴트"
}, {
  "code" : "IT01-05",
  "value" : "정보보호컨설턴트"
}, {
  "code" : "IT02-01",
  "value" : "IT프로젝트관리자"
}, {
  "code" : "IT03-01",
  "value" : "SW아키텍트"
}, {
  "code" : "IT03-04",
  "value" : "빅데이터분석가"
}, {
  "code" : "IT03-05",
  "value" : "UI/UX기획자"
}, {
  "code" : "IT03-06",
  "value" : "업무분석가"
}, {
  "code" : "IT10-01",
  "value" : "DB엔지니어"
}, {
  "code" : "IT10-02",
  "value" : "데이터아키텍트"
}, {
  "code" : "IT11-01",
  "value" : "NW엔지니어"
}, {
  "code" : "IT04-04",
  "value" : "빅데이터개발자"
}, {
  "code" : "IT04-05",
  "value" : "UI/UX퍼블리셔"
}, {
  "code" : "IT04-06",
  "value" : "응용SW개발자"
}, {
  "code" : "IT04-03",
  "value" : "시스템SW엔지니어"
}, {
  "code" : "IT05-01",
  "value" : "임베디드SW엔지니어"
}, {
  "code" : "IT12-01",
  "value" : "IT시스템관리자"
}, {
  "code" : "IT12-02",
  "value" : "IT지원기술자"
}, {
  "code" : "IT06-01",
  "value" : "SW제품기획자"
}, {
  "code" : "IT06-02",
  "value" : "IT기술영업"
}, {
  "code" : "IT06-03",
  "value" : "IT서비스기획자"
}, {
  "code" : "IT07-01",
  "value" : "정보보안전문가"
}, {
  "code" : "IT07-02",
  "value" : "침해사고대응전문가"
}, {
  "code" : "IT08-01",
  "value" : "IT품질관리자"
}, {
  "code" : "IT08-02",
  "value" : "IT테스터"
}, {
  "code" : "IT08-03",
  "value" : "IT감리원"
}, {
  "code" : "IT09-01",
  "value" : "IT교육강사"
}, {
  "code" : "IT91-01",
  "value" : "DB(자료)구축"
}, {
  "code" : "IT91-02",
  "value" : "CAD-CAM"
} ];
	var proofMethodInfos = [ {
  "code" : "1",
  "value" : "기업확인요청"
}, {
  "code" : "2",
  "value" : "우편(방문)제출"
} ];
	var proofMethodEtcInfos = [ {
  "code" : "1",
  "value" : "온라인제출"
}, {
  "code" : "2",
  "value" : "우편(방문)제출"
} ];
	var proofMethodAgreeInfos = [ {
  "code" : "1",
  "value" : "온라인제출"
}, {
  "code" : "2",
  "value" : "우편(방문)제출"
}, {
  "code" : "3",
  "value" : "행정정보동의"
} ];
	var approvalStatusInfos = [ {
  "code" : "1",
  "value" : "-"
}, {
  "code" : "2",
  "value" : "확인중"
}, {
  "code" : "3",
  "value" : "확인"
}, {
  "code" : "4",
  "value" : "미확인"
} ];
	var degreeInfos = [ {
  "code" : "01",
  "value" : "박사"
}, {
  "code" : "02",
  "value" : "석사"
}, {
  "code" : "03",
  "value" : "학사"
}, {
  "code" : "04",
  "value" : "전문학사"
}, {
  "code" : "10",
  "value" : "전문학사(3년)"
}, {
  "code" : "05",
  "value" : "고졸"
}, {
  "code" : "06",
  "value" : "기능대졸"
}, {
  "code" : "07",
  "value" : "직업훈련기관이수"
}, {
  "code" : "08",
  "value" : "기능실기시험합격"
}, {
  "code" : "09",
  "value" : "기타"
} ];

	$(document).ready(function(){
		kutil.setSubmitFunc($(".submit"), "");

		showWorkCareer();
		showSkillCareer();
		showScholar();
		showSkillCert();
		showEducation();
		showPrize();

		// 하단 메뉴
		var headerH =$('.header').outerHeight();
		var containerH =$('.container').outerHeight();
		var winH = $(window).height();
		var btmBtnH=headerH + containerH - winH+127;
	    var btmBtn = $('.sub_btn_area');	    
	    $(window).scroll(function () {
	        if ($(this).scrollTop() > btmBtnH) {
	            btmBtn.addClass("sub_btn_base");
	        }else {
	            btmBtn.removeClass("sub_btn_base");
	        }
	    });
	});
	// 하단 메뉴
	$(window).resize(function (){
		var headerH =$('.header').outerHeight();
		var containerH =$('.container').outerHeight();
		var winH = $(window).height();
		var btmBtnH=headerH + containerH - winH+127;
	    var btmBtn = $('.sub_btn_area');	    
	    $(window).scroll(function () {
	        if ($(this).scrollTop() > btmBtnH) {
	            btmBtn.addClass("sub_btn_base");
	        }else {
	            btmBtn.removeClass("sub_btn_base");
	        }
	    });
	});

	function updateCurrWorkStatus() {
		showPopup("empPop", "pop_emp.jsp");
	}

	function closeEmpPop() {
		closePopup("empPop");
	}

	function approvalWorkCareer(workCareerNo) {
		showPopup("workCareerPop", "pop_view01.jsp?workCareerNo=" + workCareerNo);
	}

	function updateWorkCareer(workCareerNo) {
		showPopup("workCareerPop", "pop_reg01.jsp?workCareerNo=" + workCareerNo + "&callback=cbWorkCareer");
	}

	function approvalSkillCareer(skillCareerNo) {
		showPopup("skillCareerPop", "pop_view02.jsp?skillCareerNo=" + skillCareerNo);
	}

	function updateSkillCareer(skillCareerNo) {
		showPopup("skillCareerPop", "pop_reg02.jsp?skillCareerNo=" + skillCareerNo + "&callback=cbSkillCareer");
	}

	function approvalScholar(scholarNo) {
		showPopup("scholarPop", "pop_view03.jsp?scholarNo=" + scholarNo);
	}

	function updateScholar(scholarNo) {
		showPopup("scholarPop", "pop_reg03.jsp?scholarNo=" + scholarNo + "&callback=cbScholar");
	}

	function approvalSkillCert(skillCertNo) {
		showPopup("skillCertPop", "pop_view04.jsp?skillCertNo=" + skillCertNo);
	}

	function updateSkillCert(skillCertNo) {
		showPopup("skillCertPop", "pop_reg04.jsp?skillCertNo=" + skillCertNo + "&callback=cbSkillCert");
	}

	function approvalEducation(educationNo) {
		showPopup("educationPop", "pop_view05.jsp?educationNo=" + educationNo);
	}

	function updateEducation(educationNo) {
		showPopup("educationPop", "pop_reg05.jsp?educationNo=" + educationNo + "&callback=cbEducation");
	}

	function approvalPrize(prizeNo) {
		showPopup("prizePop", "pop_view06.jsp?prizeNo=" + prizeNo);
	}

	function updatePrize(prizeNo) {
		showPopup("prizePop", "pop_reg06.jsp?prizeNo=" + prizeNo + "&callback=cbPrize");
	}

	function printCareer(careerDiv) {
		if(careerDiv == "workCareer") {
			if($("#writeForm input[name=workCareerNo]:checked").length < 1) {
				alert("근무경력을 체크해주세요.");
				return;			
			}

			if(confirm("해당 근무경력의 근무경력확인서를 출력하시겠습니까?") == false) {
				return;
			}

			workCareerNo = [];
			$("input[name=workCareerNo]").each(function() {
				if ($(this).is(":checked") == true) {
					workCareerNo[workCareerNo.length] = $(this).val();
				}
			});

			var pop = kutil.popsy("pop_work.jsp?memberNo=P200019451&workCareerNo=" + workCareerNo, "printWorkPop", 840, 700);
			pop.focus();
		} else if(careerDiv == "skillCareer") {
			if($("#writeForm input[name=skillCareerNo]:checked").length < 1) {
				alert("기술경력을 체크해주세요.");
				return;			
			}

			if(confirm("해당 기술경력의 기술경력확인서를 출력하시겠습니까?") == false) {
				return;
			}

			skillCareerNo = [];
			$("input[name=skillCareerNo]").each(function() {
				if ($(this).is(":checked") == true) {
					skillCareerNo[skillCareerNo.length] = $(this).val();
				}
			});

			var pop = kutil.popsy("pop_skill.jsp?memberNo=P200019451&skillCareerNo=" + skillCareerNo, "printSkillPop", 840, 700);
			pop.focus();
		}
	}

	function showWorkCareerPop() {
		showPopup("workCareerPop", "pop_reg01.jsp?callback=cbWorkCareer");
	}

	function closeWorkCareerPop() {
		closePopup("workCareerPop");
	}

	function showSearchComPop(callback) {
		showPopup("searchComPop", "pop_com01.jsp?callback=" + callback);
	}

	function closeSearchComPop() {
		closePopup("searchComPop");
	}

	function showRegComPop(callback) {
		showPopup("regComPop", "pop_com02.jsp?callback=" + callback);
	}

	function closeRegComPop() {
		closePopup("regComPop");
	}

	function showBizPop(businessNum, callback, callback4save) {
		showPopup("bizPop", "pop_biz.jsp?businessNum=" + businessNum + "&callback=" + callback + "&callback4save=" + callback4save);
	}

	function closeBizPop() {
		closePopup("bizPop");
	}

	function showSkillCareerPop() {
		showPopup("skillCareerPop", "pop_reg02.jsp?callback=cbSkillCareer");
	}

	function closeSkillCareerPop() {
		closePopup("skillCareerPop");
	}

	function showScholarPop() {
		showPopup("scholarPop", "pop_reg03.jsp?callback=cbScholar");
	}

	function closeScholarPop() {
		closePopup("scholarPop");
	}

	function showSearchSchPop() {
		showPopup("searchSchPop", "pop_sch01.jsp?callback=scholarPop.cbSearchSchoolCode");
	}

	function closeSearchSchPop() {
		closePopup("searchSchPop");
	}

	function showRegSchPop() {
		showPopup("regSchPop", "pop_sch02.jsp?callback=scholarPop.cbSearchSchoolCode");
	}

	function closeRegSchPop() {
		closePopup("regSchPop");
	}

	function showSearchSchDeptPop(schoolCode) {
		showPopup("searchSchDeptPop", "pop_sch_dept01.jsp?schoolCode=" + schoolCode + "&callback=scholarPop.cbSearchSchoolDeptCode");
	}

	function closeSearchSchDeptPop() {
		closePopup("searchSchDeptPop");
	}

	function showRegSchDeptPop(schoolCode) {
		showPopup("regSchDeptPop", "pop_sch_dept02.jsp?schoolCode=" + schoolCode + "&callback=scholarPop.cbSearchSchoolDeptCode");
	}

	function closeRegSchDeptPop() {
		closePopup("regSchDeptPop");
	}

	function showSkillCertPop() {
		showPopup("skillCertPop", "pop_reg04.jsp?callback=cbSkillCert");
	}

	function closeSkillCertPop() {
		closePopup("skillCertPop");
	}

	function showSearchCerPop() {
		showPopup("searchCerPop", "pop_cer01.jsp?callback=skillCertPop.cbSearchCertificateCode");
	}

	function closeSearchCerPop() {
		closePopup("searchCerPop");
	}

	function showRegCerPop() {
		showPopup("regCerPop", "pop_cer02.jsp?callback=skillCertPop.cbSearchCertificateCode");
	}

	function closeRegCerPop() {
		closePopup("regCerPop");
	}

	function showEducationPop() {
		showPopup("educationPop", "pop_reg05.jsp?callback=cbEducation");
	}

	function closeEducationPop() {
		closePopup("educationPop");
	}

	function showSearchEduPop() {
		showPopup("searchEduPop", "pop_edu01.jsp?callback=educationPop.cbSearchEducationCode");
	}

	function closeSearchEduPop() {
		closePopup("searchEduPop");
	}

	function showRegEduPop() {
		showPopup("regEduPop", "pop_edu02.jsp?callback=educationPop.cbSearchEducationCode");
	}

	function closeRegEduPop() {
		closePopup("regEduPop");
	}

	function showPrizePop() {
		showPopup("prizePop", "pop_reg06.jsp?callback=cbPrize");
	}

	function closePrizePop() {
		closePopup("prizePop");
	}

	function addCareer(careerDiv) {
		if(careerDiv == "workCareer") {
			showWorkCareerPop();
		} else if(careerDiv == "skillCareer") {
			showSkillCareerPop();
		} else if(careerDiv == "scholar") {
			showScholarPop();
		} else if(careerDiv == "skillCert") {
			showSkillCertPop();
		} else if(careerDiv == "education") {
			showEducationPop();
		} else if(careerDiv == "prize") {
			showPrizePop();
		}
	}

	function removeCareer(careerDiv) {
		if(careerDiv == "workCareer") {
			if($("#writeForm input[name=workCareerNo]:checked").length < 1) {
				alert("삭제할 근무경력을 체크해주세요.");
				return;
			}

			if(confirm("해당 근무경력을 삭제하시겠습니까?") == false) {
				return;
			}

			$("#writeForm").attr("action", "swc_write01_proc.jsp?mode=removeWorkCareer");

			$("#writeForm input[name=callback]").val("cbWorkCareer");

			kutil.submitPost("writeForm");
		} else if(careerDiv == "skillCareer") {
			if($("#writeForm input[name=skillCareerNo]:checked").length < 1) {
				alert("삭제할 기술경력을 체크해주세요.");
				return;			
			}

			if(confirm("해당 기술경력을 삭제하시겠습니까?") == false) {
				return;
			}

			$("#writeForm").attr("action", "swc_write01_proc.jsp?mode=removeSkillCareer");

			$("#writeForm input[name=callback]").val("cbSkillCareer");

			kutil.submitPost("writeForm");
		} else if(careerDiv == "scholar") {
			if($("#writeForm input[name=scholarNo]:checked").length < 1) {
				alert("삭제할 학력을 체크해주세요.");
				return;			
			}

			if(confirm("해당 학력을 삭제하시겠습니까?") == false) {
				return;
			}

			$("#writeForm").attr("action", "swc_write01_proc.jsp?mode=removeScholar");

			$("#writeForm input[name=callback]").val("cbScholar");

			kutil.submitPost("writeForm");
		} else if(careerDiv == "skillCert") {
			if($("#writeForm input[name=skillCertNo]:checked").length < 1) {
				alert("삭제할 기술자격을 체크해주세요.");
				return;			
			}

			if(confirm("해당 기술자격을 삭제하시겠습니까?") == false) {
				return;
			}

			$("#writeForm").attr("action", "swc_write01_proc.jsp?mode=removeSkillCert");

			$("#writeForm input[name=callback]").val("cbSkillCert");

			kutil.submitPost("writeForm");
		} else if(careerDiv == "education") {
			if($("#writeForm input[name=educationNo]:checked").length < 1) {
				alert("삭제할 교육을 체크해주세요.");
				return;			
			}

			if(confirm("해당 교육을 삭제하시겠습니까?") == false) {
				return;
			}

			$("#writeForm").attr("action", "swc_write01_proc.jsp?mode=removeEducation");

			$("#writeForm input[name=callback]").val("cbEducation");

			kutil.submitPost("writeForm");
		} else if(careerDiv == "prize") {
			if($("#writeForm input[name=prizeNo]:checked").length < 1) {
				alert("삭제할 상훈을 체크해주세요.");
				return;			
			}

			if(confirm("해당 상훈을 삭제하시겠습니까?") == false) {
				return;
			}

			$("#writeForm").attr("action", "swc_write01_proc.jsp?mode=removePrize");

			$("#writeForm input[name=callback]").val("cbPrize");

			kutil.submitPost("writeForm");
		}
	}

	function cbWorkCareer(data) {
		kutil.refreshForm();
	}

	function showWorkCareer() {
		kutil.calcIndex(workCareer, "DESC");

		kutil.updateCodeValue(workCareer, ncsDutyDiv1Infos, "ncsDutyDiv1", "ncsDutyDiv1Desc");
		kutil.updateCodeValue(workCareer, ncsDutyDiv2Infos, "ncsDutyDiv2", "ncsDutyDiv2Desc");
		kutil.updateCodeValue(workCareer, proofMethodInfos, "proofMethod", "proofMethodDesc");
		kutil.updateCodeValue(workCareer, approvalStatusInfos, "approvalStatus", "approvalStatusDesc");

		$("#workCareerLayer").html("");
		$("#workCareerTmpl").tmpl(workCareer).appendTo("#workCareerLayer");
		$("#checkAll4workCareer").attr("checked", false);
	}

	function cbSkillCareer(data) {
		skillCareer = kutil.deepCopy(data);

		showSkillCareer();
	}

	function showSkillCareer() {
		kutil.calcIndex(skillCareer, "DESC");

		kutil.updateCodeValue(skillCareer, ncsDutyDiv1Infos, "ncsDutyDiv1", "ncsDutyDiv1Desc");
		kutil.updateCodeValue(skillCareer, ncsDutyDiv2Infos, "ncsDutyDiv2", "ncsDutyDiv2Desc");
		kutil.updateCodeValue(skillCareer, proofMethodInfos, "proofMethod", "proofMethodDesc");
		kutil.updateCodeValue(skillCareer, approvalStatusInfos, "approvalStatus", "approvalStatusDesc");

		$("#skillCareerLayer").html("");
		$("#skillCareerTmpl").tmpl(skillCareer).appendTo("#skillCareerLayer");
		$("#checkAll4skillCareer").attr("checked", false);
	}

	function cbScholar(data) {
		scholar = kutil.deepCopy(data);

		showScholar();
	}

	function showScholar() {
		kutil.calcIndex(scholar, "DESC");

		kutil.updateCodeValue(scholar, proofMethodEtcInfos, "proofMethodEtc", "proofMethodEtcDesc");
		kutil.updateCodeValue(scholar, approvalStatusInfos, "approvalStatus", "approvalStatusDesc");
		kutil.updateCodeValue(scholar, degreeInfos, "degree", "degreeDesc");

		$("#scholarLayer").html("");
		$("#scholarTmpl").tmpl(scholar).appendTo("#scholarLayer");
		$("#checkAll4scholar").attr("checked", false);
	}

	function cbSkillCert(data) {
		skillCert = kutil.deepCopy(data);

		showSkillCert();
	}

	function showSkillCert() {
		kutil.calcIndex(skillCert, "DESC");

		kutil.updateCodeValue(skillCert, proofMethodAgreeInfos, "proofMethodAgree", "proofMethodAgreeDesc");
		kutil.updateCodeValue(skillCert, approvalStatusInfos, "approvalStatus", "approvalStatusDesc");

		$("#skillCertLayer").html("");
		$("#skillCertTmpl").tmpl(skillCert).appendTo("#skillCertLayer");
		$("#checkAll4skillCert").attr("checked", false);
	}

	function cbEducation(data) {
		education = kutil.deepCopy(data);

		showEducation();
	}

	function showEducation() {
		kutil.calcIndex(education, "DESC");

		kutil.updateCodeValue(education, proofMethodEtcInfos, "proofMethodEtc", "proofMethodEtcDesc");
		kutil.updateCodeValue(education, approvalStatusInfos, "approvalStatus", "approvalStatusDesc");

		$("#educationLayer").html("");
		$("#educationTmpl").tmpl(education).appendTo("#educationLayer");
		$("#checkAll4education").attr("checked", false);
	}

	function cbPrize(data) {
		prize = kutil.deepCopy(data);

		showPrize();
	}

	function showPrize() {
		kutil.calcIndex(prize, "DESC");

		kutil.updateCodeValue(prize, proofMethodEtcInfos, "proofMethodEtc", "proofMethodEtcDesc");
		kutil.updateCodeValue(prize, approvalStatusInfos, "approvalStatus", "approvalStatusDesc");

		$("#prizeLayer").html("");
		$("#prizeTmpl").tmpl(prize).appendTo("#prizeLayer");
		$("#checkAll4prize").attr("checked", false);
	}

	function onCheckAll4workCareer() {
		$("#writeForm input[name=workCareerNo]:enabled").attr("checked", !!$("#writeForm input[name=checkAll4workCareer]").attr("checked"));
	}

	function onCheckAll4skillCareer() {
		$("#writeForm input[name=skillCareerNo]:enabled").attr("checked", !!$("#writeForm input[name=checkAll4skillCareer]").attr("checked"));
	}

	function onCheckAll4scholar() {
		$("#writeForm input[name=scholarNo]:enabled").attr("checked", !!$("#writeForm input[name=checkAll4scholar]").attr("checked"));
	}

	function onCheckAll4skillCert() {
		$("#writeForm input[name=skillCertNo]:enabled").attr("checked", !!$("#writeForm input[name=checkAll4skillCert]").attr("checked"));
	}

	function onCheckAll4education() {
		$("#writeForm input[name=educationNo]:enabled").attr("checked", !!$("#writeForm input[name=checkAll4education]").attr("checked"));
	}

	function onCheckAll4prize() {
		$("#writeForm input[name=prizeNo]:enabled").attr("checked", !!$("#writeForm input[name=checkAll4prize]").attr("checked"));
	}

	var checkAllFlag = false;
	function onCheckAll() {
		if (checkAllFlag == false) {
			$("#writeForm input[name=checkAll4workCareer]").attr("checked", true);
			$("#writeForm input[name=checkAll4skillCareer]").attr("checked", true);
			$("#writeForm input[name=checkAll4scholar]").attr("checked", true);
			$("#writeForm input[name=checkAll4skillCert]").attr("checked", true);
			$("#writeForm input[name=checkAll4education]").attr("checked", true);
			$("#writeForm input[name=checkAll4prize]").attr("checked", true);
			checkAllFlag = true;
		} else {
			$("#writeForm input[name=checkAll4workCareer]").attr("checked", false);
			$("#writeForm input[name=checkAll4skillCareer]").attr("checked", false);
			$("#writeForm input[name=checkAll4scholar]").attr("checked", false);
			$("#writeForm input[name=checkAll4skillCert]").attr("checked", false);
			$("#writeForm input[name=checkAll4education]").attr("checked", false);
			$("#writeForm input[name=checkAll4prize]").attr("checked", false);
			checkAllFlag = false;
		}
		onCheckAll4workCareer();
		onCheckAll4skillCareer();
		onCheckAll4scholar();
		onCheckAll4skillCert();
		onCheckAll4education();
		onCheckAll4prize();
	}

	function calcCheckbox4workCareer() {
		if ($("#workCareerLayer input[name=workCareerNo]:enabled").length == $("#workCareerLayer input[name=workCareerNo]:checked").length) {
			$("#checkAll4workCareer").attr("checked", true);
		} else {
			$("#checkAll4workCareer").attr("checked", false);
		}
	}

	function calcCheckbox4skillCareer() {
		if ($("#skillCareerLayer input[name=skillCareerNo]:enabled").length == $("#skillCareerLayer input[name=skillCareerNo]:checked").length) {
			$("#checkAll4skillCareer").attr("checked", true);
		} else {
			$("#checkAll4skillCareer").attr("checked", false);
		}
	}

	function calcCheckbox4scholar() {
		if ($("#scholarLayer input[name=scholarNo]:enabled").length == $("#scholarLayer input[name=scholarNo]:checked").length) {
			$("#checkAll4scholar").attr("checked", true);
		} else {
			$("#checkAll4scholar").attr("checked", false);
		}
	}

	function calcCheckbox4skillCert() {
		if ($("#skillCertLayer input[name=skillCertNo]:enabled").length == $("#skillCertLayer input[name=skillCertNo]:checked").length) {
			$("#checkAll4skillCert").attr("checked", true);
		} else {
			$("#checkAll4skillCert").attr("checked", false);
		}
	}

	function calcCheckbox4education() {
		if ($("#educationLayer input[name=educationNo]:enabled").length == $("#educationLayer input[name=educationNo]:checked").length) {
			$("#checkAll4education").attr("checked", true);
		} else {
			$("#checkAll4education").attr("checked", false);
		}
	}

	function calcCheckbox4prize() {
		if ($("#prizeLayer input[name=prizeNo]:enabled").length == $("#prizeLayer input[name=prizeNo]:checked").length) {
			$("#checkAll4prize").attr("checked", true);
		} else {
			$("#checkAll4prize").attr("checked", false);
		}
	}

	function showCompanyApprovalDemand(companyApprovalDemandNo) {
		showPopup("cofPop", "pop_cof.jsp?companyApprovalDemandNo=" + companyApprovalDemandNo);
	}

	function closeCofPop() {
		closePopup("cofPop");
	}

	function showNcsPop(careerDiv, careerNo) {
		showPopup("ncsPop", "pop_ncs.jsp?careerDiv=" + careerDiv + "&careerNo=" + careerNo);
	}

	function closeNcsPop() {
		closePopup("ncsPop");
	}

	function showDocPop() {
		showPopup("docPop", "pop_pif.jsp");
	}

	function closeDocPop() {
		closePopup("docPop");
	}

	function showJob() {
		showPopup("jobPop", "/pop_job.jsp");
	}

	function closeJobPop() {
		closePopup("jobPop");
	}

	function print() {
		showPopup("printPop", "pop_swc.jsp");
	}

	function closePrintPop() {
		closePopup("printPop");
	}
	
	function showNcs() {
		alert("NCS 안내문구");
	}

	function excel() {
		$("#excelForm").submit();
	}

	function next() {
		if($("#writeForm input[name=workCareerNo]:checked").length < 1 && $("#writeForm input[name=skillCareerNo]:checked").length < 1 && $("#writeForm input[name=scholarNo]:checked").length < 1
		 && $("#writeForm input[name=skillCertNo]:checked").length < 1 && $("#writeForm input[name=educationNo]:checked").length < 1 && $("#writeForm input[name=prizeNo]:checked").length < 1) {
			alert("신고할 경력을 체크해주세요.");
			return;
		}

		$("#writeForm").attr("action", "swc_write01_proc.jsp?mode=addTmp");

		$("#writeForm input[name=callback]").val("cbNext");

		kutil.submitPost("writeForm");
	}

	function cbNext() {
		location.href = "swc_write02.jsp?key=142995715";
	}
-->
</script>

		<div class="content" id="content">
		
			<!-- 타이틀 영역 -->
			<div class="title_area">
				<h3>기술자신고</h3>
				<p>기술자 경력을 입력하고, 증빙방법을 선택해 주세요.</p>
			</div>
			<p class="reg_step_01"><img src="/images/individual/register_step_01.gif" alt="Step 01 경력 입력" /></p>
			<!-- 기본정보 -->
			<div class="base_info">
				<img src="/images/common/pic_sample.gif" alt="증명사진" />
				<div class="info_area">
					<p>&#51204;&#51008;&#44221;<span>1983.08.28</span><a href="/personal/mem/per_modify.jsp" class="btn_type01">프로필수정</a></p>
					<span><strong>전화번호</strong> : 010-2684-6719</span>
					<span><strong>핸드폰번호</strong> : 010-2684-6719</span>
					<span><strong>이메일</strong> : jullu07@naver.com</span>
					<span class="address"><strong>주소</strong> : (54898) &#51204;&#46972;&#48513;&#46020; &#51204;&#51452;&#49884; &#45909;&#51652;&#44396; &#44592;&#47536;&#45824;&#47196; 442 &#44032;&#46041; 502&#54840; (&#44552;&#50516;&#46041;, &#44552;&#50516;&#49464;&#50896;&#50500;&#54028;&#53944;)</span>
					<span class="office">
						<strong>현근무처</strong> :
						
						<a href="javascript:updateCurrWorkStatus()" class="btn_type01 w90 ml10">재직여부변경</a>
					</span>
				</div>
			</div>
			<!--// 기본정보 -->
			<!-- NCS안내문구 -->

<form id="excelForm" name="excelForm" method="post" action="swc_write01_excel.jsp" target="iframe4dummy">
	<input type="hidden" name="memberNo" value="">
</form>
<form id="writeForm" name="writeForm" method="post" action="">
	<input type="hidden" name="callback" value=""/>
	<input type="hidden" name="key" value="142995715"/>
			<!-- 최종학력 등록 -->
			<div class="section_top_area">
				<h4>최종학력 등록</h4>
				<!-- <a href="javascript:printCareer('workCareer')" class="btn_type02">근무경력확인서출력</a>  -->
				<!-- 우측버튼 -->
				<div class="sec_top_btn">
					<a href="#" class="btn_add">추가</a>
					<a href="#" class="btn_del">삭제</a>
				</div>
			</div>
			<table class="list_tbl_01 mb70" summary="학력 추가">
				<caption>최종학력</caption>
				<colgroup>
					<col style="width:10%" />
					<col style="width:65%" />
					<col style="width:15%" />
					<col style="width:10%" />
				</colgroup>
				<thead>
					<tr class="first">
						<th scope="col"><input type="checkbox" name="checkAll4workCareer" id="checkAll4workCareer" onclick="onCheckAll4workCareer()" /></th>
						<th scope="col">학교명/학과(전공)/학위</th>
						<th scope="col">증빙방법</th>
						<th scope="col">진행상태</th>
					</tr>
				</thead>
				<tbody id="workCareerLayer">
				</tbody>
			</table>
			<!--// 근무경력 -->
			<!-- 경력등록 -->
			<div class="section_top_area">
				<h4>경력 등록</h4>
				<a href="javascript:printCareer('workCareer')" class="btn_type02">근무경력확인서출력</a>
				<!-- 우측버튼 -->
				<div class="sec_top_btn">
					<a href="javascript:addCareer('#')" class="btn_add">추가</a>
					<a href="javascript:removeCareer('#')" class="btn_del">삭제</a>
				</div>
			</div>
			<table class="list_tbl_01 mb70" summary="경력 추가">
				<caption>경력 등록</caption>
				<colgroup>
					<col style="width:10%" />
					<col style="width:65%" />
					<col style="width:15%" />
					<col style="width:10%" />
				</colgroup>
				<thead>
					<tr class="first">
						<th scope="col"><input type="checkbox" name="checkAll4skillCareer" id="checkAll4skillCareer" onclick="onCheckAll4skillCareer()" /></th>
						<th scope="col">회사명/근무기간/담당업무</th>
						<th scope="col">증빙방법</th>
						<th scope="col">진행상태</th>
					</tr>
				</thead>
				<tbody id="skillCareerLayer">
				</tbody>
			</table>
			<!--// 경력 등록 -->
			<!-- 자격증 등록 -->
			<div class="section_top_area">
				<h4>자격증 등록</h4>
				<!-- 우측버튼 -->
				<div class="sec_top_btn">
					<a href="javascript:addCareer('#')" class="btn_add">추가</a>
					<a href="javascript:removeCareer('#')" class="btn_del">삭제</a>
				</div>
			</div>
			<table class="list_tbl_01 mb70" summary="자격증 추가">
				<caption>자격증 등록</caption>
				<colgroup>
					<col style="width:10%" />
					<col style="width:65%" />
					<col style="width:15%" />
					<col style="width:10%" />
				</colgroup>
				<thead>
					<tr class="first">
						<th scope="col"><input type="checkbox" name="checkAll4scholar" id="checkAll4scholar" onclick="onCheckAll4scholar()" /></th>
						<th scope="col">자격명/합격일자/발급기관</th>
						<th scope="col">증빙방법</th>
						<th scope="col">진행상태</th>
					</tr>
				</thead>
				<tbody id="scholarLayer">
				</tbody>
			</table>
			<!--// 자격증 등록 -->
			<!-- 어학 등록 -->
			<div class="section_top_area">
				<h4>어학 등록</h4>
				<!-- 우측버튼 -->
				<div class="sec_top_btn">
					<a href="javascript:addCareer('#')" class="btn_add">추가</a>
					<a href="javascript:removeCareer('#')" class="btn_del">삭제</a>
				</div>
			</div>
			<table class="list_tbl_01 mb70" summary="어학 추가">
				<caption>어학 등록</caption>
				<colgroup>
					<col style="width:10%" />
					<col style="width:65%" />
					<col style="width:15%" />
					<col style="width:10%" />
				</colgroup>
				<thead>
					<tr class="first">
						<th scope="col"><input type="checkbox" name="checkAll4skillCert" id="checkAll4skillCert" onclick="onCheckAll4skillCert()" /></th>
						<th scope="col">어학명/발급기관/점수</th>
						<th scope="col">증빙방법</th>
						<th scope="col">진행상태</th>
					</tr>
				</thead>
				<tbody id="skillCertLayer">
				</tbody>
			</table>
			<!--// 어학 자격증 -->
			<!-- 수료교육 -->
			<div class="section_top_area">
				<h4>수료교육 등록</h4>
				<!-- 우측버튼 -->
				<div class="sec_top_btn">
					<a href="javascript:addCareer('#')" class="btn_add">추가</a>
					<a href="javascript:removeCareer('#')" class="btn_del">삭제</a>
				</div>
			</div>
			<table class="list_tbl_01 mb70" summary="수료교육 추가">
				<caption>수료교육 등록</caption>
				<colgroup>
					<col style="width:10%" />
					<col style="width:65%" />
					<col style="width:15%" />
					<col style="width:10%" />
				</colgroup>
				<thead>
					<tr class="first">
						<th scope="col"><input type="checkbox" name="checkAll4education" id="checkAll4education" onclick="onCheckAll4education()" /></th>
						<th scope="col">교육과정명/교육기간/교육기관명</th>
						<th scope="col">증빙방법</th>
						<th scope="col">진행상태</th>
					</tr>
				</thead>
				<tbody id="educationLayer">
				</tbody>
			</table>
			<!--// 수료교육 등록 -->
			<!-- 연수/봉사 -->
			<div class="section_top_area">
				<h4>연수/봉사 등록</h4>
				<!-- 우측버튼 -->
				<div class="sec_top_btn">
					<a href="javascript:addCareer('#')" class="btn_add">추가</a>
					<a href="javascript:removeCareer('#')" class="btn_del">삭제</a>
				</div>
			</div>
			<table class="list_tbl_01" summary="연수봉사 추가">
				<caption>연수/봉사 등록</caption>
				<colgroup>
					<col style="width:10%" />
					<col style="width:65%" />
					<col style="width:15%" />
					<col style="width:10%" />
				</colgroup>
				<thead>
					<tr class="first">
						<th scope="col"><input type="checkbox" name="checkAll4prize" id="checkAll4prize" onclick="onCheckAll4prize()" /></th>
						<th scope="col">국가명/기간명/상세활동</th>
						<th scope="col">증빙방법</th>
						<th scope="col">진행상태</th>
					</tr>
				</thead>
				<tbody id="prizeLayer">
				</tbody>
			</table>
			<!--// 연수/봉사 -->
			</form>
<br><br><br><br><br><br>
		</div>
		<!--// content -->
	</div>
	<!--// container -->
	<hr />
	<!-- 다음/이전버튼 -->
	
<script id="workCareerTmpl" type="text/x-jquery-tmpl">
					<tr>
						<td>
{{if approvalStatus == "1" || (approvalStatus == "4" && regStatus == "7")}}
							<input type="checkbox" name="workCareerNo" value="${workCareerNo}" {{if checkedYn == "Y"}} checked="checked" {{/if}} onclick="calcCheckbox4workCareer()" />
{{else}}
							-
{{/if}}
						</td>
						<td class="ta_left">
{{if approvalStatus == "1" || (approvalStatus == "4" && regStatus == "7")}}
							<a href="javascript:updateWorkCareer('${workCareerNo}')">
{{else}}
							<a href="javascript:approvalWorkCareer('${workCareerNo}')">
{{/if}}
{{if companyNm.length > 40}}
								${companyNm.substring(0, 40)}...<br />
{{else}}
								${companyNm}<br />
{{/if}}
								[${workStartDate.substring(0, 4)}.${workStartDate.substring(4, 6)}.${workStartDate.substring(6, 8)} ~ ${workEndDate.substring(0, 4)}.${workEndDate.substring(4, 6)}.${workEndDate.substring(6, 8)}]&nbsp;&nbsp;&nbsp;${ncsDutyDiv1Desc} > ${ncsDutyDiv2Desc}
							</a>
						</td>
						<td>
{{if proofMethod == "1"}}
							<a href="javascript:showCompanyApprovalDemand('${companyApprovalDemandNo}')">
	{{if companyApprovalStatus == "1"}}
								${proofMethodDesc}<br />
								요청전
	{{/if}}
	{{if companyApprovalStatus == "2"}}
								${proofMethodDesc}<br />
								요청 ${companyDemandDate.substring(0, 4)}.${companyDemandDate.substring(4, 6)}.${companyDemandDate.substring(6, 8)}
	{{/if}}
	{{if companyApprovalStatus == "3"}}
								${proofMethodDesc}<br />
								요청 ${companyDemandDate.substring(0, 4)}.${companyDemandDate.substring(4, 6)}.${companyDemandDate.substring(6, 8)}<br />
								확인 ${companyApprovalDate.substring(0, 4)}.${companyApprovalDate.substring(4, 6)}.${companyApprovalDate.substring(6, 8)}
	{{/if}}
	{{if companyApprovalStatus == "4"}}
								<span class="txt_point3">
									${proofMethodDesc}<br />
									요청 ${companyDemandDate.substring(0, 4)}.${companyDemandDate.substring(4, 6)}.${companyDemandDate.substring(6, 8)}<br />
									반려 ${companyReturnDate.substring(0, 4)}.${companyReturnDate.substring(4, 6)}.${companyReturnDate.substring(6, 8)}
    							</span>
	{{/if}}
	{{if companyApprovalStatus == "5"}}
								${proofMethodDesc}<br />
								취소 ${companyCancelDate.substring(0, 4)}.${companyCancelDate.substring(4, 6)}.${companyCancelDate.substring(6, 8)}
	{{/if}}
							</a>
{{else}}
							${proofMethodDesc}
{{/if}}
						</td>
						<td>
{{if approvalStatus == "1"}}
							-
{{/if}}
{{if approvalStatus == "2"}}
	{{if regStatus == "1" || regStatus == "2"}}
							접수중
	{{else}}
							확인중
	{{/if}}
{{/if}}
{{if approvalStatus == "3"}}
	{{if regStatus == "7"}}
							확인<br />
							${approvalDate.substring(0, 4)}.${approvalDate.substring(4, 6)}.${approvalDate.substring(6, 8)}
	{{else}}
							확인중
	{{/if}}
{{/if}}
{{if approvalStatus == "4"}}
	{{if regStatus == "7"}}
							미확인<br />
							${approvalDate.substring(0, 4)}.${approvalDate.substring(4, 6)}.${approvalDate.substring(6, 8)}
	{{else}}
							확인중
	{{/if}}
{{/if}}
						</td>
					</tr>
</script>
<script id="skillCareerTmpl" type="text/x-jquery-tmpl">
					<tr>
						<td>
{{if approvalStatus == "1" || (approvalStatus == "4" && regStatus == "7")}}
							<input type="checkbox" name="skillCareerNo" value="${skillCareerNo}" {{if checkedYn == "Y"}} checked="checked"{{/if}} onclick="calcCheckbox4skillCareer()" />
{{else}}
							-
{{/if}}
						</td>
						<td class="ta_left">
{{if approvalStatus == "1" || (approvalStatus == "4" && regStatus == "7")}}
							<a href="javascript:updateSkillCareer('${skillCareerNo}')">
{{else}}
							<a href="javascript:approvalSkillCareer('${skillCareerNo}')">
{{/if}}
{{if participateProjectName.length > 40}}
								${participateProjectName.substring(0, 40)}...<br />
{{else}}
								${participateProjectName}<br />
{{/if}}
								[${participateStartDate.substring(0, 4)}.${participateStartDate.substring(4, 6)}.${participateStartDate.substring(6, 8)} ~ ${participateEndDate.substring(0, 4)}.${participateEndDate.substring(4, 6)}.${participateEndDate.substring(6, 8)}]&nbsp;&nbsp;&nbsp;${ncsDutyDiv1Desc} > ${ncsDutyDiv2Desc}
							</a>
						</td>
						<td>
{{if proofMethod == "1"}}
							<a href="javascript:showCompanyApprovalDemand('${companyApprovalDemandNo}')">
	{{if companyApprovalStatus == "1"}}
								${proofMethodDesc}<br />
								요청전
	{{/if}}
	{{if companyApprovalStatus == "2"}}
								${proofMethodDesc}<br />
								요청 ${companyDemandDate.substring(0, 4)}.${companyDemandDate.substring(4, 6)}.${companyDemandDate.substring(6, 8)}
	{{/if}}
	{{if companyApprovalStatus == "3"}}
								${proofMethodDesc}<br />
								요청 ${companyDemandDate.substring(0, 4)}.${companyDemandDate.substring(4, 6)}.${companyDemandDate.substring(6, 8)}<br />
								확인 ${companyApprovalDate.substring(0, 4)}.${companyApprovalDate.substring(4, 6)}.${companyApprovalDate.substring(6, 8)}
	{{/if}}
	{{if companyApprovalStatus == "4"}}
								<span class="txt_point3">
									${proofMethodDesc}<br />
									요청 ${companyDemandDate.substring(0, 4)}.${companyDemandDate.substring(4, 6)}.${companyDemandDate.substring(6, 8)}<br />
									반려 ${companyReturnDate.substring(0, 4)}.${companyReturnDate.substring(4, 6)}.${companyReturnDate.substring(6, 8)}
								</span>
	{{/if}}
	{{if companyApprovalStatus == "5"}}
								${proofMethodDesc}<br />
								취소 ${companyCancelDate.substring(0, 4)}.${companyCancelDate.substring(4, 6)}.${companyCancelDate.substring(6, 8)}
	{{/if}}
							</a>
{{else}}
							${proofMethodDesc}
{{/if}}
						</td>
						<td>
{{if approvalStatus == "1"}}
							-
{{/if}}
{{if approvalStatus == "2"}}
	{{if regStatus == "1" || regStatus == "2"}}
							접수중
	{{else}}
							확인중
	{{/if}}
{{/if}}
{{if approvalStatus == "3"}}
	{{if regStatus == "7"}}
							확인<br />
							${approvalDate.substring(0, 4)}.${approvalDate.substring(4, 6)}.${approvalDate.substring(6, 8)}
	{{else}}
							확인중
	{{/if}}
{{/if}}
{{if approvalStatus == "4"}}
	{{if regStatus == "7"}}
							미확인<br />
							${approvalDate.substring(0, 4)}.${approvalDate.substring(4, 6)}.${approvalDate.substring(6, 8)}
	{{else}}
							확인중
	{{/if}}
{{/if}}
						</td>
					</tr>
</script>
<script id="scholarTmpl" type="text/x-jquery-tmpl">
					<tr>
						<td>
{{if approvalStatus == "1" || (approvalStatus == "4" && regStatus == "7")}}
							<input type="checkbox" name="scholarNo" value="${scholarNo}" {{if checkedYn == "Y"}} checked="checked"{{/if}} onclick="calcCheckbox4scholar()" />
{{else}}
							-
{{/if}}
						</td>
						<td class="ta_left">
{{if approvalStatus == "1" || (approvalStatus == "4" && regStatus == "7")}}
							<a href="javascript:updateScholar('${scholarNo}')">
{{else}}
							<a href="javascript:approvalScholar('${scholarNo}')">
{{/if}}
{{if schoolNm.length > 40}}
								${schoolNm.substring(0, 40)}...<br />
{{else}}
								${schoolNm}<br />
{{/if}}
								${schoolDeptName}{{if schoolDeptName != ""}}&nbsp;&nbsp;&nbsp;{{/if}}${degreeDesc}
							</a>
						</td>
						<td>${proofMethodEtcDesc}</td>
						<td>
{{if approvalStatus == "1"}}
							-
{{/if}}
{{if approvalStatus == "2"}}
	{{if regStatus == "1" || regStatus == "2"}}
							접수중
	{{else}}
							확인중
	{{/if}}
{{/if}}
{{if approvalStatus == "3"}}
	{{if regStatus == "7"}}
							확인<br />
							${approvalDate.substring(0, 4)}.${approvalDate.substring(4, 6)}.${approvalDate.substring(6, 8)}
	{{else}}
							확인중
	{{/if}}
{{/if}}
{{if approvalStatus == "4"}}
	{{if regStatus == "7"}}
							미확인<br />
							${approvalDate.substring(0, 4)}.${approvalDate.substring(4, 6)}.${approvalDate.substring(6, 8)}
	{{else}}
							확인중
	{{/if}}
{{/if}}
						</td>
					</tr>
</script>
<script id="skillCertTmpl" type="text/x-jquery-tmpl">
					<tr>
						<td>
{{if approvalStatus == "1" || (approvalStatus == "4" && regStatus == "7")}}
							<input type="checkbox" name="skillCertNo" value="${skillCertNo}" {{if checkedYn == "Y"}} checked="checked"{{/if}} onclick="calcCheckbox4skillCert()" />
{{else}}
							-
{{/if}}
						</td>
						<td class="ta_left">
{{if approvalStatus == "1" || (approvalStatus == "4" && regStatus == "7")}}
							<a href="javascript:updateSkillCert('${skillCertNo}')">
{{else}}
							<a href="javascript:approvalSkillCert('${skillCertNo}')">
{{/if}}
{{if certItem.length > 40}}
								${certItem.substring(0, 40)}...<br />
{{else}}
								${certItem}<br />
{{/if}}
								[${passDate.substring(0, 4)}.${passDate.substring(4, 6)}.${passDate.substring(6, 8)}]&nbsp;&nbsp;&nbsp;${certPubNm}
							</a>
						</td>
						<td>${proofMethodAgreeDesc}</td>
						<td>
{{if approvalStatus == "1"}}
							-
{{/if}}
{{if approvalStatus == "2"}}
	{{if regStatus == "1" || regStatus == "2"}}
							접수중
	{{else}}
							확인중
	{{/if}}
{{/if}}
{{if approvalStatus == "3"}}
{{if regStatus == "7"}}
							확인<br />
							${approvalDate.substring(0, 4)}.${approvalDate.substring(4, 6)}.${approvalDate.substring(6, 8)}
	{{else}}
							확인중
	{{/if}}
{{/if}}
{{if approvalStatus == "4"}}
	{{if regStatus == "7"}}
							미확인<br />
							${approvalDate.substring(0, 4)}.${approvalDate.substring(4, 6)}.${approvalDate.substring(6, 8)}
	{{else}}
							확인중
	{{/if}}
{{/if}}
						</td>
					</tr>
</script>
<script id="educationTmpl" type="text/x-jquery-tmpl">
					<tr>
						<td>
{{if approvalStatus == "1" || (approvalStatus == "4" && regStatus == "7")}}
							<input type="checkbox" name="educationNo" value="${educationNo}" {{if checkedYn == "Y"}} checked="checked"{{/if}} onclick="calcCheckbox4education()" />
{{else}}
							-
{{/if}}
						</td>
						<td class="ta_left">
{{if approvalStatus == "1" || (approvalStatus == "4" && regStatus == "7")}}
							<a href="javascript:updateEducation('${educationNo}')">
{{else}}
							<a href="javascript:approvalEducation('${educationNo}')">
{{/if}}
{{if educationName.length > 40}}
								${educationName.substring(0, 40)}...<br />
{{else}}
								${educationName}<br />
{{/if}}
								[${educationStartDate.substring(0, 4)}.${educationStartDate.substring(4, 6)}.${educationStartDate.substring(6, 8)} ~	${educationEndDate.substring(0, 4)}.${educationEndDate.substring(4, 6)}.${educationEndDate.substring(6, 8)}]&nbsp;&nbsp;&nbsp;${educationOrg}
							</a>
						</td>
						<td>${proofMethodEtcDesc}</td>
						<td>
{{if approvalStatus == "1"}}
							-
{{/if}}
{{if approvalStatus == "2"}}
	{{if regStatus == "1" || regStatus == "2"}}
							접수중
	{{else}}
							확인중
	{{/if}}
{{/if}}
{{if approvalStatus == "3"}}
	{{if regStatus == "7"}}
							확인<br />
							${approvalDate.substring(0, 4)}.${approvalDate.substring(4, 6)}.${approvalDate.substring(6, 8)}
	{{else}}
							확인중
	{{/if}}
{{/if}}
{{if approvalStatus == "4"}}
	{{if regStatus == "7"}}
							미확인<br />
							${approvalDate.substring(0, 4)}.${approvalDate.substring(4, 6)}.${approvalDate.substring(6, 8)}
	{{else}}
							확인중
	{{/if}}
{{/if}}
						</td>
					</tr>
</script>
<script id="prizeTmpl" type="text/x-jquery-tmpl">
					<tr>
						<td>
{{if approvalStatus == "1" || (approvalStatus == "4" && regStatus == "7")}}
							<input type="checkbox" name="prizeNo" value="${prizeNo}" {{if checkedYn == "Y"}} checked="checked"{{/if}} onclick="calcCheckbox4prize()" />
{{else}}
							-
{{/if}}
						</td>
						<td class="ta_left">
{{if approvalStatus == "1" || (approvalStatus == "4" && regStatus == "7")}}
							<a href="javascript:updatePrize('${prizeNo}')">
{{else}}
							<a href="javascript:approvalPrize('${prizeNo}')">
{{/if}}
{{if prizeName.length > 40}}
								${prizeName.substring(0, 40)}...<br />
{{else}}
								${prizeName}<br />
{{/if}}
								[${awardDate.substring(0, 4)}.${awardDate.substring(4, 6)}.${awardDate.substring(6, 8)}]&nbsp;&nbsp;&nbsp;${prizeOrg}
							</a>
						</td>
						<td>${proofMethodEtcDesc}</td>
						<td>
{{if approvalStatus == "1"}}
							-
{{/if}}
{{if approvalStatus == "2"}}
	{{if regStatus == "1" || regStatus == "2"}}
							접수중
	{{else}}
							확인중
	{{/if}}
{{/if}}
{{if approvalStatus == "3"}}
	{{if regStatus == "7"}}
							확인<br />
							${approvalDate.substring(0, 4)}.${approvalDate.substring(4, 6)}.${approvalDate.substring(6, 8)}
	{{else}}
							확인중
	{{/if}}
{{/if}}
{{if approvalStatus == "4"}}
	{{if regStatus == "7"}}
							미확인<br />
							${approvalDate.substring(0, 4)}.${approvalDate.substring(4, 6)}.${approvalDate.substring(6, 8)}
	{{else}}
							확인중
	{{/if}}
{{/if}}
						</td>
					</tr>
</script>
<div id="empPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="empPop" src="about:blank" width="500" height="350" frameborder="0" title="근무여부변경"></iframe>
	</iframe>
</div>
<div id="cofPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="cofPop" src="about:blank" width="700" height="350" frameborder="0" title="기업확인요청"></iframe>
	</iframe>
</div>
<div id="ncsPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="ncsPop" src="about:blank" width="750" height="600" frameborder="0" title="NCS정정"></iframe>
	</iframe>
</div>
<div id="workCareerPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="workCareerPop" src="about:blank" width="730" height="980" frameborder="0" title="근무경력"></iframe>
	</iframe>
</div>
<div id="searchComPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="searchComPop" src="about:blank" width="900" height="560" frameborder="0" title="회사검색"></iframe>
	</iframe>
</div>
<div id="regComPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="regComPop" src="about:blank" width="850" height="560" frameborder="0" title="회사 신규등록"></iframe>
	</iframe>
</div>
<div id="bizPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="bizPop" src="about:blank" width="850" height="560" frameborder="0" title="회사코드"></iframe>
	</iframe>
</div>
<div id="skillCareerPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="skillCareerPop" src="about:blank" width="755" height="880" frameborder="0" title="기술경력"></iframe>
	</iframe>
</div>
<div id="scholarPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="scholarPop" src="about:blank" width="800" height="760" frameborder="0" title="학력"></iframe>
	</iframe>
</div>
<div id="searchSchPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="searchSchPop" src="about:blank" width="650" height="423" frameborder="0" title="학교검색"></iframe>
	</iframe>
</div>
<div id="regSchPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="regSchPop" src="about:blank" width="550" height="320" frameborder="0" title="학교 신규등록"></iframe>
	</iframe>
</div>
<div id="searchSchDeptPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="searchSchDeptPop" src="about:blank" width="600" height="423" frameborder="0" title="학과검색"></iframe>
	</iframe>
</div>
<div id="regSchDeptPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="regSchDeptPop" src="about:blank" width="550" height="270" frameborder="0" title="학과 신규등록"></iframe>
	</iframe>
</div>
<div id="skillCertPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="skillCertPop" src="about:blank" width="800" height="710" frameborder="0" title="기술자격"></iframe>
	</iframe>
</div>
<div id="searchCerPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="searchCerPop" src="about:blank" width="650" height="423" frameborder="0" title="기술자격검색"></iframe>
	</iframe>
</div>
<div id="regCerPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="regCerPop" src="about:blank" width="550" height="380" frameborder="0" title="기술자격 신규등록"></iframe>
	</iframe>
</div>
<div id="educationPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="educationPop" src="about:blank" width="800" height="660" frameborder="0" title="교육"></iframe>
	</iframe>
</div>
<div id="searchEduPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="searchEduPop" src="about:blank" width="650" height="423" frameborder="0" title="교육검색"></iframe>
	</iframe>
</div>
<div id="regEduPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="regEduPop" src="about:blank" width="550" height="320" frameborder="0" title="교육 신규등록"></iframe>
	</iframe>
</div>
<div id="prizePopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="prizePop" src="about:blank" width="800" height="660" frameborder="0" title="상훈"></iframe>
	</iframe>
</div>
<div id="docPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="docPop" src="about:blank" width="880" height="880" frameborder="0" title="제출서류안내"></iframe>
	</iframe>
</div>
<div id="jobPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="jobPop" src="about:blank" width="800" height="880" frameborder="0" title="직종/직무 안내"></iframe>
	</iframe>
</div>
<div id="printPopLayer" style="display:none; position:absolute; z-index:99999; background-color:#ffffff; ">
	<iframe name="printPop" src="about:blank" width="900" height="900" frameborder="0" title="경력인쇄"></iframe>
	</iframe>
</div>
					<!-- 다음/이전버튼 -->
	<hr />
<iframe name="iframe4dummy" src="about:blank" width="0" height="0" frameborder="0" style="display:none;" title="빈 프레임"></iframe>
		<script type="text/javascript">
<!--
/*
	$(document).ajaxStart(function() {
		jQuery.blockUI({ message: null });
	});

	$(document).ajaxComplete(function(event,request, settings) {
		jQuery.unblockUI();
	});
*/

  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-76306566-1', 'auto');
  ga('send', 'pageview');
-->

</script>
</div>

</body>


</html>
