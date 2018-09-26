<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CallBackReservation.aspx.cs" Inherits="DoktorPrj.CallBackReservation" %>

<%@ Register Src="~/MenuUserCtrl.ascx" TagPrefix="uc1" TagName="MenuUserCtrl" %>
<%@ Register Src="~/FooterUserCtrl.ascx" TagPrefix="uc1" TagName="FooterUserCtrl" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
<body>
    <form id="form1" runat="server">
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
                    <h1>نمایش اطلاعات پرداخت</h1>
                </section>
                <section class="_flex _w100 base-body-ro-content">
                    <div class="_flex _w90-pad5 body-info-ro">
                        <div class="_flex _w100 s-i-l-t t-i _dir-align-r">
                            <span style="color: #b20404; margin: 0 auto;">ارائه پرینت این صفحه هنگام مراجعه به مطب الزامی است</span>
                        </div>
                        <div class="_flex _w100 s-i-l-t t-i _dir-align-r">
                            <div class="_w100 _flex _dir-align-r r-c">
                                <div class="_w100 _flex">
                                    <span>نام و نام خانوادگی:</span>
                                    <span id="lblFullName" runat="server"></span>
                                </div>
                                <div class="_w100 _flex">
                                    <span>کد ملی بیمار:</span>
                                    <span id="lblNationalCode" runat="server"></span>
                                </div>
                            </div>
                            <div class="_w100 _flex _dir-align-l l-c">
                                <div class="_w100 _flex _dir-align-r">
                                    <span>تاریخ درخواست:</span>
                                    <span id="lblRegisterDate" runat="server"></span>
                                </div>
                                <div class="_w100 _flex _dir-align-r">
                                    <span>شماره پیگیری:</span>
                                    <span id="lblReference" runat="server"></span>
                                </div>
                            </div>
                        </div>
                        <div class="_flex _w100 s-i-l-t c-i _dir-align-r">
                            <table class="tbl-h-s _w100">
                                <thead>
                                    <tr>
                                        <th scope="col">تاریخ رزرو</th>
                                        <th scope="col">ساعت رزرو</th>
                                        <th scope="col">روز</th>
                                        <th scope="col">وضعیت</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td id="lblReserveDate" runat="server"></td>
                                        <td id="lblReserveTime" runat="server"></td>
                                        <td id="lblReserveDay" runat="server"></td>
                                        <td id="lblReserveStatus" runat="server"></td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                        <div class="_flex _w100 _dir-align-r">
                            <button class="_flex _cursor bttn-content _trans" onclick="printSec();">پرینت</button>
                        </div>
                    </div>
                </section>
                <uc1:FooterUserCtrl runat="server" ID="FooterUserCtrl" />
            </section>
        </section>
    </form>
</body>
</html>
