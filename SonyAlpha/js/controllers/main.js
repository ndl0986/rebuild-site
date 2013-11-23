function checkLoged(id) { if ($('#' + id).val() == 1) { $('.logined').show(); $('.notlogin').hide(); } else { $('.logined').hide(); $('.notlogin').show(); } }
function togglePopup() { $('html').toggleClass('popupmode'); }
function isPopupmode() { if ($('html').hasClass('popupmode')) { return true; } else { return false; } }
function addBreadcum() {
    var breadcum = $('#breadcum');
    var li = $('#menu_' + $('#hdfMenu').val());
    if(!li.length)li = $($('#nav').children()[0]);
    var html = '<a href="https://alpha.sony.com.vn/">Trang chủ </a>' + li.html();
    breadcum.append(html);
    breadcum.append('<div class="main_title">' + li.text() + '</div>');        
    li.addClass('active');
}
function parseShopCenter() {
    var ul = $('.template');
    if (!ul.length) {
        return false;
    } else {
        var listAlphaShop = $('.ul_list_center.template').children();
        var listShop = $('.ul_list_shop.template').children();
        var listHCM = '', listHN = '', listOrthers = '', listShopHCM = '', listShopHN = '', listShopOrthers = '';
        for (var i = 0; i < listAlphaShop.length; i++) {
            if ($(listAlphaShop[i]).attr('data-provinces') == 'TP. Hồ Chí Minh') {
                listHCM +='<li class="sonycenter_info">'+ listAlphaShop[i].innerHTML + '</li>';
            } else if ($(listAlphaShop[i]).attr('data-provinces') == 'Hà Nội') {
                listHN +='<li class="sonycenter_info">'+ listAlphaShop[i].innerHTML + '</li>';
            }else{
                listOrthers += '<li class="sonycenter_info">' + listAlphaShop[i].innerHTML + '</li>';
            }
        }
        var cHCM=0, cHN=0, cOthers=0;
        for (var i = 0; i < listShop.length; i++) {
            if ($(listShop[i]).attr('data-provinces') == 'TP. Hồ Chí Minh') {
                listShopHCM += '<li class="table_row row_' + cHCM % 2 + '">' + listShop[i].innerHTML + '</li>'; cHCM += 1;
            } else if ($(listAlphaShop[i]).attr('data-provinces') == 'Hà Nội') {
                listShopHN += '<li class="table_row row_' + cHN % 2 + '">' + listShop[i].innerHTML + '</li>'; cHN += 1;
            } else {
                listShopOrthers += '<li class="table_row row_' + cOthers % 2 + '">' + listShop[i].innerHTML + '</li>'; cOthers += 1;
            }
        }
        var html = '<div class="sony_center_city">TP. Hồ Chí Minh</div>';
        html += '<ul class="ul_list_center clearfix">' + listHCM + '</ul>';
        html += '<div class="button_viewmore ico ico-arr-down">Xem đại lý khác<em></em></div><div class="effect collapse"><ul class="ul_table">';
        html += '<li class="table_header"><div>Đại lý</div><div>Địa chỉ</div><div>Giờ mở cửa</div><div>Điện thoại</div><div>Bản đồ</div></li>';
        html += listShopHCM + '</ul></div>';
        html += '<div class="sony_center_city">Hà Nội</div>';
        html += '<ul class="ul_list_center clearfix">' + listHN + '</ul>';
        html += '<div class="button_viewmore ico ico-arr-down">Xem đại lý khác<em></em></div><div class="effect collapse"><ul class="ul_table">';
        html += '<li class="table_header"><div>Đại lý</div><div>Địa chỉ</div><div>Giờ mở cửa</div><div>Điện thoại</div><div>Bản đồ</div></li>';
        html += listShopHN + '</ul></div>';
        html += '<div class="sony_center_city">Tỉnh thành khác</div>';
        html += '<ul class="ul_list_center clearfix">' + listOrthers + '</ul>';
        html += '<div class="button_viewmore ico ico-arr-down">Xem đại lý khác<em></em></div><div class="effect collapse"><ul class="ul_table">';
        html += '<li class="table_header"><div>Đại lý</div><div>Địa chỉ</div><div>Giờ mở cửa</div><div>Điện thoại</div><div>Bản đồ</div></li>';
        html += listShopOrthers + '</ul></div>';
        $('#uc_shop_template').append(html);

        $('#uc_shop_template .button_viewmore').click(function(){
            $(this).next().toggleClass('collapse');
        });
        
    }
     
}
$(document).ready(function () {
    var aspx = $('#hdfPage').val();
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
            if ($(items[i]).attr('src').indexOf('.swf') != -1) {
                var ifrm = '<embed height="360" width="698" src="' + $(items[i]).attr('src') + '" name="flashBanner" quality="high" scale="noborder" wmode="transparent" allowscriptaccess="sameDomain">';
                $(items[i]).parent().html(ifrm);
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
    if (leftBanner.length && leftBanner.find('li').length > 1) {
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

    switch (aspx) {
        case 'seller':
            parseShopCenter();
            break;
        default:
            break;
    }
});

jQuery(function () {
    $("#uc_register_btnOk").click(function () {
        doRegister();
    });
    $("#uc_login_btnOk").click(function () {
        doLogin();
    });
    $("#uc_email_fag_btnOk").click(function () {
        doSendMail();
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

function doSendMail() {
    var email = $("#uc_email_fag_txtEmail").val();
    var fullname = $("#uc_email_fag_txtFullName").val();
    var phone = $("#uc_email_fag_txtPhone").val();
    var productname = $("#uc_email_fag_txtProductName").val();
    var mailcontent = $("#uc_email_fag_txtContent").val();

    $.ajax({
        type: 'POST',
        timeout: 5000,
        url: '/service.aspx?name=sendmailfaq',
        data: { "email": email, "fullname": fullname, "phone": phone, "productname": productname, "mailcontent": mailcontent },
        success: function (response) {
            response = jQuery.parseJSON(response);
            if (response.message == "ok") {
                $("#uc_email_fag_message").text('Câu hỏi được gửi thành công!!!!');
            } else {
                $("#uc_email_fag_message").text('Câu hỏi được gửi không thành công!!!!');
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log('error');
        }
    });
}

function doPostComment() {
    var albumId = 0;
    var photoId = 0;
    var comment = '';

    $.ajax({
        type: 'POST',
        timeout: 5000,
        url: '/service.aspx?name=postcomment',
        data: { "albumid": albumId, "photoid": photoId, "comment": comment },
        success: function (response) {
            response = jQuery.parseJSON(response);
            if (response.message == "ok") {
                // flow to show result ok
            } else {
                // flow to show result not ok
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log('error');
        }
    });
}

function getProductByCategoryId() {
    var categoryId = 0;

    $.ajax({
        type: 'GET',
        timeout: 5000,
        url: '/service.aspx?name=getlistproductbycategoryid',
        data: { "categoryid": categoryId },
        success: function (response) {
            response = jQuery.parseJSON(response);
            // do some thing
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log('error');
        }
    });
}
