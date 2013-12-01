<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_faq.ascx.vb" Inherits="SonyAlpha.uc_faq" %>
<%If tblFAQ.Count > 0 Then%>
<div class="faq_page"><ul id="ulFAQ"><% Dim i As Integer = 0%><% For Each item In tblFAQ%><%i = i + 1%><li><div class="question"><%= i%>.&nbsp;<%= item.Question %></div><div class="answer" style="display:none;"><%= item.Answer %></div></li>   <% Next%></ul></div><%End If%>
<script>
    $('#ulFAQ').on('click', 'li', function () {
        var li = this;
        var q = $(li.children()[0]);
        var an = $(li.children()[1]);
        q.toggleClass('show');
        if (q.hassClass('show')) {
            an.slideDown(300);
        } else {
            an.slideUp(300);
        }
    });
</script>