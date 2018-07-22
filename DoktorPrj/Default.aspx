<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DoktorPrj.Default" %>

<%@ Register Src="~/MenuUserCtrl.ascx" TagPrefix="uc1" TagName="MenuUserCtrl" %>
<%@ Register Src="~/FooterUserCtrl.ascx" TagPrefix="uc1" TagName="FooterUserCtrl" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Neurologist Project</title>
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
            <video autoplay loop muted class="_position-f _trans" id="dfVideos">
                <source src="/Img_Videos/Neurologist.mp4" type="video/mp4" />
            </video>
            <i class="_position-f arrow-1"></i>
            <i class="_position-f arrow-2 _trans">
                <span class="car-rental-ico-mapmarker map-ico _position-a"></span>
            </i>
            <section class="_flex _position-a base-h-content">
                <section class="_flex info-content">
                    <img title="#" src="http://lotusbeautyclinic.com/wp-content/uploads/2016/11/1100.400-1-460x295.jpg" />
                    <i class="_w100 _flex _fnt-fa">به نام آرامش بخش قلبها و شفا بخش جانها</i>
                    <p class="_w100 _flex p-info _fnt-fa">
                        بیماری، بخش جداناپذیر زندگی بشر، و مشیت خداوند در شفای آن، هدیه ایست الهی. آرامش پس از این تلاطم زمینه ساز قدرشناسی به خاطر لحظه به لحظه زندگی سالم پس از آن خواهد بود. در اوج این اضطراب، صادقانه در کنارتان هستم؛ باشد که اراده پروردگار و اعتماد و همیاری شما و بهره گیری از علم، تجربه، هنر و تکنولوژی سبب این گشایش گردد.
                    </p>
                </section>
                <section class="_flex _w100 w-c _dir-align-r">
                    <article class="_flex art-w-content _w1">
                        <img title="#" src="/Img_Videos/img/Brain-logo.Sefid_.png" />
                        <i class="_w100 _flex _fnt-fa">بیماری های جراحی مغز و اعصاب</i>
                        <span>شرح بیماری های مرتبط با جراحی مغز و اعصاب</span>
                    </article>
                    <article class="_flex art-w-content _w2">
                        <img title="#" src="/Img_Videos/img/Spine-logo.Sefid_.png" />
                        <i class="_w100 _flex _fnt-fa">بیماری های جراحی ستون فقرات</i>
                        <span>شرح بیماری های مرتبط با جراحی ستون فقرات</span>
                    </article>
                    <article class="_flex art-w-content _w3">
                        <img title="#" src="/Img_Videos/img/Logo.Sefid_.png" />
                        <i class="_w100 _flex _fnt-fa">شرحی بر چند عمل جراحی</i>
                        <span>معرفی چند عمل جراحی انجام شده</span>
                    </article>
                </section>
                <section class="_w100 _dir-align-r _position-r">
                    <div class="home-swiper swiper-container" dir="rtl">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide _w100">
                                <figure class="_w100 _h100" style="background: url('https://www.benech-neurochirurgia.it/sites/default/files/styles/about_gallery/public/RDD_7422.jpg?itok=v6CqnDM5') no-repeat center center /cover"></figure>
                            </div>
                            <div class="swiper-slide _w100">
                                <figure class="_w100 _h100" style="background: url('https://www.benech-neurochirurgia.it/sites/all/themes/benech/img/about-cover.jpg') no-repeat center center /cover"></figure>
                            </div>
                        </div>
                    </div>
                    <span class="_position-a arrow-b">
                        <img alt="" title="" src="Img_Videos/img/Brain-logo.Sefid_.png" />
                    </span>
                </section>
                <section class="_w100 _flex base-article-c">
                    <i class="_w100 _flex t-a-c">مقالات مغز،اعصاب و ستون فقرات</i>
                    <div class="_w100 _flex body-art-c _dir-align-r">
                        <article class="art-b-c">
                            <a title="" href="/DetailArticle.aspx" class="_flex _dir-align-r _position-r">
                                <h2 class="_flex _w90-pad5 _fnt-fa">
                                    <i class="car-rental-ico-document-fill"></i>
                                    تومور های بدخیم مغز
                                </h2>
                                <figure class="_w100">
                                    <figcaption class="_w100 _h100 _trans" style="background: #252525 url('/Img_Videos/img/Brain.jpg') no-repeat center center / cover"></figcaption>
                                </figure>
                                <h3 class="_w90-pad5 _flex">
                                    <i class="car-rental-ico-calendar"></i>
                                    1397/4/23
                                </h3>
                                <p class="_w90-pad5">بسیاری از بیماران، پیش از ماه مبارک رمضان یا در این ماه تحت عمل جراحی قرار میگیرند و در مورد انجام فریضه روزه داری سوالاتی برایشان مطرح میشود. به عنوان یک اصل کلی عمل جراحی یک استرس بزرگ برای بدن تلقی میشود و تامین انرژی و مواد پروتئینی کافی به دلیل افزایش نیاز بدن در</p>
                                <span class="_position-a _trans arrow-art car-rental-ico-dots-three-horizontal"></span>
                            </a>
                        </article>
                        <article class="art-b-c">
                            <a title="" href="/DetailArticle.aspx" class="_flex _dir-align-r _position-r">
                                <h2 class="_flex _w90-pad5 _fnt-fa">
                                    <i class="car-rental-ico-document-fill"></i>
                                    تومور های بدخیم مغز
                                </h2>
                                <figure class="_w100">
                                    <figcaption class="_w100 _h100 _trans" style="background: #252525 url('/Img_Videos/img/Brain.jpg') no-repeat center center / cover"></figcaption>
                                </figure>
                                <h3 class="_w90-pad5 _flex">
                                    <i class="car-rental-ico-calendar"></i>
                                    1397/4/23
                                </h3>
                                <p class="_w90-pad5">بسیاری از بیماران، پیش از ماه مبارک رمضان یا در این ماه تحت عمل جراحی قرار میگیرند و در مورد انجام فریضه روزه داری سوالاتی برایشان مطرح میشود. به عنوان یک اصل کلی عمل جراحی یک استرس بزرگ برای بدن تلقی میشود و تامین انرژی و مواد پروتئینی کافی به دلیل افزایش نیاز بدن در</p>
                                <span class="_position-a _trans arrow-art car-rental-ico-dots-three-horizontal"></span>
                            </a>
                        </article>
                        <article class="art-b-c">
                            <a title="" href="/DetailArticle.aspx" class="_flex _dir-align-r _position-r">
                                <h2 class="_flex _w90-pad5 _fnt-fa">
                                    <i class="car-rental-ico-document-fill"></i>
                                    تومور های بدخیم مغز
                                </h2>
                                <figure class="_w100">
                                    <figcaption class="_w100 _h100 _trans" style="background: #252525 url('/Img_Videos/img/Brain.jpg') no-repeat center center / cover"></figcaption>
                                </figure>
                                <h3 class="_w90-pad5 _flex">
                                    <i class="car-rental-ico-calendar"></i>
                                    1397/4/23
                                </h3>
                                <p class="_w90-pad5">بسیاری از بیماران، پیش از ماه مبارک رمضان یا در این ماه تحت عمل جراحی قرار میگیرند و در مورد انجام فریضه روزه داری سوالاتی برایشان مطرح میشود. به عنوان یک اصل کلی عمل جراحی یک استرس بزرگ برای بدن تلقی میشود و تامین انرژی و مواد پروتئینی کافی به دلیل افزایش نیاز بدن در</p>
                                <span class="_position-a _trans arrow-art car-rental-ico-dots-three-horizontal"></span>
                            </a>
                        </article>
                        <article class="art-b-c">
                            <a title="" href="/DetailArticle.aspx" class="_flex _dir-align-r _position-r">
                                <h2 class="_flex _w90-pad5 _fnt-fa">
                                    <i class="car-rental-ico-document-fill"></i>
                                    تومور های بدخیم مغز
                                </h2>
                                <figure class="_w100">
                                    <figcaption class="_w100 _h100 _trans" style="background: #252525 url('/Img_Videos/img/Brain.jpg') no-repeat center center / cover"></figcaption>
                                </figure>
                                <h3 class="_w90-pad5 _flex">
                                    <i class="car-rental-ico-calendar"></i>
                                    1397/4/23
                                </h3>
                                <p class="_w90-pad5">بسیاری از بیماران، پیش از ماه مبارک رمضان یا در این ماه تحت عمل جراحی قرار میگیرند و در مورد انجام فریضه روزه داری سوالاتی برایشان مطرح میشود. به عنوان یک اصل کلی عمل جراحی یک استرس بزرگ برای بدن تلقی میشود و تامین انرژی و مواد پروتئینی کافی به دلیل افزایش نیاز بدن در</p>
                                <span class="_position-a _trans arrow-art car-rental-ico-dots-three-horizontal"></span>
                            </a>
                        </article>
                        <article class="art-b-c">
                            <a title="" href="/DetailArticle.aspx" class="_flex _dir-align-r _position-r">
                                <h2 class="_flex _w90-pad5 _fnt-fa">
                                    <i class="car-rental-ico-document-fill"></i>
                                    تومور های بدخیم مغز
                                </h2>
                                <figure class="_w100">
                                    <figcaption class="_w100 _h100 _trans" style="background: #252525 url('/Img_Videos/img/Brain.jpg') no-repeat center center / cover"></figcaption>
                                </figure>
                                <h3 class="_w90-pad5 _flex">
                                    <i class="car-rental-ico-calendar"></i>
                                    1397/4/23
                                </h3>
                                <p class="_w90-pad5">بسیاری از بیماران، پیش از ماه مبارک رمضان یا در این ماه تحت عمل جراحی قرار میگیرند و در مورد انجام فریضه روزه داری سوالاتی برایشان مطرح میشود. به عنوان یک اصل کلی عمل جراحی یک استرس بزرگ برای بدن تلقی میشود و تامین انرژی و مواد پروتئینی کافی به دلیل افزایش نیاز بدن در</p>
                                <span class="_position-a _trans arrow-art car-rental-ico-dots-three-horizontal"></span>
                            </a>
                        </article>
                        <article class="art-b-c">
                            <a title="" href="/DetailArticle.aspx" class="_flex _dir-align-r _position-r">
                                <h2 class="_flex _w90-pad5 _fnt-fa">
                                    <i class="car-rental-ico-document-fill"></i>
                                    تومور های بدخیم مغز
                                </h2>
                                <figure class="_w100">
                                    <figcaption class="_w100 _h100 _trans" style="background: #252525 url('/Img_Videos/img/Brain.jpg') no-repeat center center / cover"></figcaption>
                                </figure>
                                <h3 class="_w90-pad5 _flex">
                                    <i class="car-rental-ico-calendar"></i>
                                    1397/4/23
                                </h3>
                                <p class="_w90-pad5">بسیاری از بیماران، پیش از ماه مبارک رمضان یا در این ماه تحت عمل جراحی قرار میگیرند و در مورد انجام فریضه روزه داری سوالاتی برایشان مطرح میشود. به عنوان یک اصل کلی عمل جراحی یک استرس بزرگ برای بدن تلقی میشود و تامین انرژی و مواد پروتئینی کافی به دلیل افزایش نیاز بدن در</p>
                                <span class="_position-a _trans arrow-art car-rental-ico-dots-three-horizontal"></span>
                            </a>
                        </article>
                    </div>
                </section>
                <uc1:FooterUserCtrl runat="server" ID="FooterUserCtrl" />
            </section>
        </section>
    </form>
</body>
</html>
