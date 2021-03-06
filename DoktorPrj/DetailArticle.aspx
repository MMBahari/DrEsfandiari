﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailArticle.aspx.cs" Inherits="DoktorPrj.DetailArticle" %>

<%@ Register Src="~/MenuUserCtrl.ascx" TagPrefix="uc1" TagName="MenuUserCtrl" %>
<%@ Register Src="~/FooterUserCtrl.ascx" TagPrefix="uc1" TagName="FooterUserCtrl" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Detail Article Neurologist Project</title>
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
            <section class="_w100 _h100 _position-a _trans _google-map-sec">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d809.4014961890516!2d51.44416782918544!3d35.7604880870234!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzXCsDQ1JzM3LjgiTiA1McKwMjYnNDEuMCJF!5e0!3m2!1sen!2s!4v1532298684319" frameborder="0" style="border: 0" allowfullscreen></iframe>
            </section>
            <i class="_position-f arrow-1">
                <span class="car-rental-ico-menu spn-menu-arrow"></span>
            </i>
            <i class="_position-f arrow-2 _trans">
                <span class="car-rental-ico-mapmarker map-ico _position-a"></span>
            </i>
            <section class="_flex _position-a base-art-p-content">
                <section class="_w100 fig-art-c _position-r">
                    <figure class="_w90-pad5 _flex _position-r" style="background: url('../Img_Videos/img/serotonin_1.jpg') no-repeat center center /cover">
                    </figure>
                    <div class="_w90-pad5 _flex t-d-a _position-a">
                        <h1>تومور های بدخیم مغز</h1>
                        <div class="_flex other-info-a">
                            <i class="car-rental-ico-calendar"></i>
                            <span>1397/4/23</span>
                        </div>
                    </div>
                </section>
                <section class="_bg-w1 _flex _dir-align-r base-b-d-art">
                    <p>شنیدن کلمه “تومور” در وجود هر کس اضطراب ایجاد میکند و اضافه شدن “مغز” به عنوان محل و “بدخیم” به عنوان نوع آن این اضطراب را تشدید خواهد کرد،آیا مغز که جایگاه تفکر و احساس و رفتار ماست هم ممکن است توسط تومور ها مورد تهاجم قرار گیرد؟ متاسفانه پاسخ مثبت است!</p>
                    <img alt="" title="" src="Img_Videos/img/serotonin_2.jpg" />
                    <p>در واقع شایعترین تومورهای مغزی، بدخیم میباشند. هر کدام از انواع سلولهایی که بافت مغز را تشکیل میدهند میتوانند به اصطلاح ” از کنترل خارج شده” و با سرعت غیر طبیعی رشد کنند و به تدریج توده ای داخل مغز بوجود آورند که هم فضای قابل توجهی از فضای محدود جمجمه را اشغال کنند و بافت طبیعی را تحت فشار قرار دهند و هم با نفوذ به داخل بافت طبیعی عملکرد آن را مختل نمایند.   این تومور ها انواع زیادی دارند و هر کدام در سن خاصی شیوع بیشتر، از شیرخوارگی تا کهنسالی؛ گرچه شایعترین آنها که بدخیم ترین هم هست بیشتر در سن ۵۰ تا ۶۰ سالگی  دیده میشود.</p>
                    <p>اما آیا اگر شما خانم یا آقایی در این سن و سال یا جوانتر هستید و سردرد دارید باید نگران شوید؟! خیر! همه ما بارها در زندگی دچار سردرد شده ایم؛ پس چه علامتی باید نگرانمان کند؟ اگر سردرد شما بیشتر صبحها اتفاق می افتد و اگر با کم شدن قدرت دست یا پا یا اشکال در تکلم و حافظه همراه است لازم است به پزشک مراجعه کنید تا مورد معاینه و در صورت صلاحدید ایشان بررسی تصویر برداری قرار گیرید.</p>
                    <p>
                        تشنج هم علامت دیگری است که در برخی از بیماران مشاهده میگردد که به صورت از دست دادن هوشیاری و معمولآ همراه با حرکات غیر طبیعی اندامها میباشد که طبیعتآ با بروز چنین علامتی لازم است در اسرع وقت بیمار به بیمارستان منتقل شود تا مورد بررسی قرار گیرد.
تومورهای مغزی معمولآ با انجام ام آر آی تشخیص داده میشوند و درمان باید در اسرع وقت آغاز شود. در حال حاضر گرچه نام بدخیم بر روی این تومورها گذاشته میشود ولی به معنی بن بست بودن مسیرهای درمانی نیست.
                    </p>
                    <img alt="" title="" src="Img_Videos/brain-article-2-1.jpg" />
                    <p>اولین اقدام درمانی این بیماران که میتواند به عاقبت بهتری برای آنان بینجامد جراحی و خارج کردن ضایعه است ولی سلولهای بدخیم این توانایی را دارند که داخل بافت لطیف مغز نفوذ کنند و از محدوده تومور فاصله زیادی بگیرند و این یعنی برداشتن خود ضایعه خاتمه درمان نیست؛ درمان این بیماران با اشعه درمانی و شیمی درمانی ادامه می یابد و این درمان تکمیلی کمک میکند تا عود ضایعه به تعویق بیفتد. شیمی درمانی در این بیماران خوشبختانه با دارویی خوراکی صورت میگیرد و نیازی به بستری و تزریق داخل رگ نداشته و در واقع درمان بیمار سرپایی ادامه می یابد. از سویی بسیاری از تومورهای مغزی در محدوده ای بین خوش خیمی و بدخیمی قرار میگیرند و با درمان مناسب تا مدتها بیمار میتواند بدون علامت بوده و زندگی خانوادگی و شغلی طبیعی داشته باشد. تومورهای بدخیم مغز وادی بزرگی در جراحی مغز و اعصاب است که روز به روز یافته جدیدی برای کنترل بیشتر و درمان بهتر مبتلايان به آن معرفی میگردد.</p>
                </section>
                <uc1:FooterUserCtrl runat="server" ID="FooterUserCtrl" />
            </section>
        </section>
    </form>
</body>
</html>
