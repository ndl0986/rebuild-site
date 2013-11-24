<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_seller.ascx.vb" Inherits="SonyAlpha.uc_seller" %>
<div class="shop_body">
    <div class="main_tab_alpha_pro">
	    <div class="intro">
		    <p>Nơi có đầy đủ ống kính dành cho Alpha từ Ống kính Sony, Ống kính SAM cho đến những ống kính nổi tiếng về chất lượng như Carl Zeiss và Ống kính G. Bạn có thể tận tay thử nghiệm những ống kính mơ ước, được tư vấn tận tình về các sản phẩm nhằm thỏa mãn nhu cầu của Bạn cũng như giúp bạn hiểu rõ hơn về nhiếp ảnh cũng như máy ảnh Sony Alpha.</p>
        </div>
        <%If tblProShop.Count > 0 Then%>
        <ul class="ul_list_center clearfix">
        <%For Each shop In tblProShop%>
            <li class="sonycenter_info">
                <div class="item">
                    <a class="sony_center_title" href="<%="seller/" & shop.Id & "?mId=" & intMenu %>"><%= shop.Name%></a>
                    <a class="sony_center_image" href="<%="seller/" & shop.Id & "?mId=" & intMenu %>"><%If String.IsNullOrEmpty(shop.SonyCenterCover) Then%><img class="lazyload" src="/upload/image/images.jpg" alt="<%= shop.Name %>"/></a><%Else%><img class="lazyload" src="<%=shop.SonyCenterCover%>" alt="<%= shop.Name %>"/></a><%End If%>
                    <div class="sony_center_contact">
                        <div><span class="label">Địa chỉ :</span><span><%= shop.Address%></span></div>
                        <div><span class="label">Điện thoại :</span><span><%= shop.Phone%></span></div>
                        <div><span class="label">Giờ mở cửa :</span><span><%= shop.OpenTime%> : <%=shop.CloseTime %></span></div>
                    </div>
                </div>
            </li>
        <%Next%>
        </ul>
        <%End If%>
    </div>
</div>
<div class="shop_body">
    <div class="main_tab_alpha">
		<div class="intro">
			<p>Bạn có thể trải nghiệm những sản phẩm máy ảnh Sony Alpha phù hợp với nhu cầu du lịch, gia đình của bạn.</p>
		</div>
        <div id="uc_shop_template"></div>
        <%If tblAlphaShop.Count > 0 Then%>
        <ul class="template ul_list_center clearfix">
        <%For Each shop In tblAlphaShop%>
            <li class="sonycenter_info" data-province="<%=shop.Province%>" data-provinces="<%=shop.ProvinceName%>"><div class="item"><a class="sony_center_title" href="<%="seller/" & shop.Id & "?mId=" & intMenu %>"><%= shop.Name%></a><a href="<%="seller/" & shop.Id & "?mId=" & intMenu %>" class="sony_center_image"><%If String.IsNullOrEmpty(shop.SonyCenterCover) Then%><img class="lazyload" src="/upload/image/images.jpg" alt="<%= shop.Name %>"/></a><%Else%><img class="lazyload" src="<%=shop.SonyCenterCover%>" alt="<%= shop.Name %>"/></a><%End If%><div class="sony_center_contact"><div><span class="label">Địa chỉ :</span><span><%= shop.Address%></span></div><div><span class="label">Điện thoại :</span><span><%= shop.Phone%></span></div><div><span class="label">Giờ mở cửa :</span><span><%= shop.OpenTime%> : <%=shop.CloseTime %></span></div></div></div></li>
        <%Next%>
        </ul>
        <%End If%>
        <%If tblShop.Count > 0 Then%>
        <ul class="template ul_list_shop clearfix">
        <%For Each shop In tblShop%>
            <li class="sonycenter_info" data-province="<%=shop.Province%>" data-provinces="<%=shop.ProvinceName%>"><div class="table_cell"><%= shop.Name%></div><div class="table_cell"><%= shop.Address%></div><div class="table_cell"><%= shop.OpenTime%> : <%=shop.CloseTime %></div><div class="table_cell"><%= shop.Phone%></div><div class="table_cell"><a href="/Default.aspx?tpl=map&long=<%= shop.Longitude%>&lat=<%= shop.Latitude%>" style="color:Black;">Bản đồ</a></div></li>
        <%Next%>
        </ul>
        <%End If%>
	</div>
</div>