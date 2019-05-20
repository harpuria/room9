<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<link href="<c:url value='/css/formcommon.css'/>" rel="stylesheet" />
<link href="<c:url value='/css/host.css'/>" rel="stylesheet" />
<link href="<c:url value='/css/common.css'/>" rel="stylesheet" />
<link href="<c:url value='/css/styles.css'/>" rel="stylesheet" />
<link href="<c:url value='/css/jquery.ui.selectmenu.css'/>" rel="stylesheet" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">

   <div id="app">
        <div class="topSkin web">
            <div class="skin" style="background-image: url('resources/img/bg_intro.jpg')"></div>
            <h2 class="skinTitle">호스트 등록</h2>
        </div>
        <section class="content">
            <h3 class="mainTitle">호스트 정보 입력</h3>
    
            <form action="" method="POST" class="hostForm" enctype="multipart/form-data"
                data-parsley-validate="true" data-parsley-excluded="[type=submit], [type=button], [type=reset]"
                novalidate="">
                <input type="hidden" name="_token" value="">
                <div class="formBox">
                    <article class="placeHostName">
                        <div class="titleArea">
                            <h4>호스트 명 <span class="requiredIcon">*</span></h4>
                        </div>
                        <div class="editArea">
                            <input type="text" name="name" placeholder="이름을 정확히 입력해 주세요" data-parsley-required="true"
                                data-parsley-maxlength="50" data-parsley-required-message="이름을 입력해 주세요"
                                data-parsley-maxlength-message="최대 50자 이내로 문구를 입력해 주세요">
                        </div>
                    </article>
                    <article class="placePhoneNumber phoneCheckArea">
                        <div class="titleArea">
                            <h4>휴대전화 <span class="requiredIcon">*</span></h4>
                        </div>
                        <div class="editArea">
                            <div class="modifyArea">
                                <span class="checkBtn">인증</span>
                                <span class="equaltoCheck"></span>
                                <a href="#" class="hostBtn modifyBtn">수정하기</a>
                            </div>
    
                            <div class="checkArea">
                                <input type="text" name="mobile" class="submitInput phoneCheck"
                                    placeholder="호스트 연락처 (- 없이 입력)" data-parsley-required="true" data-parsley-type="number"
                                    data-parsley-errors-container=".phoneErrorWrap"
                                    data-parsley-error-message="휴대전화 번호를 입력해 주세요 (- 없이 입력)">
                                <a href="#" class="hostBtn placeBtn phoneAuth">인증번호 발송</a>
    
                                <input type="text" name="certPhone" class="checkInput certPhone"
                                    placeholder="발송된 번호를 입력해 주세요">
                                <a href="#" class="hostBtn authCertBtn phoneCheckBtn phone">인증하기</a>
    
                                <div class="phoneErrorWrap"></div>
                                <div class="phoneCheckErrorWrap"></div>
                            </div>
                        </div>
                    </article>
    
                    <article class="companyName">
                        <div class="titleArea">
                            <h4>회사 명 <span class="requiredIcon">*</span></h4>
                        </div>
                        <div class="editArea">
                            <input type="text" name="company_name" placeholder="사업자등록증에 기재된 회사명"
                                data-parsley-required="true" data-parsley-maxlength="100"
                                data-parsley-required-message="회사명을 입력해 주세요"
                                data-parsley-maxlength-message="최대 100자 이내로 문구를 입력해 주세요">
                        </div>
                    </article>
                    <article class="companyInfo">
                        <div class="titleArea">
                            <h4>본사주소 <span class="requiredIcon">*</span></h4>
                        </div>
                        <div class="editArea">
                            <input type="text" name="company_addr" placeholder="사업자등록증에 기재된 본사주소"
                                data-parsley-required="true" data-parsley-error-message="본사주소를 입력해 주세요">
                        </div>
                    </article>
                    <article class="companyInfo">
                        <div class="titleArea">
                            <h4>회사 전화번호 <span class="requiredIcon">*</span></h4>
                        </div>
                        <div class="editArea">
                            <input type="text" name="company_tel" placeholder="회사 대표번호 (- 없이 입력)"
                                data-parsley-required="true" data-parsley-type="number"
                                data-parsley-error-message="회사 대표번호를 입력해 주세요 (- 없이 입력)">
                        </div>
                    </article>
                    <article class="companyInfo">
                        <div class="titleArea">
                            <h4>FAX</h4>
                        </div>
                        <div class="editArea">
                            <input type="text" name="company_fax" placeholder="수신 가능한 FAX 번호 (- 없이 입력)"
                                data-parsley-required="false" data-parsley-error-message="FAX번호를 입력해 주세요 (- 없이 입력)">
                        </div>
                    </article>
                    <article class="companyInfo">
                        <div class="titleArea">
                            <h4>대표자 명 <span class="requiredIcon">*</span></h4>
                        </div>
                        <div class="editArea">
                            <input type="text" name="company_ceo" placeholder="사업자등록증에 기재된 대표자 명"
                                data-parsley-required="true" data-parsley-maxlength="30"
                                data-parsley-required-message="대표자 명을 입력해 주세요"
                                data-parsley-maxlength-message="최대 30자 이내로 문구를 입력해 주세요">
                        </div>
                    </article>
                    <article class="companyInfo">
                        <div class="titleArea">
                            <h4>사업자 등록번호 <span class="requiredIcon">*</span></h4>
                        </div>
                        <div class="editArea">
                            <input type="text" name="company_number" placeholder="사업자등록증에 기재된 등록번호"
                                data-parsley-required="true" data-parsley-error-message="사업자 등록번호를 입력해 주세요">
                        </div>
                    </article>
                    <article class="companyInfo">
                        <div class="titleArea">
                            <h4>업태</h4>
                        </div>
                        <div class="editArea">
                            <input type="text" name="company_type" placeholder="사업자등록증에 기재된 업태"
                                data-parsley-required="false" data-parsley-maxlength="50"
                                data-parsley-required-message="업태를 입력해 주세요"
                                data-parsley-maxlength-message="최대 50자 이내로 문구를 입력해 주세요">
                        </div>
                    </article>
                    <article class="companyInfo">
                        <div class="titleArea">
                            <h4>종목</h4>
                        </div>
                        <div class="editArea">
                            <input type="text" name="company_item" placeholder="사업자등록증에 기재된 종목"
                                data-parsley-required="false" data-parsley-maxlength="50"
                                data-parsley-required-message="종목을 입력해 주세요"
                                data-parsley-maxlength-message="최대 50자 이내로 문구를 입력해 주세요">
                        </div>
                    </article>
                    <article class="placePayInfo">
                        <div class="titleArea">
                            <h4>사업자등록증 첨부</h4>
                        </div>
                        <div class="editArea">
                            <input type="hidden" class="uploadInput" name="company_business">
                            <input type="text" class="fileName" placeholder="정산에 필요한 사업자등록증 스캔본 첨부 / jpg, gif 파일"
                                readonly="" data-parsley-required="false" data-parsley-errors-container=".payInfoErrorWrap"
                                data-parsley-error-message="사업자등록증을 첨부해 주세요">
                            <input type="file" id="companyUpload" class="fileUpload">
                            <label for="companyUpload" class="hostBtn">첨부하기</label>
                            <div class="payInfoErrorWrap"></div>
                        </div>
                    </article>
                    <article class="placeBankBookInfo">
                        <div class="titleArea">
                            <h4>통장사본 첨부</h4>
                        </div>
                        <div class="editArea">
                            <input type="hidden" class="uploadInput" name="company_bankbook">
                            <input type="text" class="fileName" placeholder="정산금액을 입금받을 통장사본 스캔본 첨부 / jpg, gif 파일"
                                readonly="" data-parsley-required="false" data-parsley-errors-container=".bankBookErrorWrp"
                                data-parsley-error-message="통장사본을 첨부해 주세요">
                            <input type="file" id="payInfoApply" class="fileUpload">
                            <label for="payInfoApply" class="hostBtn">첨부하기</label>
                            <div class="bankBookErrorWrp"></div>
                        </div>
                    </article>
                    <article class="placeAdminName companyInfo">
                        <div class="titleArea">
                            <h4>담당자 명 <span class="requiredIcon">*</span></h4>
                        </div>
                        <div class="editArea">
                            <input type="text" name="company_payment_name" placeholder="대관 담당자의 이름/직책을 입력해 주세요."
                                data-parsley-required="true" data-parsley-maxlength="50"
                                data-parsley-required-message="담당자 명을 입력해 주세요"
                                data-parsley-maxlength-message="최대 50자 이내로 문구를 입력해 주세요">
                        </div>
                    </article>
                    <article class="companyInfo">
                        <div class="titleArea">
                            <h4>담당자 e-mail <span class="requiredIcon">*</span></h4>
                        </div>
                        <div class="editArea">
                            <input type="email" name="company_payment_email" class="submitInput"
                                placeholder="대관문의 메일이 발송되오니 메일 주소를 정확하게 입력해 주세요." data-parsley-required="true"
                                data-parsley-type="email" data-parsley-errors-container=".companyEmailErrorWrap"
                                data-parsley-error-message="담당자 e-mail을 입력해 주세요">
                            <div class="companyEmailErrorWrap"></div>
                        </div>
                    </article>
                    <article class="companyInfo">
                        <div class="titleArea">
                            <h4>담당자 연락처 <span class="requiredIcon">*</span></h4>
                        </div>
                        <div class="editArea">
                            <input type="text" name="company_payment_mobile" class="submitInput"
                                placeholder="대관 담당자의 연락처를 정확하게 입력해 주세요." data-parsley-required="true"
                                data-parsley-type="number" data-parsley-errors-container=".companyPhoneErrorWrap"
                                data-parsley-error-message="담당자 휴대전화를 입력해 주세요 (- 없이 입력)">
                            <div class="companyPhoneErrorWrap"></div>
                        </div>
                    </article>
    
                    <article class="placeAgreement">
                        <div class="titleArea">
                            <h4>약관동의 <span class="requiredIcon">*</span></h4>
                        </div>
                        <div class="editArea">
                            <div class="agreementText">
                                <div class="chapter">
                                    <span class="chapterTitle">제 1 장 총칙</span>
    
                                    <div class="clause">
                                        <span class="chapterSubTitle">제1조 목적</span>
                                        <p class="wide">가. 이 약관(이하 "약관"이라고 합니다)은 ROOM9(이하 "회사"라고 합니다)가 제공하는 “플레이스(이하 “서비스”라고
                                            합니다)”의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.</p>
                                        <p class="wide">나. 본 약관에 별도로 규정하는 경우를 제외한 회사와 회원 간의 권리와 의무, 책임사항 및 서비스 이용절차에 관한 사항은
                                            ‘ROOM9 이용약관’의 규정을 따릅니다.</p>
                                    </div>
    
                                    <div class="clause">
                                        <span class="chapterSubTitle">제2조 정의</span>
                                        <p class="wide">가. “회원”이라함은 ROOM9 회원가입을 완료한 자로서, 계속적으로
                                            “회사”가 제공하는 “서비스”를 이용할 수 있는 자를 말하며, 호스트도 회원에 포함됩니다.</p>
                                        <p class="wide">나. “호스트”라 함은 “서비스”를 이용하기 위해 “회사”가 제공하는 “서비스”를 통해 “호스트등록” 및 “게시물”을
                                            등록하고 유료 결제서비스 이용을 완료한 회원을 말하며, “회원”이 “서비스”를 통해 “호스트”의 장소에 대관을 희망하는 경우 관련 안내, 결제,
                                            환불 및 기타 제반 책임의 당사자 입니다.</p>
                                        <p class="wide">다. “게시물”이라 함은 “회원”이 “서비스”를 이용함에 있어 “서비스상”에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의
                                            정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 말하며, “호스트”가 “플레이스 등록”을 통해 등록한 장소 정보와 회원이 이용한
                                            장소의 이용후기 등 댓글을 포함합니다.</p>
                                    </div>
    
                                    <div class="clause">
                                        <span class="chapterSubTitle">제3조 약관의 게시와 개정</span>
                                        <p class="wide">가. 회사는 이 약관을 이용자가 알 수 있도록 서비스가 제공되는 온라인 화면에 게시합니다.</p>
                                        <p class="wide">나. 회사는 본 약관을 관련법령을 위배하지 않는 범위에서 수시로 개정할 수 있습니다. 개정된 약관은 온라인에 명시됨으로써
                                            효력이 발생하며 ‘가’항과 같은 방식으로 공시합니다.</p>
                                        <p class="wide">다. 본 약관에 동의하는 것은 정기적으로 서비스를 방문하여 본 약관의 변경사항을 확인하는 것에 동의함을 의미합니다. 변경된
                                            약관에 대한 정보를 알지 못해 발생하는 이용자의 피해는 회사에서 책임지지 않습니다.</p>
                                        <p class="wide">라. 회사가 이 약관을 개정하는 경우 기존약관과 개정약관 및 개정약관의 적용일자와 개정사유를 명시하여 현행약관과 함께 그
                                            적용일자 7일 전부터 적용일 이후 상당한 기간 동안, 개정 내용이 이용자에게 중요한 사항일 경우에는 그 적용일자 30일 전부터 적용일 이후
                                            상당한 기간 동안 각각 ‘가’항의 방법으로 공지합니다.</p>
                                        <p class="wide">마. 회원이 개정된 약관에 동의하지 않는 경우 회원은 탈퇴(해지)를 할 수 있습니다. 회사가 ‘라’항에 따라 회원에게
                                            통지하면서 공지∙고지일로부터 개정약관 시행일 7일 후까지 거부의사를 표시하지 아니하면 승인한 것으로 본다는 뜻을 명확하게 고지하였음에도
                                            의사표시가 없는 경우에는 변경된 약관을 승인한 것으로 간주합니다.</p>
                                        <p class="wide">바. 이 약관은 회사와 이용자 간에 성립되는 서비스 이용계약의 기본약정입니다. 회사는 필요한 경우 특정 서비스에 관하여
                                            적용될 사항(이하 “개별약관”이라고 합니다)을 정하여 미리 공지할 수 있습니다. 이용자가 이러한 개별약관에 동의하고 특정 서비스를 이용하는
                                            경우에는 개별약관이 우선적으로 적용되고, 이 약관은 보충적인 효력을 갖습니다. 개별약관의 변경에 관해서는 위 ‘나’ 항을 준용합니다.</p>
                                    </div>
    
                                    <div class="clause">
                                        <span class="chapterSubTitle">제4조 약관 외 준칙</span>
                                        <p class="wide">가. 본 약관은 회사가 제공하는 서비스에 관한 별도의 이용안내와 함께 적용합니다.</p>
                                        <p class="wide">나. 이 약관에 명시되지 않은 사항에 대해서는 관계법령 및 회사가 정한 서비스의 세부이용지침 등의 규정에 의합니다.</p>
                                    </div>
    
                                    <div class="clause">
                                        <span class="chapterSubTitle">제5조 이용자에 대한 통지</span>
                                        <p class="wide">가. 회사 및 회사와 제휴한 업체가 회원에게 통지하는 경우, 전자우편 및 기타 방법을 통해 할 수 있습니다. 이 때 회원이
                                            회사에 알린 연락처 중 가장 최근의 정보를 활용하여 통지하며, 이로써 적법한 통지를 완료한 것으로 간주합니다.</p>
                                        <p class="wide">나. 회사 및 회사와 제휴한 업체가 불특정 다수의 회원에 대한 통지를 하는 경우는 7일 이상의 기간 동안 인터넷사이트에
                                            공지함으로써 ‘가’항에 따른 개별 통지에 갈음할 수 있습니다.</p>
                                        <p class="wide">다. 회원의 서비스 이용에 대한 사항을 회사는 시스템 메일을 통해 통지 할 수 있습니다. 시스템 메일은 서비스의 원활한
                                            이용을 위하여 서비스 상에서 수신을 거부할 수 없습니다. </p>
                                    </div>
    
                                </div>
    
                                <br>
                                <div class="chapter">
                                    <span class="chapterTitle">제2장 서비스 이용계약의 체결</span>
    
                                    <div class="clause">
                                        <span class="chapterSubTitle">제6조 회원가입</span>
                                        <p class="wide">가. 회원가입은 회원으로 등록하여 서비스를 이용하려는 자가 ROOM9 회원가입 절차 및 이용약관에 동의한 가입신청에 대하여
                                            회사가 이용을 승낙함으로써 성립합니다.</p>
                                        <p class="wide">나. ROOM9 플레이스는 회원으로 가입한 자에게 제공됩니다. 회원가입을 하지 아니한 자가 서비스를 이용함에 따라 발생한
                                            피해에 대하여 회사의 고의 또는 중과실이 없는 한, 회사는 책임지지 않습니다.</p>
                                        <div class="clause">
                                            <p class="legalItem">A. 이용계약의 성립 시기는 "회사"가 가입완료를 신청절차 상에서 표시한 시점으로 합니다.</p>
                                            <p class="legalItem">B. 회원으로 등록하여 서비스를 이용하려는 자는 서비스 가입신청 시 본 약관을 읽고 아래에 있는 "약관
                                                동의"를 체크하는 것으로 본 약관에 대한 동의 의사 표시를 합니다.</p>
                                        </div>
                                    </div>
    
                                    <div class="clause">
                                        <span class="chapterSubTitle">제7조 서비스 이용계약의 체결</span>
                                        <p class="wide">가. 호스트 이용 계약은 서비스를 이용하고자 하는 회원이 ROOM9 아이디로 로그인한 후 회사가 정한 절차에 따라 정보를
                                            기재한 다음 본 약관에 동의하고 “호스트등록”을 신청하면, 회사가 이러한 신청에 대하여 승낙함으로써 체결됩니다.</p>
                                        <div class="clause">
                                            <p class="legalItem">A. 이용계약의 성립 시기는 회사가 호스트등록 완료를 신청절차 상에서 표시한 시점으로 합니다.</p>
                                            <p class="legalItem">B. 호스트로 등록하여 서비스를 이용하려는 자는 호스트등록 신청 시 본 약관을 읽고, ‘약관 동의’를
                                                체크하는 것으로 본 약관에 대한 동의 의사 표시를 합니다.</p>
    
                                        </div>
                                        <p class="wide">나. “대관예약” 이용 계약은 서비스를 이용하고자 하는 회원이 ROOM9 아이디로 로그인한 후 회사가 정한 절차에 따라
                                            정보를 기재한 다음 본 약관에 동의하고 대관문의를 완료함으로써 성립합니다.</p>
                                        <div class="clause">
                                            <p class="legalItem">A. 이용계약의 성립 시기는 회사가 대관문의 완료를 절차 상에서 표시한 시점으로 합니다.</p>
                                            <p class="legalItem">B. 대관예약을 위해 서비스를 이용하려는 자는 대관예약 문의 시 본 약관을 읽고, ‘약관 동의’를 체크하는
                                                것으로 본 약관에 대한 동의 의사 표시를 합니다.</p>
    
                                            <p class="wide">다. 서비스 이용을 희망하는 회원은 회사가 온라인으로 제공하는 양식에 따라 거짓 없이 기재하여야 합니다. 허위
                                                정보로 등록하지 않은 회원은 법적인 보호를 받을 수 없으며, 서비스 이용에 불이익이 있을 수 있습니다. 또한 서비스에서의 어떠한 권리도
                                                주장할 수 없습니다.</p>
                                            <p class="wide">라. 약관을 읽지 않음으로써 발생할 수 있는 피해의 책임은 전적으로 회원에게 있습니다.</p>
                                            <p class="wide">마. 회사는 회원에 대해 회사정책에 따라 등급별로 구분하여 이용시간, 이용횟수, 서비스 메뉴 등을 세분하여 이용에
                                                차등을 둘 수 있습니다.</p>
                                        </div>
                                    </div>
                                    <div class="clause">
                                        <span class="chapterSubTitle">제8조 개인정보보호정책</span>
                                        <p class="wide">가. 회사는 관계법령이 정하는 바에 따라 회원의 개인정보를 보호하기 위하여 노력을 합니다.</p>
                                        <p class="wide">나. 회원의 개인정보보호에 관하여 관계법령 및 회사가 정하는 개인정보취급방침에 정한 바에 따릅니다. 단, 회원의 귀책사유로
                                            인해 노출된 정보에 대해 회사는 회사의 고의 또는 중과실이 있는 경우를 제외하고 일체의 책임을 지지 않습니다.</p>
                                        <p class="wide">다. 회사는 회원이 미풍양속에 저해되거나 국가안보에 위배되는 파일 등 위법한 자료를 등록 배포할 경우 관련기관의 요청이
                                            있을 시 이용자의 자료를 열람 및 해당 자료를 관련기관에 제출할 수 있습니다.</p>
                                    </div>
                                </div>
    
                                <br>
                                <div class="chapter">
                                    <span class="chapterTitle">제3장 계약 당사자의 의무</span>
    
                                    <div class="clause">
                                        <span class="chapterSubTitle">제9조 회사의 의무</span>
                                        <p class="wide">가. 회사는 관련법과 본 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 본 약관이 정하는 바에 따라 지속적이고
                                            안정적으로 서비스를 제공하기 위하여 최선을 다합니다.</p>
                                        <p class="wide">나. 회사는 회원이 안전하게 서비스를 이용할 수 있도록 보안 시스템을 구축하며 개인정보보호정책을 공시하고 준수합니다.
                                        </p>
                                        <p class="wide">다. 회사는 회원이 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.</p>
                                        <p class="wide">라. 회사는 서비스 제공과 관련하여 알고 있는 회원의 신상정보를 본인의 승낙 없이 제3자에게 누설, 배포하지 않습니다.
                                            단, 관계법령에 의한 수사상의 목적으로 관계기관으로부터 요구 받은 경우나 방송통신심의위원회의 요청이 있는 경우 등 법률의 규정에 따른 적법한
                                            절차에 의한 경우에는 그러하지 않습니다.</p>
                                        <p class="wide">마. 회사는 정보통신망 이용촉진 및 정보보호에 관한 법률, 통신비밀보호법 등 서비스의 운영, 유지와 관련 있는 법규를
                                            준수합니다.</p>
                                    </div>
    
                                    <div class="clause">
                                        <span class="chapterSubTitle">제10조 회원의 의무</span>
                                        <p class="wide">가. 회원은 회사의 서비스 이용 시 회사가 제공하는 온라인 양식에 대하여 모든 사항을 사실에 근거하여 작성하여야 하며,
                                            허위 또는 타인의 정보를 등록할 경우 일체의 권리를 주장할 수 없습니다.</p>
                                        <p class="wide">나. 회원은 본 약관에서 규정하는 사항과 기타 회사가 정한 제반 규정, 공지사항 등 회사가 공지하는 사항 및 관계법령을
                                            준수하여야 하며, 기타 회사의 업무에 방해가 되는 행위, 회사의 명예를 손상시키는 행위를 해서는 안 됩니다.</p>
                                        <p class="wide">다. 회원은 주소, 연락처, 전자우편 주소 등 이용계약사항이 변경된 경우에 서비스에 접속하여 직접 변경하거나, 전자우편,
                                            고객센터 등을 통하여 이를 회사에 즉시 알려야 합니다.</p>
                                        <p class="wide">라. 회사가 관계법령 및 ‘개인정보 보호정책’에 의거하여 그 책임을 지는 경우를 제외하고 회원에게 부여된 ID의 비밀번호
                                            관리소홀, 부정사용에 의하여 발생하는 모든 결과에 대한 책임은 “회원”에게 있습니다. 단, 이것이 회사의 고의 또는 과실로 인하여 야기된 경우는
                                            회사가 책임을 부담합니다.</p>
                                        <p class="wide">마. 회원은 회사의 사전 승낙 없이 서비스를 이용하여 영업활동을 할 수 없으며, 그 영업활동의 결과에 대해 회사는 책임을
                                            지지 않습니다. 또한 회원은 이와 같은 영업활동으로 회사가 손해를 입은 경우, 회사에 대한 손해배상의무를 지며, 회사는 해당 회원에 대하여
                                            서비스 이용제한 및 적법한 절차를 거쳐 손해배상 등을 청구할 수 있습니다.</p>
                                        <p class="wide">바. 회원은 회사의 명시적 동의가 없는 한 서비스의 이용권한, 기타 이용계약상의 지위를 타인에게 양도, 증여할 수 없으며
                                            이를 담보로 제공할 수 없습니다.</p>
                                        <p class="wide">사. 회원은 회사 및 제 3자의 지적 재산권을 침해해서는 안 됩니다.</p>
                                        <p class="wide">아. 회원은 서비스 이용에 의무와 책임을 다하여야 합니다. 이를 지키지 않을 경우 회사는 회원에게 서비스 이용 및 적법
                                            조치를 포함한 제재를 가할 수 있습니다.</p>
    
                                        <div class="clause">
                                            <p>A. 호스트의 의무와 책임</p>
                                            <div class="clause">
                                                <p class="wide">ⅰ. 호스트는 서비스에 게재한 게시물의 내용을 수시로 관리하여야 합니다.</p>
                                                <p class="wide">ⅱ. 게시물 내용에 대한 책임은 호스트에게 있으며, 회원의 대관문의 또는 예약과 관련하여 의무를 다하지
                                                    아니하여 발생한 문제에 대한 책임은 회사의 고의 또는 중과실이 없는 한 호스트에게 귀속됩니다.</p>
                                                <p class="wide">ⅲ. 호스트는 회원의 대관문의에 성실히 응해야 하며, 대관문의 및 예약과 관련한 제반 업무를 수행해야
                                                    합니다.</p>
                                                <p class="wide">ⅳ. 호스트는 대관문의를 통해 얻은 회원의 정보는 문의 답변 및 대관예약을 위해서만 사용해야 합니다. 그
                                                    외의 목적으로 개인정보가 활용될 경우 발생하는 피해의 책임은 회사의 고의 또는 중과실을 제외하고 전적으로 호스트에게 있습니다.
                                                </p>
                                            </div>
                                            <p>B. 대관문의 이용 시 의무와 책임</p>
                                            <div class="clause">
                                                <p class="wide">ⅰ. 회원은 서비스에 게재된 게시물의 내용을 숙지하고 대관문의 및 예약을 이용하여야 합니다.</p>
                                                <p class="wide">ⅱ. 회원은 대관문의 이용 시 본인의 정보를 거짓 없이 기재해야 합니다. 본인이 아닌 정보를 사용하여 발생한
                                                    피해에 대한 책임은 회원에게 있습니다.</p>
                                                <p class="wide">ⅲ. 회원은 대관문의 및 대관이용 시 호스트의 안내에 따릅니다. 이를 수행하지 않아 발생한 피해에 대하여
                                                    회사는 책임지지 않습니다.</p>
                                                <p class="wide">ⅳ. 회원은 호스트 또는 게시물 내용이나, 대관한 장소 이용 과정에 발생한 부당한 사유 등에 대하여 회사에
                                                    신고할 수 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
    
                                <br>
                                <div class="chapter">
                                    <span class="chapterTitle">제4장 서비스 이용</span>
    
                                    <div class="clause">
                                        <span class="chapterSubTitle">제11조 게시물 등록 및 관리</span>
                                        <p class="wide">가. 호스트등록을 한 회원은 “플레이스등록”을 통해 서비스에 게시물 게재를 신청할 수 있습니다.</p>
                                        <p class="wide">나. 플레이스등록은 회사가 제공하는 양식에 따라 거짓 없이 기재하여야 합니다. 허위로 등록된 정보는 서비스 이용에 불이익이
                                            있을 수 있으며, 이로 인해 발생한 피해에 대하여 회사는 책임지지 않습니다.</p>
                                        <p class="wide">다. 회원이 구매한 이용기간이 만료될 경우 서비스에서 게시물은 자동 비공개 전환되며, 회사는 전자우편 등의 방식으로 기한
                                            만료 및 비공개 전환에 대해 고지합니다.</p>
                                        <p class="wide">라. 아래의 사유에 해당할 경우 회사는 회원의 게시물 게재를 유보 또는 거부할 수 있습니다.</p>
                                        <div class="clause">
                                            <p>A. 게재된 정보에 허위로 의심되는 내용이 있을 경우</p>
                                            <p>B. 게재하고자 하는 장소 정보가 서비스 성격에 부합하지 않는 경우</p>
                                            <p>C. 이용기간 선택 및 요금이 납부되지 않은 경우</p>
                                            <p>D. 이용기간이 만료된 후 연장 신청이 되지 않은 경우</p>
                                            <p>E. 게시물에 다른 이용자 또는 제3자의 저작권 등 기타 권리를 침해하는 내용이 포함된 경우</p>
                                            <p>F. 기타 관계법령에 위배된다고 판단되는 경우</p>
                                        </div>
                                    </div>
    
    
                                    <div class="clause">
                                        <span class="chapterSubTitle">제12조 게시물에 대한 저작권</span>
                                        <p class="wide">가. 회원이 서비스 내에 게시한 게시물의 저작권은 게시한 회원에게 귀속됩니다. 또한 회사는 게시자의 동의 없이 게시물을
                                            상업적으로 이용할 수 없습니다. 다만, 비영리 목적인 경우는 그러하지 아니하며, 또한 서비스 내의 게재권을 갖습니다.</p>
                                        <p class="wide">나. 회원은 서비스를 이용하여 취득한 정보를 임의 가공, 판매하는 행위 등 서비스에 게재된 자료를 상업적으로 사용할 수
                                            없습니다.</p>
                                        <p class="wide">다. 회사는 회원이 게시하거나 등록하는 서비스 내의 내용물, 게시 내용에 대해 제11조 ‘라’항의 각 호에 해당한다고
                                            판단되는 경우 사전통지 없이 수정, 삭제하거나 이동 또는 등록을 거부할 수 있습니다.</p>
                                    </div>
    
    
                                    <div class="clause">
                                        <span class="chapterSubTitle">제13조 서비스 제공 및 중단</span>
                                        <p class="wide">가. 서비스 이용시간은 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴 1일 24시간을 원칙으로 합니다. 단, 회사는
                                            시스템 정기점검, 증설 및 교체를 위해 회사가 정한 날이나 시간에 서비스를 일시 중단할 수 있으며 예정된 작업으로 인한 서비스 일시 중단은
                                            사전에 공지합니다.</p>
                                        <p class="wide">나. 회사는 다음 경우에 대하여 사전 공지나 예고 없이 서비스를 일시적 혹은 영구적으로 중단할 수 있습니다.</p>
                                        <div class="clause">
                                            <p>A. 긴급한 시스템 점검, 증설, 교체, 고장 혹은 오동작을 일으키는 경우</p>
                                            <p>B. 국가비상사태, 정전, 천재지변 등의 불가항력적인 사유가 있는 경우</p>
                                            <p>C. 서비스 이용의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 경우</p>
                                        </div>
                                        <p class="wide">다. ‘나’항에 의한 서비스 중단의 경우 “회사”는 사전에 공지사항 등을 통하여 회원에게 통지합니다. 단, 회사가 통제할
                                            수 없는 사유로 발생한 서비스의 중단에 대하여 사전공지가 불가능한 경우에는 예외로 합니다.</p>
                                        <p class="wide">라. 회사는 서비스를 특정범위로 분할하여 범위 별로 이용가능시간을 별도로 지정할 수 있으며 이 경우 그 내용을 사전
                                            공지합니다.</p>
                                    </div>
    
    
                                    <div class="clause">
                                        <span class="chapterSubTitle">제14조 서비스 이용해지</span>
                                        <p class="wide">가. 회원이 서비스의 이용을 해지하고자 하는 경우에는 회원 본인이 온라인을 통하여 등록 해지 신청을 하여야 합니다</p>
                                        <p class="wide">나. 호스트는 유료서비스를 이용하여 요금 결제를 완료한 경우 환불은 본 약관에서 규정한 내용을 따릅니다.</p>
                                        <p class="wide">다. 대관예약을 취소하고자 하는 경우에는 회원 본인이 전자우편, 전화 등의 방법을 통하여 호스트에게 의사를 전달하여야
                                            합니다.</p>
                                        <p class="wide">라. 회사가 제3자에게 합병 또는 분할 합병되거나 서비스를 제3자에게 양도함으로써 서비스의 제공 주체가 변경되는 경우,
                                            회사는 사전에 이메일과 공지사항으로 회원에게 통지합니다. 이 경우 합병, 분할합병, 서비스 양도에 반대하는 회원은 서비스 이용계약을 해지할 수
                                            있습니다.</p>
                                    </div>
    
    
                                    <div class="clause">
                                        <span class="chapterSubTitle">제15조 서비스 이용제한</span>
                                        <p class="wide">가. 회원은 다음 각 호에 해당하는 행위를 하여서는 아니 됩니다. 해당 행위를 한 경우에 회사는 회원에게 경고 누적 등
                                            적법한 조치를 취할 수 있으며, 이 경우 회사는 회원에게 이메일, 전화, 기타의 방법으로 사유를 명시하여 사전 통지하고, 경중에 따라 한시적,
                                            영구적으로 서비스 이용을 제한하거나 이용계약을 해지할 수 있습니다.</p>
                                        <div class="clause">
                                            <p>A. 서비스에 게재한 장소정보가 실제 이용한 장소와 다를 경우</p>
                                            <p>B. 서비스에 게재한 장소정보 외에 대관에 필요한 추가 조건을 요구하는 경우</p>
                                            <p>C. 서비스에 게재한 장소정보에 고지된 대관비용 외에 현장에서 지불해야 하는 금액이 합리적으로 산정되지 않은 경우</p>
                                            <p>D. 합당한 사유 없이 대관예약 문의에 응답하지 않거나, 거부하는 경우</p>
                                            <p>E. 합당한 사유 없이 일방적으로 대관예약을 거부 또는 취소하는 경우</p>
                                            <p>F. 본 약관을 포함하여 기타 회사가 정한 제반 규정 또는 이용 조건을 중대하게 위반하는 행위</p>
                                            <p>G. 기타 관계법령에 위배되는 행위</p>
                                        </div>
                                        <p class="wide">나. 회원은 ‘가’항의 귀책사유로 인하여 회사나 타인에게 입힌 손해를 배상할 책임이 있습니다.</p>
                                    </div>
    
    
                                    <div class="clause">
                                        <span class="chapterSubTitle">제16조 대관예약의 결제/취소/환불</span>
                                        <p class="wide">가. 호스트와 회원은 대관예약의 절차에 성실히 응해야 합니다.</p>
                                        <p class="wide">나. 대관비용을 호스트에게 직접 결제하였을 경우 회원은 호스트에게 결제증빙을 직접 요청해야 하며, 호스트는 회원의
                                            요청사항을 직접 처리해야 합니다.</p>
                                        <p class="wide">다. 회원은 대관예약이 완료된 후 취소를 희망할 경우, 호스트에게 사전에 취소 의사를 전달하여야 합니다.</p>
                                        <p class="wide">라. 회원이 대관비용을 호스트에게 직접 결제하였을 경우 환불 절차는 호스트가 처리합니다.</p>
                                        <p class="wide">마. 대관비용의 환불 규정은 각 게시물에 호스트가 고지한 내용을 따릅니다. ROOM9는 호스트가 고지한 환불 규정에
                                            개입하지 않습니다.</p>
                                    </div>
                                </div>
    
                                <br>
                                <div class="chapter">
                                    <span class="chapterTitle">제5장 유료서비스 이용</span>
    
                                    <div class="clause">
                                        <span class="chapterSubTitle">제17조 서비스 이용요금의 결제</span>
                                        <p class="wide">가. 회원은 회사가 제공하는 플레이스등록을 이용하고자 하는 경우 이용요금을 결제한 후 서비스를 이용하는 것을 원칙으로
                                            합니다.</p>
                                        <p class="wide">나. 이용요금의 결제 방법은 PG사를 통해 제공되며, 신용카드 결제만 사용할 수 있습니다.</p>
                                        <p class="wide">다. 이용요금을 결제하고 구매한 상품의 이용기간이 만료되었을 경우, 회원은 서비스의 지속적인 이용을 위한 상품을 반복하여
                                            결제할 수 있습니다.</p>
                                        <p class="wide">라. 회사는 결제의 이행을 위하여 반드시 필요한 회원의 개인정보를 추가적으로 요구할 수 있으며, 회원은 회사가 요구하는
                                            개인정보를 정확하게 제공하여야 합니다. 회사는 회원이 허위 또는 정확하지 않은 개인정보를 제공하여 회원에게 발생하는 손해에 대하여, 회사의 고의
                                            또는 중과실이 없는 한 책임지지 않습니다.</p>
                                    </div>
    
                                    <div class="clause">
                                        <span class="chapterSubTitle">제18조 서비스 이용요금의 환불</span>
                                        <p class="wide">가. 호스트가 과오 납입한 요금에 대하여 회사는 그 금액을 환불하여야 합니다.</p>
                                        <p class="wide">나. 호스트의 귀책사유로 이용요금의 환불을 희망하는 경우, 호스트관리 &gt; 플레이스관리에서 환불신청을 이용할 수
                                            있습니다.</p>
                                        <p class="wide">다. 이용요금의 환불 수수료는 아래와 같습니다.</p>
                                        <div class="clause">
                                            <p>A. 서비스 이용 개시일 이후 환불을 요청하는 경우, 환불금액은 아래와 같이 공제 후 환불합니다.</p>
                                            <div class="clause">
                                                <p>i. 환불 금액 = 원 결제금액 – {원 결제금액 x (사용일수/전체이용일수)} – 환불 수수료(잔여금액의 5.5%)</p>
                                            </div>
                                            <p class="legalItem">B. 최소 환불이 가능한 금액은 1,000원 입니다. ‘A’에서 계산된 환불금액이 1,000원 미만일 경우
                                                환불이 불가능합니다.</p>
                                            <p class="legalItem">C. 서비스 이용기간은 하루 단위로 계산됩니다. (예. 24시간을 사용하지 않아도 1일로 계산)</p>
                                            <p class="legalItem">D. 결제 후 이용기간이 소진되지 않은 상태에서 환불을 신청할 경우 환불 수수료가 부과되지 않습니다.
                                            </p>
                                        </div>
                                        <p class="wide">라. 다음의 경우 환불이 불가능 합니다.</p>
                                        <div class="clause">
                                            <p>A. 구매한 상품의 이용기간이 정상적으로 소진된 경우</p>
                                            <p>B. 이벤트 등 상품의 구매 시점에 구매 완료 시 환불불가 사유를 명시한 경우</p>
                                            <p>C. 기타 회사가 환불불가 사유를 명시적으로 고지한 상품인 경우</p>
                                        </div>
                                        <p class="wide">마. 다음과 같은 경우 회사는 이용 요금에 대하여 호스트가 결제한 금액을 전액 환불합니다.</p>
                                        <div class="clause">
                                            <p>A. 결제를 완료한 후 서비스를 이용한 내역이 없는 경우</p>
                                            <p>B. 구매한 서비스가 실제 제공된 서비스와 현저하게 상이할 경우</p>
                                            <p>C. 사전 고지되지 않은 서비스의 중단으로 서비스를 정상적으로 이용하지 못하는 경우</p>
                                            <p>D. 기타 회사의 귀책 사유로 정상적인 서비스 이용이 현저하게 불가능한 경우 </p>
                                        </div>
                                        <p class="wide">바. 환불은 호스트의 환불의사가 접수된 후 회사의 영업일 기준 5~7일 이내에 처리합니다.</p>
                                        <p class="wide">사. 환불의 경우 호스트가 해당 서비스의 이용을 위하여 이용한 결제수단으로 환불하는 것을 원칙으로 하나, 이것이
                                            불가능하거나 서비스의 중도해지로 인한 부분 환불 등의 경우에는 회사가 정하는 별도의 방법으로 환불합니다.</p>
                                    </div>
                                </div>
                            </div>
                            <label>
                                <input type="checkbox" class="" name="legal" value="y"
                                    data-parsley-required="true" data-parsley-class-handler=".legalCheck"
                                    data-parsley-error-message="약관에 동의해 주세요" data-parsley-multiple="legal" style="height: 20px;">
                                약관에 동의 합니다.
                            </label>
                        </div>
                    </article>
                    <input type="hidden" name="isMobile" class="isMobile" value="n" data-parsley-required="true"
                        data-parsley-equalto="y" data-parsley-excluded="false" data-parsley-class-handler=".certPhone"
                        data-parsley-errors-container=".phoneCheckErrorWrap" data-parsley-error-message="휴대전화 번호를 인증해 주세요">
                    <input type="hidden" name="isEmail" class="isEmail" value="n" data-parsley-required="true"
                        data-parsley-equalto="y" data-parsley-excluded="false" data-parsley-class-handler=".certEmail"
                        data-parsley-errors-container=".emailCheckErrorWrap" data-parsley-error-message="이메일을 인증해 주세요">
                </div>
                <article class="btnArea">
                    <input type="submit" class="submitBtn" value="호스트 등록 완료">
                </article>
            </form>
        </section>
    </div>
