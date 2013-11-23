function checkLoged(id) { if ($('#' + id).val() == 1) { $('.logined').show(); $('.notlogin').hide(); } else { $('.logined').hide(); $('.notlogin').show(); } }
function togglePopup() { $('html').toggleClass('popupmode'); }
function isPopupmode() { if ($('html').hasClass('popupmode')) { return true; } else { return false; } }
function addBreadcum() {
    var breadcum = $('#breadcum');
    var li = $('#menu_' + $('#hdfMenu').val());
    !li.length && (li = $($('#nav').children()[0]));
    li.addClass('active');
    var html = '<a href="https://alpha.sony.com.vn/">Trang chủ </a>' + li.html();
    breadcum.append(html);
    breadcum.append('<div class="main_title">' + li.text() + '</div>');
}
$(document).ready(function () {
    checkLoged('isLoged');
    addBreadcum();
    var mainBanner = $('.banner_container');
    var fluidBanner = $('.banner_container.type_0'), leftBanner = $('.banner_container.type_1'), rightBanner = $('.banner_container.type_2');
    if (mainBanner.hasClass('type_0') || mainBanner.hasClass('type_1')) {
        var items = mainBanner.find('.item');
        for (var i = 0; i < items.length; i++) {
            if ($(items[i]).attr('src').indexOf('youtube') != -1) {
                var ifrm = $('<iframe></iframe>');
                ifrm.attr("src", $(items[i]).attr('src') + '?wmode=transparent').width('100%');
                $(items[i]).replaceWith(ifrm);
            }
        };
    }
    if (fluidBanner.length) {
        fluidBanner.addClass('main-slider');
        fluidBanner.children().addClass("fluid-slider").bxSlider({
            slideWidth: 930,
            minSlides: 1,
            maxSlides: 1,
            controls: true,
            pager: false,
            auto: true,
            speed: 600,
            useCSS: true
        });
    }
    if (leftBanner.length) {
        leftBanner.addClass('theme-default').children().nivoSlider({
            effect: "random",
            slices: 15,
            boxCols: 8,
            boxRows: 4,
            animSpeed: 500,
            pauseTime: 3000,
            startSlide: 0,
            directionNav: false,
            directionNavHide: true,
            controlNav: true,
            controlNavThumbs: false,
            controlNavThumbsFromRel: false,
            keyboardNav: true,
            pauseOnHover: true,
            captionOpacity: 0.5,
            manualAdvance: false
        });
    }
});

jQuery(function () {
    $("#uc_register_btnOk").click(function () {
        doRegister();
    });
    $("#uc_login_btnOk").click(function () {
        doLogin();
    });
});

function doRegister() {
    var usn = $("#uc_register_txtUserName").val();
    var pass = $("#uc_register_txtPWD").val();
    var pass1 = $("#uc_register_txtPWD1").val();
    var fullname = $("#uc_register_txtFullName").val();
    if (pass != pass1) {
        alert('Mật khẩu không trùng khớp!!!!!');
        return false;
    }

    $.ajax({
        type: 'POST',
        timeout: 5000,
        url: '/service.aspx?name=register',
        data: { "username": usn, "password": pass, "fullname": fullname },
        success: function (response) {
            response = jQuery.parseJSON(response);
            if (response.message == "ok") {
                alert('Đăng ký thành công!!!!');
            } else {
                alert('Đăng ký không thành công!!!!');
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log('error');
        }
    });
}

function doLogin() {
    var usn = $("#uc_login_txtUserName").val();
    var pass = $("#uc_login_txtPWD").val();

    $.ajax({
        type: 'POST',
        timeout: 5000,
        url: '/service.aspx?name=login',
        data: { "username": usn, "password": pass },
        success: function (response) {
            response = jQuery.parseJSON(response);
            if (response.message == "ok") {
                alert('Đăng nhập thành công!!!!');
            } else {
                alert('Đăng nhập không thành công!!!!');
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log('error');
        }
    });
}