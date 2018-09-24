<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="DoktorPrj.Contactus" %>

<%@ Register Src="~/MenuUserCtrl.ascx" TagPrefix="uc1" TagName="MenuUserCtrl" %>
<%@ Register Src="~/FooterUserCtrl.ascx" TagPrefix="uc1" TagName="FooterUserCtrl" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>contact Neurologist Project</title>
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
        <section class="_w100 _position-r _dir-align-r">
            <section class="_flex base-menu _position-f">
                <uc1:MenuUserCtrl runat="server" ID="MenuUserCtrl" />
            </section>
            <i class="_position-f arrow-1">
                <span class="car-rental-ico-menu spn-menu-arrow"></span>
            </i>
            <i class="_position-f arrow-2 _trans"></i>
            <section class="_flex _position-a contact-base-c">
                <section class="_flex _w90-pad5 title-body">
                    <h1>ارتباط با دکتر فرشته اسفندیاری</h1>
                </section>
                <section class="_flex _w100 body-contact">
                    <section class="_flex _w100 map-contact _position-r">
                        <div class="_position-a _flex info-map-c">
                            <h3 class="_flex _w100"><i class="car-rental-ico-feedback _color-w"></i><span>اطلاعات تماس</span></h3>
                            <ul class="_flex _w100 ul-info-c">
                                <li class="_flex _w90-pad5">
                                    <i class="car-rental-ico-mapmarker"></i>
                                    <span>تهران ، شريعتی، ميرداماد، رودبار شرقی شمالی، پلاک 47، ساختمان پزشکان رودبار، طبقه اول، واحد 3 </span>
                                </li>
                                <li class="_flex _w90-pad5">
                                    <i class="car-rental-ico-phone-hang-up"></i>
                                    <span>22923595</span>
                                </li>
                                <li class="_flex _w90-pad5">
                                    <i class="car-rental-ico-phone-hang-up"></i>
                                    <span>همراه 09338106947</span>
                                </li>
                                <li class="_flex _w90-pad5">
                                    <i class="car-rental-ico-fax"></i>
                                    <span>22923595</span>
                                </li>
                            </ul>
                        </div>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d809.4014961890516!2d51.44416782918544!3d35.7604880870234!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzXCsDQ1JzM3LjgiTiA1McKwMjYnNDEuMCJF!5e0!3m2!1sen!2s!4v1532298684319" frameborder="0" style="border: 0" allowfullscreen></iframe>
                    </section>
                </section>
            </section>
        </section>
    </form>
</body>
</html>
