window._user = null;
function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}
function getCookie(c_name){
    var c_value = document.cookie;
    var c_start = c_value.indexOf(" "+c_name+"=");
    if(c_start==-1)c_start=c_value.indexOf(c_name+"=");
    if(c_start==-1){
        c_value=null;
    }else{
        c_start=c_value.indexOf("=",c_start)+1;
        var c_end = c_value.indexOf(";",c_start);
        if(c_end==-1)c_end=c_value.length;
        c_value = unescape(c_value.substring(c_start,c_end));
    }
    return c_value;
}
function getUserInfoFromCookie(){
    var userInfor = getCookie('SonyAlpha');
    var user = {};
    if(userInfor==null) return null;
    var arr = userInfor.split('&');
    user.username = arr[0].split('=')[1];
    user.group = arr[1].split('=')[1];
    user.fullname = arr[2].split('=')[1];
    window._user = user;
    return window._user;
}
function checkLoged() { 
    var isLoged = getUserInfoFromCookie();
    //console.log(getCookie('SonyAlpha'));
    if (isLoged!=null) { 
        $('.logined').show(); 
        $('.not_logined').hide();
    $('#viewProfile').attr('href','/profile.aspx');
    } else { 
        $('.logined').hide(); 
        $('.not_logined').show();
    } 
}
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
            } else if ($(listShop[i]).attr('data-provinces') == 'Hà Nội') {
                listShopHN += '<li class="table_row row_' + cHN % 2 + '">' + listShop[i].innerHTML + '</li>'; cHN += 1;

            } else {
                //console.log($(listShop[i]));
                listShopOrthers += '<li class="table_row row_' + cOthers % 2 + '">' + listShop[i].innerHTML + '</li>'; cOthers += 1;
            }
        }

        var pId = getParameterByName('pId');
        if(pId=='' || pId==0){
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
        }else{
            var html = '<div class="sony_center_city">'+$('#ddlProvince option:selected').text()+'</div>';
            if(listHCM!=''){html += '<ul class="ul_list_center clearfix">' + listHCM + '</ul>';}
            if(listShopHCM!=''){
                html += '<div class="effect"><ul class="ul_table">';
                html += '<li class="table_header"><div>Đại lý</div><div>Địa chỉ</div><div>Giờ mở cửa</div><div>Điện thoại</div><div>Bản đồ</div></li>';
                html += listShopHCM + '</ul></div>';
            }
            if(listOrthers!=''){html += '<ul class="ul_list_center clearfix">' + listOrthers + '</ul>';}
            if(listShopOrthers!=''){
                html += '<div class="effect"><ul class="ul_table">';
                html += '<li class="table_header"><div>Đại lý</div><div>Địa chỉ</div><div>Giờ mở cửa</div><div>Điện thoại</div><div>Bản đồ</div></li>';
                html += listShopOrthers + '</ul></div>';
            }
            if(listHN!=''){html += '<ul class="ul_list_center clearfix">' + listHN + '</ul>';}
            if(listShopHN!=''){
                html += '<div class="effect"><ul class="ul_table">';
                html += '<li class="table_header"><div>Đại lý</div><div>Địa chỉ</div><div>Giờ mở cửa</div><div>Điện thoại</div><div>Bản đồ</div></li>';
                html += listShopHN + '</ul></div>';
            }
            $('#uc_shop_template').html(html);
        }
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

function getRandomArrayElements(arr, count) {
    var randoms = [], clone = arr.slice(0);
    for (var i = 0, index; i < count; ++i) {
        index = Math.floor(Math.random() * clone.length);
        randoms.push(clone[index]);
        clone[index] = clone.pop();
    }
    return randoms;
}

function parseAlbumSlide(){
    var items = $('#UpdatePanelMain .ul_list_albums img');
    var slide = $('<div></div>');
    $('#albumSlide').append(slide);
    if(items.length){
        if(items.length<=5){
            slide.append(items.clone());
        }else{
            var arr = [];
            for(var i=0;i<items.length;i++){arr.push(items[i]);}
            var itemsClone = getRandomArrayElements(arr,5);
            for(var i=0;i<itemsClone.length;i++){
                slide.append($(itemsClone[i]).clone());
            }
            
        }
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
    //console.log(cmt);
    var html='';
    for(var i=0;i<cmt.length;i++){
        html+= '<li id="comment_'+ cmt[i].Id +'" data-user="'+cmt[i].UserName+'" class="clearfix"><a href="javascript:void(0);" class="avatar"></a><div class="comment_content"><div class="user_name">'
        html+= cmt[i].UserName + '</div><div class="comment_detail">' + cmt[i].Comment + '</div><div class="comment_time">' + convertTime(cmt[i].Created.replace('/Date(','').replace(')/','')) + '</div></div><a class="btn_edit"><span class="icon icon57" onClick="updateComment('+cmt[i].Id+')"></span></a><a class="btn_delete"><span class="icon icon56" onClick="deleteComment('+cmt[i].Id+')"></span></a></li>'
    }
    ul.append(html);
}

function updateComment(id){
    var li = $('#comment_'+id);
    if(window._user==null || window._user.username!=li.attr('data-user')){alert('Bạn không có quyền sửa bình luận này');return false;}
    li.addClass('editmode');
    var currentContent = li.find('.comment_detail');
    var editContent = $('<textarea class="comment_edit_area noresize"></textarea>');
    var btnUpdateOk = $('<a class="btn flat orange floatright">OK</a>');
    var btnUpdateCancel = $('<a class="btn flat orange floatright">Cancel</a>');
    editContent.val(currentContent.text());
    currentContent.after(btnUpdateOk).after(btnUpdateCancel).after(editContent).addClass('hidden');
    btnUpdateCancel.click(function(){
        currentContent.removeClass('hidden');
        btnUpdateOk.remove();
        editContent.remove();
        $(this).remove();
        li.removeClass('editmode');
    });
    btnUpdateOk.click(function(){
        doUpdateComment(id,editContent.val(),function(){
            currentContent.text(editContent.val()).removeClass('hidden');
            editContent.remove();
            btnUpdateOk.remove();
            btnUpdateCancel.remove();
            li.removeClass('editmode');
        });
    });
}

function deleteComment(id){
    var li = $('#comment_'+id);
    if(window._user==null || window._user.username!=li.attr('data-user')){alert('Bạn không có quyền xóa bình luận này');return false;}
    doDeleteComment(id,function(){
        li.remove();
    });
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
    $('#productContent').slideUp(300);
}

function parseProductsList(data){
    //var targetContent = $('#loadContent');
    var catContent = $('#listItems');
    var items=$.parseJSON(data.message);
    var html='<ul class="clearfix">';
    for(var i=0;i<items.length;i++){
        if((i+1)%3==0){
            html+='<li class="third">';
        }else{
            html+='<li>';
        }
        html+='<div class="clearfix"><a href="javascript:void(0);" onClick="loadProduct('+items[i].Id+')" class="product_img_wrapper"><img class="product_img" src="/upload/image/product/'+items[i].ImageUrl+'" alt="" /></a>';
        html+='<div class="text"><a href="javascript:void(0);" onClick="loadProduct('+items[i].Id+')">'+ items[i].Name +'</a><div class="price_title">Giá bán lẻ </div><div class="price">' + items[i].Price + ' VNĐ*</div></div>';
        html+='<div class="cover"><a href="javascript:void(0);" onClick="loadProduct('+items[i].Id+')"><img src="'+ items[i].ProductCover +'" alt=""></a></div></li>';
    }
    html+='</ul>';
    catContent.html(html).slideDown(300);
}

function parseProductItem(data){
    //var targetContent = $('#loadContent');
    var catContent = $('#productContent');
    var html=$.parseJSON(data.message);
    $('#listItems').hide();
    var divInfo = $('<div class="product_info"></div>');
    var divSlide = $('<div class="product_slide"></div>');   
    var item = $.parseJSON(data.message);
    var str = '<div class="img_product"><img alt="" src="/upload/image/product/' + item.ImageUrl + '"/></div><div class="title_detail">'+ item.Name +'</div>';
    str+='<table><tbody><tr><td class="td_left">Tiêu cự:</td><td class="td_right">'+item.FStop+'</td></tr>';
    str+='<tr><td class="td_left">Khẩu độ mở tối đa:</td><td class="td_right">'+item.FMax+'</td></tr>';
    str+='<tr><td class="td_left">Khẩu độ mở tối thiểu:</td><td class="td_right">'+item.FMin+'</td></tr>';
    str+='<tr><td class="td_left">Cơ cấu kính:</td><td class="td_right">'+item.LensDetails+'</td></tr>';
    str+='<tr><td class="td_left">Số lá khẩu:</td><td class="td_right">'+item.NumOfPiece+'</td></tr>';
    str+='<tr><td class="td_left">Khoảng cách tối thiểu:</td><td class="td_right">'+item.MinDistance+'</td></tr>';
    str+='<tr><td class="td_left">Đường kính ống kính:</td><td class="td_right">'+item.LensDiameter+'</td></tr>';
    str+='</tbody></table>';
    divInfo.html(str);

    getListPhotos(item.AlbumId,function(data){
        parseLoadProductPhotos(data,divSlide);
    });

    //divSlide.html(slide);
    catContent.html(divSlide).append(divInfo).slideDown(300);
    
}

function parseLoadProductPhotos(data,target){
    var items=$.parseJSON(data.message);
    var html='',html2='';
    html= '<ul class="bxslider">';
    html2='<div id="bxpager">';
    for(var i=0;i<items.length;i++){
        html+='<li><img src="'+items[i].FileName+'" /></li>';
        html2+='<a data-slide-index="'+i+'" href=""><img src="'+items[i].FileName+'" /></a>';
    }
    html+='</ul>';
    html2+='</div>';
    result = html + html2;

    target.html(result);
    $('.bxslider').bxSlider({pagerCustom: '#bxpager',auto:true});
}

function loadProduct (id){
    getProductById(id,function(data){
        parseProductItem(data);
    });
}

function showLoading(target){
    if(!$('#loading').length){target.prepend($('<div id="loading"><div class="loader"></div></div>'));}
    $('#loading').show();
}

function hideLoading(){
    $('#loading').hide();
}

function AddThis(){
    var html ='<li><div><a href="https://link.apps.zing.vn/share?u=https://alpha.sony.com.vn/&amp;t=Sony Alpha" target="_blank"></a><!-- AddThis Button BEGIN --><a class="addthis_button" href="https://www.addthis.com/bookmark.php?v=250&amp;pubid=xa-4f476065601b5428"><img src="https://s7.addthis.com/static/btn/v2/lg-share-en.gif" width="125" height="16" alt="Bookmark and Share" style="border:0"></a><script type="text/javascript" src="https://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4f476065601b5428" tabindex="1000"></script><div id="_atssh" style="visibility: hidden; height: 1px; width: 1px; position: absolute; z-index: 100000;"><iframe id="_atssh674" title="AddThis utility frame" style="height: 1px; width: 1px; position: absolute; z-index: 100000; border: 0px; left: 0px; top: 0px;" src="//s7.addthis.com/static/r07/sh142.html#iit=1385301130250&amp;tmr=load%3D1385301130016%26core%3D1385301130094%26main%3D1385301130250%26ifr%3D1385301130250&amp;cb=0&amp;cdn=0&amp;chr=UTF-8&amp;kw=&amp;ab=-&amp;dh=alpha.sony.com.vn&amp;dr=https%3A%2F%2Falpha.sony.com.vn%2Fhome%2Falpha_shop&amp;du=https%3A%2F%2Falpha.sony.com.vn%2Fhome%2Fongkinh&amp;dt=Sony&amp;dbg=0&amp;md=0&amp;cap=tc%3D0%26ab%3D0&amp;inst=1&amp;vcl=3&amp;jsl=33&amp;prod=true&amp;lng=vi&amp;ogt=&amp;pc=men&amp;pub=xa-4f476065601b5428&amp;ssl=1&amp;sid=5292048ae15b85a5&amp;srpl=1&amp;srcs=1&amp;srd=1&amp;srf=1&amp;srx=1&amp;ver=300&amp;xck=0&amp;xtr=0&amp;og=&amp;aa=0&amp;rev=124941&amp;ct=1&amp;xld=1&amp;xd=1"></iframe></div><script type="text/javascript" src="https://s7.addthis.com/static/r07/core111.js"></script><!-- AddThis Button END --></div></li>';
    $('#nav').append(html);
}

function isEmail(email) {
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    if (!filter.test(email)) {
        return false;
    }
    return true;
}

function isPhonenumber(input){
    var phonelReg = /(\(?(\d|(\d[- ]\d))\)?[-. ]?)?(\d\.?\d\.?\d.?\d.?\d.?\d.?\d.?\d.?\d.?\d)/;
    if (input == '' || !phonelReg.test(input)) {
        return false;
    }
    return true;
}

function isNotSpecial(input) {
    var filter = /^[a-zA-Z0-9]+$/;
    if (!filter.test(input)) {
        return false;
    }
    return true;
}

function resetForm(){
    $('.form input.textbox').val('').removeClass('error');
    $('.error_message').html('');
    return true;
}

function getYoutubeid(url){
    var regExp = /^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/;
    var match = url.match(regExp);
    if (match&&match[2].length==11){
        return match[2];
    }else{
        return false;
    }
}

$(document).ready(function () {
    checkLoged();
    var aspx = $('#hdfPage').val();
    checkLoged('isLoged');
    addBreadcum();
    AddThis();
    var mainBanner = $('.banner_container');
    var fluidBanner = $('.banner_container.type_0'), leftBanner = $('.banner_container.type_1'), rightBanner = $('.banner_container.type_2');
    if (mainBanner.hasClass('type_0') || mainBanner.hasClass('type_1')) {
        var items = mainBanner.find('.item');
        for (var i = 0; i < items.length; i++) {
            if ($(items[i]).attr('src').indexOf('youtube') != -1) {
                var videoId = getYoutubeid($(items[i]).attr('src'));
                $(items[i]).attr('src','http://img.youtube.com/vi/'+videoId+'/0.jpg');
                $(items[i]).parent().attr('data-video',videoId);
            }
            if ($(items[i]).attr('src').indexOf('.swf') != -1) {
                var ifrm = '<embed height="360" width="698" src="' + $(items[i]).attr('src') + '" name="flashBanner" quality="high" scale="noborder" wmode="transparent" allowscriptaccess="sameDomain">';
                $(items[i]).parent().html(ifrm);
            }
        };
    }
    if (fluidBanner.length) {
        var iframe;
        fluidBanner.addClass('main-slider');
        var slider = fluidBanner.children().addClass("fluid-slider").bxSlider({
            slideWidth: 930,minSlides: 1,maxSlides: 1,controls: true,pager: false,auto: true,speed: 600,useCSS: true,autoControls: true,
            onSlideAfter: function($slideElement, oldIndex, newIndex){
                if(iframe!=null)iframe.remove();
                var li = $slideElement;
                var videoId = li.children().attr('data-video');
                if(videoId!==undefined){
                    iframe = $('<iframe></iframe>');
                    iframe.attr("src", 'http://www.youtube.com/embed/' + videoId + '?autohide=1&wmode=transparent&autoplay=1').width('100%');
                    //$(items[i]).replaceWith(ifrm);
                    $(li.children()[0]).hide();
                    li.append(iframe);
                    $('.bx-stop').click();
                }else{
                    if($('.bx-stop').hasClass('active'))$('.bx-start').click();
                }
            }
        });
    }
    if (leftBanner.length && leftBanner.find('li').length > 1) {
        leftBanner.addClass('theme-default').children().nivoSlider({effect: "random",slices: 15,boxCols: 8,boxRows: 4,animSpeed: 500,pauseTime: 3000,startSlide: 0,directionNav: false,directionNavHide: true,controlNav: true,controlNavThumbs: false,controlNavThumbsFromRel: false,keyboardNav: true,pauseOnHover: true,captionOpacity: 0.5,manualAdvance: false});
    }

    var reg = $('#formReg');
    var sign = $('#formSign');
    var update = $('#formUpdate');
    var sendfaq = $('#formSendQuestion');
    var forgotpass = $('#formForgotpass');

    $('#hplSignup').click(function () {
        if (reg.hasClass('hide')) {
            resetForm();
            reg.removeClass('hide');
            reg.fadeIn(300);
        }
    });

    $('#hplSignin').click(function () {
        if (sign.hasClass('hide')) {
            resetForm();
            sign.removeClass('hide');
            sign.fadeIn(300);
        }
    });

    $('#hplUserupdate').click(function () {
        if (update.hasClass('hide')) {
            //resetForm();
            update.removeClass('hide');
            update.fadeIn(300);
        }
    });

    $('#hplSendFAQ').click(function () {
        if (sendfaq.hasClass('hide')) {
            resetForm();
            sendfaq.removeClass('hide');
            sendfaq.fadeIn(300);
        }
    });

    $('#uc_login_forgot_pass').click(function() {
        if (forgotpass.hasClass('hide')) {
            forgotpass.removeClass('hide');
            forgotpass.fadeIn(300);
        }
        $("#uc_login_btnCancel").click();
    });
    
    $($('.bgFormPopup').children('.close')).click(function () {
        var pop = $(this).parent();
        if (!pop.hasClass('hide')) {
            pop.fadeOut(300, function () { pop.addClass('hide') });
            //$(this).parent().addClass('hide');
        }
    });


    $('.tab_nav_item > a').click(function (e) {
        e.preventDefault();
        $('.tab_nav_item').removeClass('active');
        $(this).parent().addClass('active');
        $('.tab-content').removeClass('active');
        $('.tab-content[data-link=' + $(this).attr('href') + ']').addClass('active');
        $('.tab_title h2').text($(this).attr('data-title'));
    });

    $("#uc_register_btnOk").click(function () {
        doRegister();
    });
    $("#uc_login_btnOk").click(function () {
        doLogin();
    });
    $("#uc_email_fag_btnOk").click(function () {
        doSendMail();
    });
    $("#uc_userupdate_btnOk").click(function () {
        doUserUpdate();
    });
    $("#uc_photo_button_vote_photo").click(function () {
        doVotePhoto();
    });
    $("#uc_login_btnCancel").click(function () {
        var pop = $('#formSign');
        if (!pop.hasClass('hide')) {
            pop.fadeOut(300, function () { pop.addClass('hide'); });
        }
    });
    $("#uc_register_btnCancel").click(function () {
        var pop = $('#formReg');
        if (!pop.hasClass('hide')) {
            pop.fadeOut(300, function () { pop.addClass('hide'); });
        }
    });
    $("#uc_email_fag_btnCancel").click(function () {
        var pop = $('#formSendQuestion');
        if (!pop.hasClass('hide')) {
            pop.fadeOut(300, function () { pop.addClass('hide'); });
        }
    });
    $("#uc_login_goregister").click(function () {
        $('#hplSignup').click();$("#uc_login_btnCancel").click();
    });
    $("#uc_userforgotpass_btnOk").click(function () {
        doForgotPass();
    });

    $("#uc_userforgotpass_btnCancel").click(function () {
        var pop = $('#formForgotpass');
        if (!pop.hasClass('hide')) {
            pop.fadeOut(300, function () { pop.addClass('hide'); });
        }
    });
    
    switch (aspx) {
        case 'seller':
            parseShopCenter();
            $('#uc_seller_btnSearch').click(function(){
                window.location.href = "/seller.aspx?mId=2&pId=" + $('#ddlProvince').val();
            });
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
            if(window._user!=null)$('#uc_album_btnUpload').removeClass('hidden');
            $('#uc_album_btnSeach').click(function(){
                if($('#txtKeywords').val()!='')window.location.href = 'searchuser.aspx?key=' + $('#txtKeywords').val();
            });
            break;
        case 'searchuser':
            $('#uc_album_btnSeach').click(function(){
                if($('#txtKeywords').val()!='')window.location.href = 'searchuser.aspx?key=' + $('#txtKeywords').val();
            });        
            break;
        case 'albumdetail':
            parseAlbumSlide();
            break;
        case 'photo':
            var albumId = $('#hdfAlbumId').val(), photoId = $('#imgMain').attr('data-id');
            getListComments(photoId, function (data) { parseComments(data) });

            $('#btnPostComment').click(function () {
                if($('#txtComment').val()=='')return false;
                if(window._user==null){alert('Bạn phải đăng nhập mới có quyền bình luận');$('#txtComment').val('');return false;}
                var html = $('#txtComment').val();
                doPostComment(albumId, photoId, html, function () {
                    $('#txtComment').val('');
                    getListComments(photoId, function (data) { parseComments(data) });
                });
            });
            $('.fancybox').fancybox();
            break;
        case 'productcate':
            $('#loadContent').slideUp(0);
            var li = $('#product_categories .category_item');
            $('#product_categories .title_banner_text a').click(function (e) {
                $(this).parents('.category_item').click();
                return false;
            });
            $('#product_categories .category_item').click(function (e) {
                if ($(this).hasClass('active')) return false;
                e.preventDefault();
                $('#loadContent').slideUp(300);
                li.removeClass('active');
                $(this).addClass('active');
                showLoading($('#loadContent'));
                var productcateId = $(this).attr('data-id');
                getCategoryById(productcateId, function (data) {
                    parseProductCategory(data);
                });
                getProductByCategoryId(productcateId, function (data) {
                    parseProductsList(data);
                });
                $('#loadContent').slideDown(300);
            });
        default:
            break;
    }
});

function doRegister() {
    var isValid = true;
    $('.form input.textbox').removeClass('error');
    var usn = $("#uc_register_txtUserName").val();
    var pass = $("#uc_register_txtPWD").val();
    var pass1 = $("#uc_register_txtPWD1").val();
    var fullname = $("#uc_register_txtFullName").val();
    var errEl = $('#uc_register_mess');
    errEl.text(', ');
    if (usn=='') {
        errEl.text(errEl.text()+'Tên đăng nhập là bắt buộc, ');
        $("#uc_register_txtUserName").addClass('error');
        isValid = false;
    }else if(!isNotSpecial(usn)){
        errEl.text(errEl.text()+'Tên đăng nhập chỉ có ký tự a-Z và số, ');
        $("#uc_register_txtUserName").addClass('error');
        isValid = false;        
    }
    if (fullname=='') {
        //alert('Mật khẩu không trùng khớp!!!!!');
        errEl.text(errEl.text()+'Tên đầy đủ là bắt buộc, ');
        $("#uc_register_txtFullName").addClass('error');
        isValid = false;
    }
    if (pass != pass1 || pass=='') {
        //alert('Mật khẩu không trùng khớp!!!!!');
        errEl.text(errEl.text()+'Mật khẩu không hợp lệ, ');
        $("#uc_register_txtPWD").addClass('error');
        $("#uc_register_txtPWD1").addClass('error');
        isValid = false;
        
    }
    var capcha = $("#uc_register_txtCapcha").val();
    var capchaBase = $("#uc_register_hdfCapcha").val();
    if (capcha != capchaBase) {
        //alert('Sai mã bảo mật!!!!!');
        errEl.text(errEl.text()+'Sai mã bảo mật, ');
        $("#uc_register_txtCapcha").addClass('error');
        isValid = false;
    }
    var phone = $("#uc_register_txtPhone").val();
    if (!isPhonenumber(phone)||phone=='') {
        //alert('Số điện thoại không hợp lệ!!!!!');
        errEl.text(errEl.text()+'Số điện thoại không hợp lệ, ');
        $("#uc_register_txtPhone").addClass('error');
        isValid = false;
    }
    var email = $("#uc_register_txtEmail").val();
    if (!isEmail(email) || email=='') {
        //alert('Email không hợp lệ!!!!!');
        errEl.text(errEl.text()+'Email không hợp lệ, ');
        $("#uc_register_txtEmail").addClass('error');
        isValid = false;
    }
    var err = errEl.text();

    if(err.length>=2){err = err.substring(2,err.length-2);}
    if(err.length>=2){err= err.substring(0,err.length);}
    errEl.text(err);

    var productused = $("#uc_register_product").val();

    if(isValid == false) return false;
    errEl.text('');
    $.ajax({
        type: 'POST',
        timeout: 5000,
        url: '/service.aspx?name=register',
        data: { "username": usn, "password": pass, "fullname": fullname, "phone": phone, "email": email, "productused": productused },
        success: function (response) {
            response = jQuery.parseJSON(response);
            if (response.message == "ok") {
                alert('Đăng ký thành công!!!! Email xác nhận đã được gửi tới ' + email);
            } else if (response.message === "901") {
                alert('Đăng ký không thành công! Tên đăng nhập đã được sử dụng! Vui lòng nhập lại!');
            } else if (response.message === "902") {
                alert('Đăng ký không thành công! Email đã được sử dụng! Vui lòng nhập lại!');
            } else {
                alert('Đăng ký không thành công!!!! Vui lòng thử lại !');
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log('error');
        }
    });
}

function doUserUpdate() {
    var usn = $("#uc_userupdate_hdfUserName").val();
    var pass = $("#uc_userupdate_txtPWD").val();
    var pass1 = $("#uc_userupdate_txtPWD1").val();
    var fullname = $("#uc_userupdate_txtFullName").val();
    if (pass != '' && pass1 != '' && pass != pass1) {
        alert('Mật khẩu không trùng khớp!!!!!');
        return false;
    }
    var capcha = $("#uc_userupdate_txtCapcha").val();
    var capchaBase = $("#uc_userupdate_hdfCapcha").val();
    if (capcha != capchaBase) {
        alert('Sai mã bảo mật!!!!!');
        return false;
    }
    var phone = $("#uc_userupdate_txtPhone").val();
    if (!isPhonenumber(phone)) {
        alert('Số điện thoại không hợp lệ!!!!!');
        return false;
    }
    var productused = $("#uc_userupdate_product").val();
    $.ajax({
        type: 'POST',
        timeout: 5000,
        url: '/service.aspx?name=userupdate',
        data: { "username": usn, "password": pass, "fullname": fullname, "phone": phone, "productused": productused },
        success: function (response) {
            response = jQuery.parseJSON(response);
            if (response.message == "ok") {
                alert('Cập nhật thành công!!!! Email xác nhận đã được gửi tới email đăng ký của bạn!!!!');
            } else {
                alert('Cập nhật không thành công!!!!');
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log('error');
        }
    });
}

function doLogin() {
    var errEl = $('#uc_login_mess');
    var usn = $("#uc_login_txtUserName").val();
    var pass = $("#uc_login_txtPWD").val();
    var myUrl = '/service.aspx?name=login';
    var isValid = true;
    $('.form input.textbox').removeClass('error');

    errEl.text(', ');
    if (usn != '' && usn.indexOf('@') != -1) {
        myUrl = '/service.aspx?name=loginmail';
        var email = usn;
        if (!isEmail(email) || email == '') {
            errEl.text(errEl.text() + 'Tên đăng nhập không hợp lệ, ');
            $("#uc_login_txtUserName").addClass('error');
            isValid = false;
        }
    }else if(usn==''){
        errEl.text(errEl.text()+'Tên đăng nhập là bắt buộc, ');
        $("#uc_login_txtUserName").addClass('error');
        isValid = false;
    }

    if (pass=='') {
        errEl.text(errEl.text()+'Mật khẩu là bắt buộc, ');
        $("#uc_login_txtPWD").addClass('error');
        isValid = false;
        
    }

    var capcha = $("#uc_login_txtCapcha").val();
    var capchaBase = $("#uc_login_hdfCapcha").val();
    if (capcha != capchaBase) {
        errEl.text(errEl.text() + 'Sai mã bảo mật, ');
        $("#uc_login_txtCapcha").addClass('error');
        isValid = false;
    }
    

    var err = errEl.text();

    if (err.length >= 2) { err = err.substring(2, err.length - 2); }
    if (err.length >= 2) { err = err.substring(0, err.length); }
    errEl.text(err);

    if (isValid == false) return false;
    errEl.text('');

    $.ajax({
        type: 'POST',
        timeout: 5000,
        url: myUrl,
        data: { "username": usn, "password": pass },
        success: function (response) {
            response = jQuery.parseJSON(response);
            if (response.message == "ok") {
                //alert('Đăng nhập thành công!!!!');
                window.location.reload(true);
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
    var errEl = $('#uc_email_fag_message');
    var email = $("#uc_email_fag_txtEmail").val();
    var fullname = $("#uc_email_fag_txtFullName").val();
    var phone = $("#uc_email_fag_txtPhone").val();
    var productname = $("#uc_email_fag_txtProductName").val();
    var mailcontent = $("#uc_email_fag_txtContent").val();
    var isValid = true;
    $('.form input.textbox').removeClass('error');

    errEl.text(', ');

    if (!isEmail(email) || email == '') {
        errEl.text(errEl.text() + 'Email không hợp lệ, ');
        $("#uc_email_fag_txtEmail").addClass('error');
        isValid = false;
    }

    if (mailcontent=='') {
        errEl.text(errEl.text()+'Nội dung câu hỏi là bắt buộc, ');
        $("#uc_email_fag_txtContent").addClass('error');
        isValid = false;
        
    }    

    var err = errEl.text();

    if (err.length >= 2) { err = err.substring(2, err.length - 2); }
    if (err.length >= 2) { err = err.substring(0, err.length); }
    errEl.text(err);

    if (isValid == false) return false;
    errEl.text('');

    $.ajax({
        type: 'POST',
        timeout: 5000,
        url: '/service.aspx?name=sendmailfaq',
        data: { "email": email, "fullname": fullname, "phone": phone, "productname": productname, "mailcontent": mailcontent },
        success: function (response) {
            response = jQuery.parseJSON(response);
            if (response.message == "ok") {
                alert('Câu hỏi được gửi thành công!!!!');
                $('#uc_email_fag_btnCancel').click();
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

function doDeleteComment(commentId,callback) {
    //console.log('doPostComment');
    $.ajax({
        type: 'POST',
        timeout: 5000,
        url: '/service.aspx?name=deletecomment',
        data: { "commentId":commentId },
        success: function (response) {
            response = jQuery.parseJSON(response);
            if($.isFunction(callback))callback(response);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log('error');
        }
    });
}

function doUpdateComment(commentId,comment,callback) {
    //console.log('doPostComment');
    $.ajax({
        type: 'POST',
        timeout: 5000,
        url: '/service.aspx?name=updatecomment',
        data: { "commentId":commentId,"comment": comment },
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
        },
        complete:function(){
            hideLoading();
        }
    });
}

function getProductById(productId,callback) {

    $.ajax({
        type: 'GET',
        timeout: 5000,
        url: '/service.aspx?name=getproductbyid&productid=' + productId,
        //data: { "productd": productId },
        success: function (response) {
            response = jQuery.parseJSON(response);
            if($.isFunction(callback))callback(response);
            // do some thing
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log('error');
        },
        complete:function(){
            hideLoading();
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

function getListPhotos(albumId,callback){
    $.ajax({
        type: 'GET',
        timeout: 5000,
        url: '/service.aspx?name=getlistphotobyalbum&albumid=' + albumId,
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

function doVotePhoto(callback) {
    //console.log('doPostComment');
    var photoId = $("#imgMain").attr('data-id');
    $.ajax({
        type: 'POST',
        timeout: 5000,
        url: '/service.aspx?name=votephoto',
        data: { "id": photoId },
        success: function (response) {
            response = jQuery.parseJSON(response);
            if (response.message == "1") { 
                $('#uc_photo_button_vote_photo').addClass('active');
                $('#uc_photo_vote_count').text(parseInt($(this).text()+1));
                if ($.isFunction(callback)) callback(response);   
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log('error');
        }
    });
}

function doForgotPass() {
    var isValid = true;
    $('.form input.textbox').removeClass('error');   
    var errEl = $('#uc_forgotpass_mess');
    errEl.text(', ');

    var capcha = $("#uc_forgotpass_txtCapcha").val();
    var capchaBase = $("#uc_forgotpass_hdfCapcha").val();
    if (capcha != capchaBase) {
        errEl.text(errEl.text() + 'Sai mã bảo mật, ');
        $("#uc_forgotpass_txtCapcha").addClass('error');
        isValid = false;
    }
    
    var email = $("#uc_forgotpass_txtEmail").val();
    if (!isEmail(email) || email == '') {
        errEl.text(errEl.text() + 'Email không hợp lệ, ');
        $("#uc_forgotpass_txtEmail").addClass('error');
        isValid = false;
    }
    var err = errEl.text();

    if (err.length >= 2) { err = err.substring(2, err.length - 2); }
    if (err.length >= 2) { err = err.substring(0, err.length); }
    errEl.text(err);

    if (isValid == false) return false;
    errEl.text('');
    $.ajax({
        type: 'POST',
        timeout: 5000,
        url: '/service.aspx?name=forgotpass',
        data: { "email": email },
        success: function (response) {
            response = jQuery.parseJSON(response);
            if (response.message == "1") {
                alert('Yêu cầu thành công!!!! Email chứa mất khẩu mới đã được gửi tới ' + email);
            } else if (response.message === "2") {
                alert('Yêu cầu không thành công! Email chưa được đăng ký! Vui lòng nhập lại!');
            } else {
                alert('Yêu cầu không thành công!!!!');
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log('error');
        }
    });
}