<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReservationOnline.aspx.cs" Inherits="DoktorPrj.ReservationOnline" %>


<%@ Register Src="~/MenuUserCtrl.ascx" TagPrefix="uc1" TagName="MenuUserCtrl" %>
<%@ Register Src="~/FooterUserCtrl.ascx" TagPrefix="uc1" TagName="FooterUserCtrl" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reservation Online Project</title>
    <link href="/Style/master-css-content.css" rel="stylesheet" />
    <link href="/Style/all-css-content.css" rel="stylesheet" />
    <link href="/Style/swiper/swiper.min.css" rel="stylesheet" />
    <link href="/Style/persian-datepicker.css" rel="stylesheet" />
    <script src="/Scripts/jquery-3.3.1.js"></script>
    <script src="/Scripts/jquery-ui-1.12.1.min.js"></script>
    <script src="/Scripts/BaseJsContent/persian-datepicker.js"></script>
    <script src="/Scripts/angular.js"></script>
    <script src="/Scripts/angular-touch.min.js"></script>
    <script src="/Scripts/angular-animate.min.js"></script>
    <script src="/Scripts/angular-route.min.js"></script>
    <script src="/Scripts/angular-aria.min.js"></script>
    <script src="/Scripts/angular-material.js"></script>
    <script src="/Scripts/swiper/swiper.min.js"></script>
    <script src="/Scripts/BaseJsContent/base-js-content.js"></script>

</head>
<body data-lang="fa" class="_bg-10">
    <form id="form1" runat="server">
        <modal-login-reg class="_flex _position-f _w100 _h100 base-modal-login-reg _trans showModalRegLogin" ng-if="showModalReg">
            <section class="_bg-w1 _flex login-reg">
                <div class="_flex _w90-pad5 t _dir-align-r"><h1 class="_flex">فرم اطلاعات رزرو سیستم نوبت دهی</h1></div>
                <div class="_flex _w90-pad5 c _h100 _dir-align-r">
                    <div class="_w100 _flex info-user _dir-align-r" <%--ng-show="showInfo==false"--%>>
                        <h2 class="select-date-time">رزرو وقت برای {{$parent.ORM.Date}} و ساعت {{$parent.ORM.Time}}</h2>
                        <div class="_flex _w100 split-content _dir-align-r">
                           <label>کد ملی:</label>
                           <input type="text" placeholder="کد ملی" ng-model="$parent.PersonInfo.NationalCode" class="_fnt-fa _trans" maxlength="11" />
                        </div>
                        <div class="_flex _w100 split-content _dir-align-r">
                           <label>نام بیمار:</label>
                           <input type="text" placeholder="نام بیمار" ng-model="$parent.PersonInfo.Name" class="_fnt-fa _trans" />
                        </div>
                        <div class="_flex _w100 split-content _dir-align-r">
                            <label>نام خانوادگی:</label>
                            <input type="text" placeholder="نام خانوادگی" ng-model="$parent.PersonInfo.Family" class="_fnt-fa _trans" />
                        </div>
                        <div class="_flex _w100 split-content _dir-align-r">
                            <label>شماره موبایل:</label>
                            <input type="text" placeholder="شماره موبایل" ng-model="$parent.PersonInfo.Mobile" class="_fnt-fa _trans" />
                        </div>
                    </div>
                    <div class="_w100 _flex _dir-align-r desc-info saved-info-later" ng-show="showInfo==true">
                        <h3 class="_flex _dir-align-r _w90-pad5 _color-g">اطلاعات شما با کد ملی {{$parent.PersonInfo.NationalCode}} در سیستم ثبت شده است. و نیازی به وارد کردن اطلاعات نمی باشد. لطفا پس از تایید موارد ذیل نسبت به رزرو وقت اقدام نمایید.</h3>
                    </div>
                    <div class="_w100 _flex info-user _dir-align-r">
                        <div class="_flex _w100 split-content _dir-align-r">
                            <label>شرح حال بیمار:</label>
                        </div>
                        <div class="_flex _w100 split-content _dir-align-r">
                            <textarea ng-model="$parent.PersonInfo.Description" class="_fnt-fa _trans" style="width:70%;">
                            </textarea>
                        </div>
                    </div>
                    <div class="_w100 _flex _dir-align-r desc-info">
                        
                        <input type="checkbox" ng-model="checked" /><h4>زمان انتخابی و صحت اطلاعات ورودی را تایید می نمایم.</h4>
                    </div>
                </div>
                <div class="_flex _w90-pad5 f _dir-align-r">
                    <button type="button" class="_flex bttn-frm _trans" ng-click="$parent.showModalReg=false" title="انصراف">انصراف</button>
                    <button type="button" class="_flex bttn-frm _trans" ng-click="ReserveTime($parent,$parent.PersonInfo)" ng-show="checked"  title="رزرو وقت">رزرو وقت</button>
                </div>
            </section>
        </modal-login-reg>
        <modal-login-reg class="_flex _position-f _w100 _h100 base-modal-login-reg _trans showNationalCode" ng-if="showModalNationalCode">
            <section class="_bg-w1 _flex login-reg">
                <div class="_flex _w90-pad5 t _dir-align-r"><h1 class="_flex">فرم اطلاعات رزرو سیستم نوبت دهی</h1></div>
                <div class="_flex _w90-pad5 c _h100 _dir-align-r">
                    <div class="_flex _w100 split-content _dir-align-r">
                         <label>کد ملی:</label>
                         <input type="text" placeholder="کد ملی" ng-model="PersonInfo.NationalCode" class="_fnt-fa _trans" maxlength="11" />
                    </div>
                </div>
                <div class="_flex _w90-pad5 f _dir-align-r">
                    <button type="button" class="_flex bttn-frm _trans" ng-click="$parent.showModalNationalCode=false" title="انصراف">انصراف</button>
                    <button type="button" class="_flex bttn-frm _trans"  title="ارسال اطلاعات" ng-click="CheckedNationalCode($parent,PersonInfo);$parent.showModalNationalCode=false">تأييد</button>
                </div>
            </section>
        </modal-login-reg>
        <section class="_w100 _position-r _dir-align-r">
            <section class="_flex base-menu _position-f">
                <uc1:MenuUserCtrl runat="server" ID="MenuUserCtrl" />
            </section>
            <section class="_w100 _h100 _position-a _trans _google-map-sec">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d809.4014961890516!2d51.44416782918544!3d35.7604880870234!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzXCsDQ1JzM3LjgiTiA1McKwMjYnNDEuMCJF!5e0!3m2!1sen!2s!4v1532298684319" frameborder="0" style="border: 0" allowfullscreen></iframe>
            </section>
            <i class="_position-f arrow-1">
                <span class="car-rental-ico-menu spn-menu-arrow"></span>
            </i>
            <i class="_position-f arrow-2 _trans">
                <span class="car-rental-ico-mapmarker map-ico _position-a"></span>
            </i>
            <section class="_flex _position-a base-ro-content">
                <section class="_flex _w100 t-ab-c">
                    <h1>سیستم نوبت دهی اینترنتی</h1>
                </section>
                <section class="_flex _w100 base-body-ro-content">
                    <div class="_flex _w90-pad5 body-info-ro">
                        <p class="_flex _w100" style="margin-bottom: 20px; color: #a94442; font-size: 1.4em !important;">مراجعه کننده محترم  قبل از رزرو نوبت، موارد ذیل را به دقت مطالعه فرمایید:</p>
                        <p class="_flex _w100">ساعات کار مطب روز های شنبه، یکشنبه، سه شنبه و چهارشنبه از ساعت 17 تا 21 می باشد. .</p>
                        <p class="_flex _w100">در صورت کنسل شدن نوبت از سوی مطب به شماره موبایل ثبت شده در سیستم، پیام ارسال می شود. و نوبت دیگری با هماهنگی شما تخصیص میگردد.</p>
                        <p class="_flex _w100">برای انجام عملیات نوبت دهی از مرورگرهای Chrome یا Firefox استفاده نمایید. (<a href="https://www.google.com/chrome/browser/desktop/index.html">دانلود مرورگر کروم </a>) (<a href="https://www.mozilla.org/en-US/firefox/new/">دانلود مرورگر فایرفاکس</a>)</p>
                        <p class="_flex _w100">کارت ملی بیمار را جهت ثبت کد ملی در سامانه به همراه داشته باشید. </p>
                        <p class="_flex _w100">مبلغ ویزیت 50،000 تومان میباشد.</p>
                        <p class="_flex _w100">مبلغ پرداختی به هیچ عنوان قابل برگشت نیست حتي در صورت عدم مراجعه زيرا در وقت رزرو شده براي شما بيمار ديگر ي پذير فته نميشود.</p>
                        <p class="_flex _w100">وقت رزرو شده 24 ساعت قبل و فقط برای یک بار قابل تغییر است.</p>
                        <p class="_flex _w100">زمان رزرو شده به معنی زمان ویزیت نمی باشد و فقط به معنی حضور شما در مطب است.</p>
                        <p class="_flex _w100" style="color: #ad3835;">ارائه پرینت صفحه حاوی شماره پیگیری هنگام مراجعه به مطب الزامی است.</p>
                        <input type="checkbox" ng-model="checkedRules" /><h4>مطالب فوق را خوانده و تایید می نمایم.</h4>
                    </div>
                    <section class="_flex _w90-pad5 _dir-align-r base-dp-o-r" ng-show="checkedRules">
                        <div ng-model="date" persiandatepickers-df></div>
                    </section>
                    <section class="_flex _dir-align-r _w90-pad5 show-time-content" ng-show="checkedRules">
                        <h2 ng-show="timeList.length>0"></h2>
                        <ul class="_w100 _flex _dir-align-r">
                            <li class="_flex _dir-align-r _cursor _trans" ng-click="ReservedTime(itemTime)" ng-class="{'reserved':itemTime.IsReserved,'waitingToPay':itemTime.WaitingToPay,'_bg-r':itemTime.IsReserved,'open':!itemTime.IsReserved&&!itemTime.WaitingToPay,'_bg-g':!itemTime.IsReserved&&!itemTime.WaitingToPay,'_bg-o':itemTime.WaitingToPay}">
                                <i class="_color-r" ng-class="{'_color-r':itemTime.IsReserved,'_color-g':!itemTime.IsReserved}">18:40</i>
                            </li>
                        </ul>
                    </section>
                </section>
                <uc1:FooterUserCtrl runat="server" ID="FooterUserCtrl" />
            </section>
        </section>
    </form>
</body>
</html>
