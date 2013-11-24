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

function parseSonyCenterSlide(){
    //console.log(sonyCenterImages);
    var target = $('#sonyCenterSlides');
    var html='',html2='';
    html= '<ul class="bxslider">';
    html2='<div id="bxpager">';
    for(var i=0;i<sonyCenterImages.length;i++){
        html+='<li><img src="'+sonyCenterImages[i]+'" /></li>';
        html2+='<a data-slide-index="'+i+'" href=""><img src="'+sonyCenterImages[i]+'" /></a>';
    }
    html+='</ul>';
    html2+='</div>';
    target.append(html).append(html2);
    $('.bxslider').bxSlider({pagerCustom: '#bxpager'});
}

function parseAlbumSlide(){
    var items = $('#UpdatePanelMain .ul_list_albums img');
    var slide = $('<div></div>');
    $('#albumSlide').append(slide);
    if(items.length){
        slide.append(items.clone());
        slide.addClass('theme-default').nivoSlider({
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
}

function parseComments(data){
    //console.log($.parseJSON(data.message));
    var ul=$('#ulComments');
    ul.html('');
    var cmt = $.parseJSON(data.message);
    var html='';
    for(var i=0;i<cmt.length;i++){
        html+= '<li id="comment_'+ cmt[i].Id +'" class="clearfix"><a href="javascript:void(0);" class="avatar"></a><div class="comment_content"><div class="user_name">'
        html+= cmt[i].UserName + '</div><div class="comment_detail">' + cmt[i].Comment + '</div><div class="comment_time">' + convertTime(cmt[i].Created.replace('/Date(','').replace(')/','')) + '</div></div></li>'
    }
    ul.append(html);
}

function convertTime(time){
    var d = new Date(parseFloat(time));
    var result=[d.getDate(),d.getMonth() + 1,d.getFullYear()]
    var t = [d.getHours(),curr_m = d.getMinutes(),curr_s = d.getSeconds()];
    return result.join('-') + ' ' + t.join(':');
}


function parseProductCategory(data){
    var targetContent = $('#loadContent');
    var catContent = $('#categoryContent');
    var html=$.parseJSON(data.message);
    catContent.html(html.Description);
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
        case 'sellerdetail':
            parseSonyCenterSlide();
            $('.shop-desc-content').slimScroll({
                height: '358px',
                alwaysVisible: true
            });
            break;
        case 'album':
            parseAlbumSlide();
            break;
        case 'albumdetail':
            parseAlbumSlide();
            break;
        case 'photo':
            var albumId = $('#hdfAlbumId').val(),photoId = $('#imgMain').attr('data-id');
            getListComments(photoId,function(data){parseComments(data)});

            $('#btnPostComment').click(function(){
                var html = $('#txtComment').val();
                doPostComment(albumId,photoId ,html,function(){
                    $('#txtComment').val('');
                    getListComments(photoId,function(data){parseComments(data)});
                });
            });

            break;
        case 'productcate':
            $('#product_categories .title_banner_text a').click(function(e){
                $(this).parents('.category_item').click();
                return false;
            });
            $('#product_categories .category_item').click(function(e){
                var productcateId = $(this).attr('data-id');
                getCategoryById(productcateId,function(data){
                    parseProductCategory(data);
                });
                getProductByCategoryId(productcateId,function(data){
                    console.log(data);
                });
            });
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
    var capcha = $("#uc_register_txtCapcha").val();
    var capchaBase = $("#uc_register_hdfCapcha").val();
    if (capcha != capchaBase) {
        alert('Sai mã bảo mật!!!!!');
        return false;
    }
    var phone = $("#uc_register_txtPhone").val();
    if (!isPhonenumber(phone)) {
        alert('Số điện thoại không hợp lệ!!!!!');
        return false;
    }
    var email = $("#uc_register_txtEmail").val();
    if (!isEmail(email)) {
        alert('Email không hợp lệ!!!!!');
        return false;
    }
    $.ajax({
        type: 'POST',
        timeout: 5000,
        url: '/service.aspx?name=register',
        data: { "username": usn, "password": pass, "fullname": fullname, "phone": phone, "email": email },
        success: function (response) {
            response = jQuery.parseJSON(response);
            if (response.message == "ok") {
                alert('Đăng ký thành công!!!! Email xác nhận đã được gửi tới ' + email);
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

function doPostComment(albumId,photoId,comment,callback) {
    //console.log('doPostComment');
    $.ajax({
        type: 'POST',
        timeout: 5000,
        url: '/service.aspx?name=postcomment',
        data: { "albumid": albumId, "photoid": photoId, "comment": comment },
        success: function (response) {
            response = jQuery.parseJSON(response);
            if($.isFunction(callback))callback(response);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log('error');
        }
    });
}

function getProductByCategoryId(categoryId,callback) {
    $.ajax({
        type: 'GET',
        timeout: 5000,
        url: '/service.aspx?name=getlistproductbycategoryid&categoryid=' + categoryId,
        //data: { "categoryid": categoryId },
        success: function (response) {
            response = jQuery.parseJSON(response);
            if($.isFunction(callback))callback(response);
            // do some thing
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log('error');
        }
    });
}

function getProductById() {
    var productId = 0;

    $.ajax({
        type: 'GET',
        timeout: 5000,
        url: '/service.aspx?name=getproductbyid&productid=' + productId,
        //data: { "productd": productId },
        success: function (response) {
            response = jQuery.parseJSON(response);
            // do some thing
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log('error');
        }
    });
}

function getListComments(photoId,callback){
    $.ajax({
        type: 'GET',
        timeout: 5000,
        url: '/service.aspx?name=getlistcomment&photoid=' + photoId,
        //data: { "productd": productId },
        success: function (response) {
            response = jQuery.parseJSON(response);
            if($.isFunction(callback))callback(response);
            // do some thing
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log('error' + textStatus);
        }
    });
}

function getCategoryById(categoryId,callback) {
    $.ajax({
        type: 'GET',
        timeout: 5000,
        url: '/service.aspx?name=getproductcategorybyid&categoryid=' + categoryId,
        //data: { "categoryid": categoryId },
        success: function (response) {
            response = jQuery.parseJSON(response);
            if($.isFunction(callback))callback(response);
            // do some thing
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log('error');
        }
    });
}

function isEmail(email) {
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if (!filter.test(email)) {
        return false;
    }
    return true;
}

function isPhonenumber(input)
{
//  var phoneno = /^\d{10}$/;
//  if(input.value.match(phoneno)) {
//    return true;
//  }
    //  return false;
    return true;
}