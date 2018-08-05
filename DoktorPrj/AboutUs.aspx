<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="DoktorPrj.AboutUs" %>

<%@ Register Src="~/MenuUserCtrl.ascx" TagPrefix="uc1" TagName="MenuUserCtrl" %>
<%@ Register Src="~/FooterUserCtrl.ascx" TagPrefix="uc1" TagName="FooterUserCtrl" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AboutUs Neurologist Project</title>
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
            <i class="_position-f arrow-1">
                <span class="car-rental-ico-menu spn-menu-arrow"></span>
            </i>
            <i class="_position-f arrow-2 _trans">
                <span class="car-rental-ico-mapmarker map-ico _position-a"></span>
            </i>
            <section class="_flex _position-a base-aboutus">
                <section class="_flex _w100 t-ab-c">
                    <h1>درباره دکتر رویا اسفندیاری</h1>
                </section>
                <section class="_w100 ab-body-content _position-r">
                    <p class="p-ab _flex">
                        <span>به نام آرامش بخش قلبها و شفا بخش جانها</span>
                        بیماری، بخش جداناپذیر زندگی بشر، و مشیت خداوند در شفای آن، هدیه ایست الهی. آرامش پس از این تلاطم زمینه ساز قدرشناسی به خاطر لحظه به لحظه زندگی سالم پس از آن خواهد بود. در اوج این اضطراب، صادقانه در کنارتان هستم؛ باشد که اراده پروردگار و اعتماد و همیاری شما و بهره گیری از علم، تجربه، هنر و تکنولوژی سبب این گشایش گردد.
                    </p>
                    <div class="_position-a arrow-ab-c">
                        <img title="#" src="http://lotusbeautyclinic.com/wp-content/uploads/2016/11/1100.400-1-460x295.jpg" />
                    </div>
                </section>
                <section class="_flex b-b-ab _position-r">
                    <h2>دکتر رویا اسفندیاری</h2>
                    <p>متولد سال ۱۳۶۰ در تهران فرزند پدر و مادری معلم است. فارغ‌التحصیل دبیرستان البرز تهران در سال ۱۳۷۸ و پذیرفته شده رشته پزشکی در دانشگاه علوم پزشکی ایران در همان سال می‌باشد. دوره هفت سال و نیم پزشکی عمومی را در این دانشگاه گذراند و با توجه به اینکه در زمره سه درصد برتر دانشجویان هم دوره خود قرار گرفت مجاز به شرکت در آزمون دستیاری شد.</p>
                    <p>با کسب رتبه ۱۱۱ در آزمون دستیاری سال ۱۳۸۶ و با توجه به علاقه وافر به رشته جراحی مغز و اعصاب و همینطور دانشگاه محل تحصیل خود، این رشته را در همین دانشگاه انتخاب کرده و دوره دستیاری خود را از شهریور ماه ۱۳۸۶ آغاز نمود.</p>
                    <p>در محضر اساتید خود در بیمارستان حضرت رسول اکرم تهران موفق شد عنوان رزیدنت برتر دانشگاه را در دو سال متوالی آخر این دوره از جمله پس از ادغام دو دانشگاه علوم پزشکی تهران و ایران بدست آورد و در آزمون بورد تخصصی جراحی مغز و اعصاب در سال ۱۳۹۱ حائز رتبه اول کشوری گردد.</p>
                    <p>پس از ۷ ماه فعالیت به عنوان هیات علمی دانشگاه علوم پزشکی مازندران، در مهر ماه ۱۳۹۲ به عنوان هیات علمی به دانشگاه علوم پزشکی ایران و بیمارستان حضرت رسول اکرم بازگشت.</p>
                    <p>
                        با پشتوانه خداوند و حمایتهای مدیر محترم گروه جراحی اعصاب دانشگاه، جناب آقای دکتر آذر و ریاست محترم بخش جراحی اعصاب بیمارستان حضرت رسول، جناب آقای دکتر کاظمی، فعالیت علمی و آموزشی ایشان سبب تحولی چشمگیر در آموزش رزیدنتی این بیمارستان شده و به عنوان معلم بالینی برتر دانشگاه انتخاب گردیدند.
رضایت و قدردانی بیماران از دکتر طبیب خوئی طی این سالها بیانگر ارتباط نزدیک و همدلی ایشان با مراجعین خود است.
در حال حاضر با تلاش وی در این بیمارستان، پیچیده‌ترین عمل های جراحی مغز و اعصاب و ستون فقرات با نتایج بسیار عالی انجام میگیرد. استفاده از آندوسکوپ در عمل های جراحی مغز و قاعده جمجمه و انجام نخستین جراحی مغز با نقشه برداری مغز در بیمار بیدار و بدون بیهوشی در این مرکز با همت و تلاش این جراح حمایتگر و پاسخگو میسر شده است.
دکتر علیرضا طبیب خوئی همواره در کنگره‌های علمی حضور فعال و موثر داشته و نقش خود را در پیشبرد علم جراحی اعصاب کشور به خوبی ایفا میکند. مقالات علمی متعددی از وی در مجلات بین‌المللی به چاپ رسیده و چندین طرح‌ علمی و پایان‌نامه‌ دستیاری با مدیریت ایشان در حال انجام است.
از دیدگاه این پزشک، جراحی نه تنها علم، بلکه هنری است که با آمیخته شدن با تجربه میتواند جان بیماران را نجات دهد. او مغز را به عنوان واسطه‌ای بین خداوند و جسم دانسته و محافظت از آن را مقدس می‌شمارد.
لوگو یا نشان بکار رفته در کنار نام دکتر علیرضا طبیب خوئی، تلاشی است از جانب ایشان برای تعریف یک هویت بصری با مفاهیم متفاوت و عمیق هنری و علمی .
                    </p>
                </section>
                <section class="_w100 _position-r">
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
                </section>
                <uc1:FooterUserCtrl runat="server" ID="FooterUserCtrl" />
            </section>
        </section>
    </form>
</body>
</html>
