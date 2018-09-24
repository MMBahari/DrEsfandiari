/// <reference path="../jquery-ui-1.12.1.js" />
/// <reference path="../jquery-3.3.1.js" />
"use strict";

var DocModule = angular.module('DocModule', [
]);
DocModule.run(['$rootScope', function ($rootScope) {

}]);
bootstrapApplication();
function bootstrapApplication() {
    angular.element(document).ready(function () {
        angular.bootstrap(document, ["DocModule"]);
    });
}
angular.module('DocModule').controller('DocCtrl', ['$scope', '$rootScope', '$location', '$window', 'OnlineReserveManager', 'OnlineReservedModel', 'PersonInfoModel', 'OnlineReservationModel', function ($scope, $rootScope, $location, $window, OnlineReserveManager, OnlineReservedModel, PersonInfoModel, OnlineReservationModel) {
    //#region
    $scope.ORM = new OnlineReservedModel();
    $scope.PersonInfo = new PersonInfoModel();
    $scope.selectedDate = null;
    $scope.number = 3;
    $scope.reserved = false;
    $scope.timeList = [];
    $scope.selectedDay = null;
    $scope.IsPatientSaved = false;
    //#endregion
    ///// Method Content
    $scope.ReservedTime = function (model) {
        //$scope.ORM = model;
        //if ($scope.ORM.IsReserved) {
        //    window.alert("این ساعت رزرو شده است.");
        //}
        //else if ($scope.ORM.WaitingToPay)
        //    window.alert("این ساعت در حال رزرو است، در صورتی که پس از 5 دقیقه عملیات رزرو تکمیل نشود شما قادر به رزرو این ساعت میباشید.");
        //else
            $scope.showModalNationalCode = true;
    };
    $scope.CheckedNationalCode = function (parent, model) {
        //OnlineReserveManager.pageManagerObj.CheckNationalCode(model).then(function (result) {
        //    if (result.data.d) {
        //        parent.showInfo = true;
        //        parent.IsPatientSaved = true;
        //    }
        //    else {
        //        parent.showInfo = false;
        //        parent.IsPatientSaved = false;
        //    }
        //});
        parent.PersonInfo = new PersonInfoModel();
        parent.PersonInfo.NationalCode = model.NationalCode;
        parent.showModalReg = true;
    };
    $scope.ReserveTime = function (parent, patientModel) {
        var model = new OnlineReservationModel();
        model.ReserveDateTime = new OnlineReservedModel;
        model.ReserveDateTime.Date = parent.ORM.Date;
        model.ReserveDateTime.Time = parent.ORM.Time;
        model.ReserveDateTime.IsReserved = parent.ORM.IsReserved;
        model.PatientItem = patientModel;
        //OnlineReserveManager.pageManagerObj.ReserveTime(model, parent.IsPatientSaved).then(function (result) {
        //    alert(result.data.d);
        //    var url = "/نتیجه-رزرو-وقت-اینترنتی/دکتر-قاسم-اسحاقی" + "/nc_" + result.data.d.PatientItem.NationalCode + '/id_' + result.data.d.Id;
        //    window.location = "/نتیجه-رزرو-وقت-اینترنتی/دکتر-قاسم-اسحاقی" + "/nc_" + result.data.d.PatientItem.NationalCode + '/id_' + result.data.d.Id;
        //});
        OnlineReserveManager.pageManagerObj.ReserveTime(model, parent.IsPatientSaved).then(function (result) {
            //$scope.$apply(function () { $location.path("http://localhost:43852/SendToBank.aspx?token=" + result.data.d[0] + "&val2=" + result.data.d[1]); });
            //$location.path("http://localhost:43852/SendToBank.aspx?token=" + result.data.d[0] + "&val2=" + result.data.d[1]);


            //$window.location.href = "http://localhost:43852/SendToBank.aspx?token=" + result.data.d[0];
            $window.location.href = "http://kamargardan.com/SendToBank.aspx?token=" + result.data.d[0];
        });
    };
    $scope.alertTest = function () {
        var k = 3;
    };

    ///// End Method Content
}]).directive('persiandatepickersDf', ['$rootScope', 'OnlineReserveManager', function ($rootScope, OnlineReserveManager) {
    return {
        restrict: 'A',
        require: 'ngModel',
        controller: 'DocCtrl',
        link: function (scope, element, attrs, ngModelCtrl) {
            $(function () {
                var dateToday = new Date();
                dateToday.setDate(dateToday.getDate() + 1);
                element.datepicker({
                    numberOfMonths: scope.number,
                    minDate: dateToday,
                    dateFormat: 'yy/mm/dd',
                    firstDay: 6,
                    onSelect: function (date) {
                        scope.$apply(function () {
                            //OnlineReserveManager.pageManagerObj.CheckTime(date).then(function (result) {
                            //    scope.timeList = result.data.d;
                            //    //$scope.ORM.Date = date;
                            //});
                            var date1 = element.datepicker('getDate');
                            var seldate = date1.getDay();
                            var weekday = new Array();
                            weekday[0] = "شنبه";
                            weekday[1] = "یکشنبه";
                            weekday[2] = "دوشنبه";
                            weekday[3] = "سه شنبه";
                            weekday[4] = "چهار شنبه";
                            weekday[5] = "پنج شنبه";
                            weekday[6] = "جمعه";
                            scope.selectedDay = weekday[seldate];
                        });
                    },
                    beforeShowDay: function (date) {
                        var unavailableDates = ["9-8-2018", "11-8-2018", "12-8-2018"];
                        var day = date.getDay();

                        var m = date.getMonth();
                        var d = date.getDate();
                        var y = date.getFullYear();
                        var dd = y + '/' + (m + 1) + '/' + d;
                        return [(day != 1 && day != 4 && day != 5 && dd != "1397/5/27" && dd != "1397/5/28" && dd != "1397/5/30" && dd != "1397/5/31"), ''];
                    }
                });
            });
        }
    }
}]).directive('modalLoginReg', ['$rootScope', function ($rootScope) {
    return {
        restrict: 'E',
        controller: 'DocCtrl',
        link: function (scope, element, attrs) {
        }
    }
}]).factory("OnlineReserveManager", ['$http', '$rootScope', '$q', function ($http, $rootScope, $q) {
    var pageManagerObj = {
        //#region save content
        CheckTime: function (date) {
            return $http({
                method: 'POST',
                url: "/KGWS.asmx/GetDayReservation",
                data: JSON.stringify({ date: date }),
                headers: { 'Content-Type': 'application/json' }
            });
        },
        CheckNationalCode: function (model) {
            return $http({
                method: 'POST',
                url: "/KGWS.asmx/CheckNationalCode",
                data: JSON.stringify({ NationalCode: model.NationalCode }),
                headers: { 'Content-Type': 'application/json' }
            });
        },
        ReserveTime: function (model, IsPatientSaved) {
            var info = {};
            info.Name = model.PatientItem.Name;
            info.Family = model.PatientItem.Family;
            info.Mobile = model.PatientItem.Mobile;
            info.NationalCode = model.PatientItem.NationalCode;
            info.Description = model.PatientItem.Description;
            info.Date = model.ReserveDateTime.Date;
            info.Time = model.ReserveDateTime.Time;
            if (!IsPatientSaved) {
                if (!info.Name || !info.Family || !info.Mobile || !info.NationalCode) {
                    window.alert('لطفا تمامی فیلد ها را پر نمایید.');
                }
                else {
                    return $http({
                        method: 'POST',
                        url: "/KGWS.asmx/ReserveTime",
                        data: JSON.stringify(info),
                        headers: { 'Content-Type': 'application/json' }
                    });
                }
            }
            else {
                return $http({
                    method: 'POST',
                    url: "/KGWS.asmx/ReserveTime",
                    data: JSON.stringify(info),
                    headers: { 'Content-Type': 'application/json' }
                });
            }
        },
        SendToBank: function () {
            var info = {};
            info.Name = model.PatientItem.Name;
            info.Family = model.PatientItem.Family;
            info.Mobile = model.PatientItem.Mobile;
            info.NationalCode = model.PatientItem.NationalCode;
            info.Date = model.ReserveDateTime.Date;
            info.Time = model.ReserveDateTime.Time;


            return $http({
                method: 'POST',
                url: "/KGWS.asmx/ReserveTime",
                data: JSON.stringify(info),
                headers: { 'Content-Type': 'application/json' }
            });


        }
    };
    return { pageManagerObj: pageManagerObj }
}]).factory('OnlineReservedModel', [function () {
    var OnlineReservedModel = function (model) {
        var _model = this;
        if (!model) {
            _model.Time = null;
            _model.Date = null;
            _model.DayOfWeekName = null;
            _model.IsReserved = null;
        }
        else
            _model = model;
    };
    return OnlineReservedModel;
}]).factory('PersonInfoModel', [function () {
    var PersonInfoModel = function (model) {
        var _model = this;
        if (!model) {
            _model.Id = null;
            _model.Name = null;
            _model.Family = null;
            _model.NationalCode = null;
            _model.Mobile = null;
            _model.Description = null;
        }
        else
            _model = model;
    };
    return PersonInfoModel;
}]).factory('OnlineReservationModel', [function () {
    var OnlineReservationModel = function (model) {
        var _model = this;
        if (!model) {
            _model.Id = null;
            _model.PatientItem = {};
            _model.ReserveDateTime = {};
        }
        else
            _model = model;
    };
    return OnlineReservationModel;
}]);
$(document).ready(function () {
    _setContent();
    _runBanner();
    _ShowMaps();
    _setHContactMap();
    _showMenuContent();

});
$(window).scroll(function () {
    if ($(window).scrollTop() + $(window).height() == $(document).height()) {
        $(".arrow-2").addClass("change-bg");
    }
    else
        $(".arrow-2").removeClass("change-bg");
});
var _setContent = function () {
    var winH = window.innerHeight;
    $(".base-h-content").css({
        top: winH,

    })
};
var _runBanner = function () {
    var swiper = new Swiper('.home-swiper', {
        effect: 'fade',
        autoplay: {
            delay: 6000,
            disableOnInteraction: false,
        },
        speed: 1000,
        loop: true,
    });
};
var _ShowMaps = function () {
    $('.map-ico').on('click', function () {
        if ($('._google-map-sec').hasClass("show-map-sec"))
            $('._google-map-sec').removeClass("show-map-sec").addClass('remove-map-sec');
        else
            $('._google-map-sec').addClass("show-map-sec").removeClass('remove-map-sec');
    });
};
var _setHContactMap = function () {
    var winH = window.innerHeight;
    $(".map-contact").css({
        height: winH - 69,

    }); $(".arrow-2").addClass("change-bg");
};
var _showMenuContent = function () {
    $('.spn-menu-arrow').on('click', function () {
        if (!$('.base-menu').hasClass("_showMenu")) {
            $(".base-menu").css(
                {
                    right: 0,
                    width: "225px",
                }).addClass("_showMenu");
            $(".arrow-1").css(
                {
                    right: "195px",
                });
        }
        else {
            $(".base-menu").css(
                {
                    right: "-100%",
                }).removeClass("_showMenu");
            $(".arrow-1").css(
                {
                    right: 0,
                });
        }
    });
};

