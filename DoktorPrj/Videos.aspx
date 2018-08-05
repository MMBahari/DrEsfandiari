<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Videos.aspx.cs" Inherits="DoktorPrj.Videos" %>

<%@ Register Src="~/MenuUserCtrl.ascx" TagPrefix="uc1" TagName="MenuUserCtrl" %>
<%@ Register Src="~/FooterUserCtrl.ascx" TagPrefix="uc1" TagName="FooterUserCtrl" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Videos Neurologist Project</title>
    <link href="/Style/master-css-content.css" rel="stylesheet" />
    <link href="/Style/all-css-content.css" rel="stylesheet" />
    <link href="/Style/swiper/swiper.min.css" rel="stylesheet" />
    <script src="/Scripts/jquery-3.3.1.js"></script>
    <script src="/Scripts/jquery-ui-1.12.1.min.js"></script>
    <script src="/Scripts/swiper/swiper.min.js"></script>
    <script src="/Scripts/BaseJsContent/base-js-content.js"></script>
</head>
<body data-lang="fa" class="_bg-10">
    <form id="form1" runat="server">
        <section class="_w100 _position-r _dir-align-r">
            <section class="_flex base-menu _position-f">
                <uc1:MenuUserCtrl runat="server" ID="MenuUserCtrl" />
            </section>
            <section class="_w100 _h100 _position-a _trans _google-map-sec">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d809.4014961890516!2d51.44416782918544!3d35.7604880870234!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzXCsDQ1JzM3LjgiTiA1McKwMjYnNDEuMCJF!5e0!3m2!1sen!2s!4v1532298684319" frameborder="0" style="border: 0" allowfullscreen></iframe>
            </section>
            <i class="_position-f arrow-1"></i>
            <i class="_position-f arrow-2 _trans">
                <span class="car-rental-ico-mapmarker map-ico _position-a"></span>
            </i>
            <section class="_flex _position-a base-videos">
                <section class="_flex _w100 body-videos-c">
                    <h1 class="_flex _w100 title-v-c">ویدوهای آموزشی و علمی بخش جراحی مغز و اعصاب</h1>
                    <div class="_flex bb-v-c">
                        <div class="_flex _w100 _bg-c v-c"></div>
                        <p class="_flex _w100 p-v-c">خانم جوان ۲۴ ساله، مبتلا به بیماری ژنتیکی به نام نوروفیبروماتوزیس تیپ ۲، با سابقه جراحی تومور عصب شنوایی سمت چپ، این بار با ناشنوایی کامل به دلیل از دست رفتن شنوایی در سمت راست مراجعه کرد و در تصویربرداری، تومور بزرگ عصب شنوایی راست تشخیص داده شد. تومور دوطرفه عصبهای شنوایی، ارتباط عصبی گوش ...</p>
                        <div class="_flex _w100 b-v-item">
                            <article class="art-v">
                                <a class="_flex _w100 _h100">
                                    <span class="_flex _w100">
                                        <i class="car-rental-ico-video"></i>
                                    </span>
                                    <h2 class="_flex _w100">خروج چاقو از جمجمه کودک ۴ساله</h2>
                                </a>
                            </article>
                            <article class="art-v">
                                <a class="_flex _w100 _h100">
                                    <span class="_flex _w100">
                                        <i class="car-rental-ico-video"></i>
                                    </span>
                                    <h2 class="_flex _w100">خروج چاقو از جمجمه کودک ۴ساله</h2>
                                </a>
                            </article>
                            <article class="art-v">
                                <a class="_flex _w100 _h100">
                                    <span class="_flex _w100">
                                        <i class="car-rental-ico-video"></i>
                                    </span>
                                    <h2 class="_flex _w100">خروج چاقو از جمجمه کودک ۴ساله</h2>
                                </a>
                            </article>
                            <article class="art-v">
                                <a class="_flex _w100 _h100">
                                    <span class="_flex _w100">
                                        <i class="car-rental-ico-video"></i>
                                    </span>
                                    <h2 class="_flex _w100">خروج چاقو از جمجمه کودک ۴ساله</h2>
                                </a>
                            </article>
                            <article class="art-v">
                                <a class="_flex _w100 _h100">
                                    <span class="_flex _w100">
                                        <i class="car-rental-ico-video"></i>
                                    </span>
                                    <h2 class="_flex _w100">خروج چاقو از جمجمه کودک ۴ساله</h2>
                                </a>
                            </article>
                            <article class="art-v">
                                <a class="_flex _w100 _h100">
                                    <span class="_flex _w100">
                                        <i class="car-rental-ico-video"></i>
                                    </span>
                                    <h2 class="_flex _w100">خروج چاقو از جمجمه کودک ۴ساله</h2>
                                </a>
                            </article>
                        </div>
                    </div>
                </section>
                <uc1:FooterUserCtrl runat="server" ID="FooterUserCtrl" />
            </section>
        </section>
    </form>
</body>
</html>
