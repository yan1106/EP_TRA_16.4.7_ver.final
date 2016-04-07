<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EP_TRA.aspx.cs"  Inherits="Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

<script runat="server" herf="EP_TRA.aspx.cs" >

    List<string> temp = new List<string>();

   
</script>



  
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>EP_TRA</title>
<link href="../css/styles.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />    
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>    
<script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script>    




<script type="text/javascript">

    function AddWork()
    {
        $(function () {
            $("#dialog").dialog({
                autoOpen: false,
                width: 1000,
                height: 500,
                title: "Select POR_Golden",
            });
            //.prev(".ui-dialog-titlebar").css("background", "gray");
            $("#dialogFrame").attr('src', 'POR_Golden.aspx');
            $("#dialogFrame")
            $("#dialog").dialog("open");
            return false;
        });
    }   
    
</script>   
     <script type="text/javascript">
     $(function () {
         $("[id$=Customer_TB]").autocomplete({
             source: function (request, response) {
                 $.ajax({
                     url: '<%=ResolveUrl("EP_TRA.aspx/GetCustomer") %>',
                     data: "{ 'prefix': '" + request.term + "'}",
                     dataType: "json",
                     type: "POST",
                     contentType: "application/json; charset=utf-8",
                     success: function (data) {
                         response($.map(data.d, function (item) {
                             return {
                                 label: item.split(',')[0],
                                 val: item.split(',')[1]
                             }
                         }))
                     },
                     error: function (response) {
                         alert(response.responseText);
                     },
                     failure: function (response) {
                         alert(response.responseText);
                     }
                 });
             },         
             minLength: 1
         });
     });

     $(function () {
         $("[id$=ND_TB]").autocomplete({
             source: function (request, response) {
                 $.ajax({
                     url: '<%=ResolveUrl("EP_TRA.aspx/GetNewDevice") %>',
                     data: "{ 'prefix': '" + request.term + "'}",
                     dataType: "json",
                     type: "POST",
                     contentType: "application/json; charset=utf-8",
                     success: function (data) {
                         response($.map(data.d, function (item) {
                             return {
                                 label: item.split(',')[0],
                                 val: item.split(',')[1]
                             }
                         }))
                     },
                     error: function (response) {
                         alert(response.responseText);
                     },
                     failure: function (response) {
                         alert(response.responseText);
                     }
                 });
             },
             minLength: 1
         });
     });

    

   </script>   



















    <style type="text/css">
        .shape {behavior:url(#default#VML);}
        .font9
	{color:windowtext;
	font-size:12.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	}
        .auto-style213 {
            color: #1F497D;
            font-size: 12.0pt;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style214 {
            width: 60pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align:text-top;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style216 {
            color: #C0504D;
            font-size: 12.0pt;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style220 {
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style223 {
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid white;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style232 {
            color: #FFFF00;
            font-size: 12.0pt;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style233 {
            height: 48.75pt;
            width: 303pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Times New Roman", serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border-left: 1.0pt solid white;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: 1.0pt solid white;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding: 0px;
            background: #254061;
        }
        .auto-style234 {
            width: 120pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Times New Roman", serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border-left: 1.0pt solid white;
            border-right: 1.0pt solid white;
            border-top: 1.0pt solid white;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding: 0px;
            background: #254061;
        }
        .auto-style235 {
            width: 86pt;
            color: white;
            font-size: 12.0pt;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: normal;
            border-left: 1.0pt solid white;
            border-right: 1.0pt solid white;
            border-top: 1.0pt solid white;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding: 0px;
            background: #254061;
        }
        .auto-style236 {
            width: 130pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Times New Roman", serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border-left: 1.0pt solid white;
            border-right: 1.0pt solid white;
            border-top: 1.0pt solid white;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding: 0px;
            background: #254061;
        }
        .auto-style237 {
            width: 40pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 100;
            font-style: normal;
            text-decoration: none;
            font-family: "Times New Roman", serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border-left: 1.0pt solid white;
            border-right: 1.0pt solid white;
            border-top: 1.0pt solid white;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding: 0px;
            background: #254061;
        }
        .auto-style238 {
            width: 340pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Times New Roman", serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border-left: 1.0pt solid white;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: 1.0pt solid white;
            border-bottom: 1.0pt solid white;
            padding: 0px;
            background: #254061;
        }
        .auto-style239 {
            height: 32.25pt;
            width: 80pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Times New Roman", serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: 1.0pt solid white;
            padding: 0px;
            background: #254061;
        }
        .auto-style240 {
            width: 80pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Times New Roman", serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: 1.0pt solid white;
            padding: 0px;
            background: #254061;
        }
        .auto-style241 {
            width: 70pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Times New Roman", serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: 1.0pt solid white;
            padding: 0px;
            background: #254061;
        }
        .auto-style243 {
            width: 120pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
          
            padding: 0px;
            background: white;
        }
        .auto-style244 {
            color: #C0504D;
            font-size: 12.0pt;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;          
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border: .5pt solid white;

            padding: 0px;
            background: white;
        }
        .auto-style245 {
            color: #1F497D;
            font-size: 12.0pt;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right: .5pt solid white;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: white;
        }
        .auto-style246 {
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right: .5pt solid white;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: white;
        }
        .auto-style247 {
            width: 60pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: text-top;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right: .5pt solid white;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: white;
        }
        .auto-style249 {
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style250 {
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: left;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid white;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style251 {
            height: 16.5pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style252 {
            height: 28.5pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style255 {
            height: 16.5pt;
            width: 24pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style256 {
            width: 241pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: left;
            vertical-align: middle;
            white-space: normal;
            border-left: .5pt solid white;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid white;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style257 {
            height: 28.5pt;
            width: 24pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style258 {
            height: 42.75pt;
            width: 24pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style260 {
            width: 24pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style263 {
            width: 206pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: normal;
            border-left: .5pt solid white;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid white;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: white;
        }
        .auto-style264 {
            color: #1F497D;
            font-size: 12.0pt;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: white;
        }
        .auto-style265 {
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: white;
        }
        .auto-style266 {
            color: black;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: white;
        }
        .auto-style267 {
            height: 25.5pt;
            width: 24pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style268 {
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid white;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: white;
        }
        .auto-style269 {
            color: #C0504D;
            font-size: 11.0pt;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid white;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: white;
        }
        .auto-style271 {
            width: 97pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: left;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style272 {
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style273 {
            height: 16.5pt;
            width: 144pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: general;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style274 {
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: white;
        }
        .auto-style275 {
            height: 31.5pt;
            width: 144pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: general;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style276 {
            height: 66.0pt;
            width: 24pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style277 {
            width: 144pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: general;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style278 {
            width: 86pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style279 {
            width: 120pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: white;
        }
        .auto-style280 {
            height: 33.0pt;
            width: 24pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style281 {
            width: 20pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 100;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style283 {
            width: 144pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: left;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style284 {
            color: #C0504D;
            font-size: 12.0pt;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: white;
        }
        .auto-style285 {
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: left;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style287 {
            height: 31.5pt;
            width: 24pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style288 {
            color: black;
            font-size: 12.0pt;
            font-weight: 100;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right: .5pt solid white;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: white;
            width: 40pt;
        }
        .auto-style289 {
            color: black;
            font-size: 12.0pt;
            font-weight: 100;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            width: 40pt;
        }
        .auto-style290 {
            color: black;
            font-size: 12.0pt;
            font-weight: 100;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: white;
            width: 40pt;
        }
        .auto-style291 {
            color: #1F497D;
        }
        .td_newDevice
        {
            background:#ffffff;
            font-size: 12.0pt; 
        }        
         .th_newDevice
        {
            background:#254061;
            font-size: 12.0pt; 
            color:white;   
        }
         .th_POR
        {
            background:#254061;
            font-size: 12.0pt; 
            color:white;  
            width : 25px; 
            border-bottom-style: solid;
            border-bottom-width:1pt;
        }
         .td_POR
        {
            background:#ffffff;
            font-size: 12.0pt;                
        }
        .container 
        {
            overflow: hidden;
        }
        .right 
        {
            float: right;
            width: 5%;
        }
        .left 
        {
            float: left;
            width: 15%;
        }
        .middle 
        {
            margin:0 20%;            
        }
        .td_POR_wid
        {
            width:150px;
            font-size: 12.0pt; 
            background:white;
        }
        .div-por
        {
           
                width: 65%;
                float: inherit;
                position: absolute;
                right: 150px;
               
        }
       .div-por2
       {
            
           


       }



        .big-div
        {
            width:100%;
        }
        .div-gap
        {
           position: absolute;
           top: 54px;
           float: right;
           right: 10px;
           width: 10%;
        }
        .style-gap
        {
            
            color: black;
            font-size: 12.0pt;
            font-weight: 50;
            background: white;
            width: 50pt;
        }
         .style-gap2
        {   
            color: black;
            font-size: 12.0pt;
            font-weight: 50;
            font-style: normal;
            text-decoration: none;
            background: #D8D8D8;
            width: 50pt;
        }
        .style-keyitem
        {
             
            color: white;          
            padding: 0px;
            background: #538ED5;     
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;                         
            /*border-bottom-style: solid;*/
            border-top: .5pt solid white;
            border-bottom: .5pt solid white;


        }

        .auto-style294 {
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
            height: 21px;
        }
        .auto-style295 {
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: left;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid white;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: #538ED5;
            height: 21px;
        }
        .auto-style296 {
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            height: 21px;
        }
        .auto-style297 {
            color: #C0504D;
            font-size: 12.0pt;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            height: 21px;
        }
        .auto-style298 {
            color: #1F497D;
            font-size: 12.0pt;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            height: 21px;
        }
        .auto-style300 {
            color: black;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: text-top;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            height: 21px;
            width: 60pt;
        }
        .auto-style301 {
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            height: 21px;
        }


        .auto-style302 {
            height: 17pt;
            width: 24pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style303 {
            width: 241pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: left;
            vertical-align: middle;
            white-space: normal;
            border-left: .5pt solid white;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid white;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: #538ED5;
            height: 17pt;
        }
        .auto-style304 {
            width: 120pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border-left: .5pt solid white;
            border-right: .5pt solid white;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: white;
            height: 17pt;
        }
        .auto-style305 {
            color: #C0504D;
            font-size: 12.0pt;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right: .5pt solid white;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: white;
            height: 17pt;
        }
        .auto-style306 {
            color: #1F497D;
            font-size: 12.0pt;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right: .5pt solid white;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: white;
            height: 17pt;
        }
        .auto-style307 {
            color: black;
            font-size: 12.0pt;
            font-weight: 100;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right: .5pt solid white;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: white;
            width: 40pt;
            height: 17pt;
        }
        .auto-style308 {
            color: black;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right: .5pt solid white;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: white;
            height: 17pt;
        }
        .auto-style309 {
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right: .5pt solid white;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: white;
            height: 17pt;
        }


        .auto-style310 {
            background: #254061;
            font-size: 12.0pt;
            color: white;
            border-bottom-style: solid;
            height: 29px;
        }
        .auto-style311 {
            width: 150px;
            font-size: 12.0pt;
            background: white;
            height: 29px;
        }


        .auto-style312 {
            width: 60pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;              
            vertical-align: text-top;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            height: 17pt;
        }
        .auto-style313 {
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            height: 17pt;
        }
        .auto-style314 {
            color: #C0504D;
            font-size: 12.0pt;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            height: 17pt;
        }
        .auto-style315 {
            color: #1F497D;
            font-size: 12.0pt;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            height: 17pt;
        }
        .auto-style316 {
            color: black;
            font-size: 12.0pt;
            font-weight: 100;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            width: 40pt;
            height: 17pt;
        }
        .auto-style317 {
            width: 60pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: text-top;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            height: 17pt;
        }


        .auto-style318 {
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style319 {
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: white;
        }
        .auto-style320 {
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial;
        }
        .auto-style321 {
            vertical-align: medium;
        }
        .auto-style322 {
            position: absolute;
            top: 54px;
            float: right;
            right: 10px;
            width: 10%;
            height: 83px;
        }


        .auto-style324 {
            height: 17pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style325 {
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: left;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid white;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: #538ED5;
            height: 17pt;
        }
        .auto-style326 {
            width: 60pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: text-top;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right: .5pt solid white;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: white;
            height: 17pt;
        }


        .auto-style327 {
            height: 18pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style328 {
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: left;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid white;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: #538ED5;
            height: 18pt;
        }
        .auto-style329 {
            width: 120pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            height: 18pt;
        }
        .auto-style330 {
            color: #C0504D;
            font-size: 12.0pt;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            height: 18pt;
        }
        .auto-style331 {
            color: #1F497D;
            font-size: 12.0pt;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            height: 18pt;
        }
        .auto-style332 {
            color: black;
            font-size: 12.0pt;
            font-weight: 100;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            width: 40pt;
            height: 18pt;
        }
        .auto-style333 {
            width: 60pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: text-top;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            height: 18pt;
        }
        .auto-style334 {
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            height: 18pt;
        }


        .auto-style335 {
            height: 29pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style336 {
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: left;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid white;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: #538ED5;
            height: 29pt;
        }
        .auto-style337 {
            width: 120pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            height: 29pt;
        }
        .auto-style338 {
            color: #C0504D;
            font-size: 12.0pt;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            height: 29pt;
        }
        .auto-style339 {
            color: #1F497D;
            font-size: 12.0pt;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            height: 29pt;
        }
        .auto-style340 {
            color: black;
            font-size: 12.0pt;
            font-weight: 100;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            width: 40pt;
            height: 29pt;
        }
        .auto-style341 {
            width: 60pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: text-top;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            height: 29pt;
        }
        .auto-style342 {
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            height: 29pt;
        }


        </style>
</head>
<link href="EP_TRA.css" rel="stylesheet" type="text/css" />
<body style="width: 100%; height:100%">
    <form id="form1" runat="server">
        <asp:Panel ID="POR_Panel" runat="server"> 
            <div class="big-div" >
            <div class="left">
            <fieldset class="fieldset" style="margin:auto;">
            <legend class="legend" style="font-size:medium;"><strong>Step1:New Device</strong></legend>  
                 <table>
                     <tr>
                         <th class="th_newDevice">Customer</th>
                         <td class="td_newDevice"> <asp:TextBox ID="Customer_TB" runat="server" Height="20px" 
                                 OnTextChanged="Customer_TB_TextChanged" Width="100px"></asp:TextBox>
                         </td>                         
                     </tr>
                     <tr>
                         <th class="th_newDevice">New_Device</th>
                         <td class="td_newDevice"><asp:TextBox ID="ND_TB" runat="server" Height="20px" 
                                 OnTextChanged="ND_TB_TextChanged1" Width="100px"></asp:TextBox>
                         </td>
                         </tr>
                         <tr><td colspan="2" align="right">
                             <asp:Button ID="Search_Device" runat="server" class="blueButton button2" 
                                 Height="25px" OnClick="Search_Device1" Text="Search" Width="70px"/>
                             </td></tr>
                 </table>                 
             </fieldset>
            </div>
                <div class="div-por">
                    <div class="div-por2">
                 <fieldset style="margin:auto;" class="fieldset">
                <legend class="legend" style="font-size:medium;"><strong>Setp2:Select POR Golden</strong></legend>
               <table cellpadding="0" cellspacing="0">
                    <colgroup>
                        <col span="1" />
                        <col span="7" width="101" />
                    </colgroup>
                    <tr>
                        <th class="th_POR" height="30">Customer</th>
                        <td class="td_POR_wid">
                            <asp:Label ID="Lab_Customer" runat="server"></asp:Label>
                        </td>
                        <th class="th_POR">ProductionSite</th>
                        <td class="td_POR_wid">
                            <asp:Label ID="Lab_ProSite" runat="server"></asp:Label>
                        </td>
                        <th class="th_POR">PKG</th>
                        <td class="td_POR_wid">
                            <asp:Label ID="Lab_PKG" runat="server"></asp:Label>
                        </td>
                        <th class="th_POR">WaferTech.(mm)</th>
                        <td class="td_POR_wid">
                            <asp:Label ID="Lab_WaferTech" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr height="22">
                        <th class="auto-style310">Device</th>
                        <td class="auto-style311">
                            <asp:Label ID="Lab_Device" runat="server"></asp:Label>
                        </td>
                        <th class="auto-style310">WaferPSVType/Thickness</th>
                        <td class="auto-style311">
                            <asp:Label ID="Lab_WaferThick" runat="server"></asp:Label>
                        </td>
                        <th class="auto-style310">RSVI(Y/N)</th>
                        <td class="auto-style311">
                            <asp:Label ID="Lab_RVSI" runat="server"></asp:Label>
                        </td>
                        <th class="auto-style310">FAB</th>
                        <td class="auto-style311">
                            <asp:Label ID="Lab_FAB" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr height="22">
                        <th  colspan="8" align="right">
                            <asp:Button ID="Select_POR" runat="server" class="blueButton button2" 
                                Height="25px" OnClick="Select_POR_Click" Text="Select POR" Width="90px" />
                        </th>
                    </tr>
                </table>
            </fieldset>
               </div>      
                    
             </div>
            <div  class="auto-style322">
                 <fieldset style="margin:auto;" class="fieldset">
                <legend class="legend" style="font-size:medium;"><strong>Step3:Gap</strong></legend>
             <asp:Button ID="GAP_butt0" runat="server" class="blueButton button2" Height="25px" OnClick="GAP_butt1" Text="Compare" Width="100px" />
            </fieldset>
           </div>

        </div>
          
            <asp:Button ID="cmdFilter" runat="server" OnClick="cmdFilter_Click" Text="Button" ClientIDMode="Static" Style="display: none;" />            
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Size="Large"></asp:Label>                               
            <br />
           
            <br />
            <br />
     </asp:Panel>

        <br />
        <br />
        <br />
        <br />
         <hr />
        <br />
        <asp:Panel ID="Panel1" runat="server">
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse:
 collapse;width:900pt">
            <colgroup>
                <col width="51" />
                <col width="32" />
                <col width="129" />
                <col width="192" />
                <col width="160" />
                <col width="114" />
                <col />
                <col width="286" />
                <col span="3" width="72" />
                <col width="93" />
                <col span="2" width="72" />
            </colgroup>
            <tr height="22">
                <td class="auto-style233" colspan="4" height="65" rowspan="2" width="404">Key item</td>
                <td class="auto-style234" rowspan="2" width="160">Capability<span style="mso-spacerun:yes">&nbsp;</span></td>
                <td class="auto-style235" rowspan="2" width="114">POR (Baseline)</td>
                <td class="auto-style236" rowspan="2" width="173">New Device</td>
                <td class="auto-style237" rowspan="2">Gap<br />
                    (Y/N)</td>
                <td class="auto-style238" colspan="6" width="453">Package/ProcessTRA</td>
            </tr>
            <tr height="43">
                <td class="auto-style239" height="43" width="72">Effect stage</td>
                <td class="auto-style240" width="72">Potential Effect<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style240" width="72">TRA Lv.</td>
                <td class="auto-style241" width="93">Recommend action</td>
                <td class="auto-style240" width="72">Owner</td>
                <td class="auto-style240" width="72">Due Date</td>
            </tr>
            <tr height="22">
                <td class="style-keyitem" colspan="4" height="22">PROD</td>
                <td class="auto-style243" width="160">-</td>
                <td class="auto-style244">
                    <asp:Label ID="lab_POR_15" runat="server"></asp:Label>
                </td>
                <td class="auto-style245">　</td>
                <td class="auto-style288">
                    <asp:Label ID="lab_gap1" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Eff_01" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Pot_01" runat="server"></asp:Label>
                </td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
            </tr>
            <tr>
                <td class="style-keyitem"   height="126" rowspan="5" width="51" aria-haspopup="False" aria-orientation="horizontal"><span style='writing-mode:tb-rl;'>Device Information</span></td>
                <td class="auto-style294">1</td>
                <td class="auto-style295" colspan="2">Customer<span style="mso-spacerun:yes">&nbsp;</span></td>
                <td class="auto-style296">-</td>
                <td class="auto-style297">
                    <asp:Label ID="lab_POR_14" runat="server"></asp:Label>
                </td>
                <td class="auto-style298">
                    <asp:Label ID="lab_DIFD4" runat="server"></asp:Label>
                </td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap2" runat="server"></asp:Label>
                </td>
                <td class="auto-style300">
                    <asp:Label ID="lab_Eff_02" runat="server"></asp:Label>
                </td>
                <td class="auto-style300">
                    <asp:Label ID="lab_Pot_02" runat="server"></asp:Label>
                </td>
                <td class="auto-style301">　</td>
                <td class="auto-style301">　</td>
                <td class="auto-style301">　</td>
                <td class="auto-style301">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style251" height="22">2</td>
                <td class="auto-style250" colspan="2">Device<span style="mso-spacerun:yes">&nbsp;</span></td>
                <td class="auto-style243" width="160">-</td>
                <td class="auto-style244">
                    <asp:Label ID="lab_POR_17" runat="server"></asp:Label>
                </td>
                <td class="auto-style245">
                    <asp:Label ID="lab_DIFD5" runat="server"></asp:Label>
                </td>
                <td class="auto-style288">
                    <asp:Label ID="lab_gap3" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Eff_03" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Pot_03" runat="server"></asp:Label>
                </td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
            </tr>
            <tr>
                <td class="auto-style327">3</td>
                <td class="auto-style328" colspan="2">Die size(mm*mm)</td>
                <td class="auto-style329" width="160">4*4~23*23</td>
                <td class="auto-style330">
                    <asp:Label ID="lab_POR_18" runat="server"></asp:Label>
                </td>
                <td class="auto-style331">&nbsp;<asp:Label ID="lab_DIFD19_DIFG19" runat="server"></asp:Label>
                    &nbsp;&nbsp;</td>
                <td class="auto-style332">
                    <asp:Label ID="lab_gap4" runat="server"></asp:Label>
                </td>
                <td class="auto-style333">
                    <asp:Label ID="lab_Eff_04" runat="server"></asp:Label>
                </td>
                <td class="auto-style333">
                    <asp:Label ID="lab_Pot_04" runat="server"></asp:Label>
                </td>
                <td class="auto-style334">　</td>
                <td class="auto-style334">　</td>
                <td class="auto-style334">　</td>
                <td class="auto-style334">　</td>
            </tr>
            <tr height="38">
                <td class="auto-style252" height="38">4</td>
                <td class="auto-style250" colspan="2">C/P probe card type</td>
                <td class="auto-style243" width="160">Vertical probe<br />
                    Membrane</td>
                <td class="auto-style244">
                    <asp:Label ID="lab_POR_46" runat="server"></asp:Label>
                </td>
                <td class="auto-style245">
                    <asp:Label ID="lab_Q_RD16" runat="server"></asp:Label>
                </td>
                <td class="auto-style288">
                    <asp:Label ID="lab_gap5" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Eff_05" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Pot_05" runat="server"></asp:Label>
                </td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style251" height="22">5</td>
                <td class="auto-style250" colspan="2">Probing on bump pad (Y/N)</td>
                <td class="auto-style18">Not Allowed</td>
                <td class="auto-style216">
                    <asp:Label ID="lab_POR_24" runat="server"></asp:Label>
                </td>
                <td class="auto-style213">
                    <asp:Label ID="lab_Q_RD13" runat="server"></asp:Label>
                </td>
                <td class="auto-style289"><asp:Label ID="lab_gap6" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Eff_06" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_06" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr>
                <td class="style-keyitem" rowspan="7"><span style='writing-mode:tb-rl;'>Wafer Information</span></td>
                <td class="auto-style249">6</td>
                <td class="auto-style250" colspan="2">Wafer Fab</td>
                <td class="auto-style243" width="160">TSMC,UMC,GF,SMIC</td>
                <td class="auto-style244">
                    <asp:Label ID="lab_POR_04" runat="server"></asp:Label>
                </td>
                <td class="auto-style245">
                    <asp:Label ID="lab_Q_RD7" runat="server"></asp:Label>
                </td>
                <td class="auto-style288"><asp:Label ID="lab_gap7" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Eff_07" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Pot_07" runat="server"></asp:Label>
                </td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style251" height="22">7</td>
                <td class="auto-style250" colspan="2">Wafer tech.(nm)</td>
                <td class="auto-style18">28~130</td>
                <td class="auto-style216">
                    <asp:Label ID="lab_POR_03" runat="server"></asp:Label>
                </td>
                <td class="auto-style213">
                    <asp:Label ID="lab_Q_RD8" runat="server"></asp:Label>
                </td>
                <td class="auto-style289"><asp:Label ID="lab_gap8" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Eff_08" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_08" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style251" height="22">8</td>
                <td class="auto-style250" colspan="2">Low K Type</td>
                <td class="auto-style243" width="160">ELK</td>
                <td class="auto-style244">
                    <asp:Label ID="lab_POR_12" runat="server"></asp:Label>
                </td>
                <td class="auto-style245">
                    <asp:Label ID="lab_Q_RD9" runat="server"></asp:Label>
                </td>
                <td class="auto-style288"><asp:Label ID="lab_gap9" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Eff_09" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Pot_09" runat="server"></asp:Label>
                </td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
            </tr>
            <tr>
                <td class="auto-style335">9</td>
                <td class="auto-style336" colspan="2">Final Metal Pad type</td>
                <td class="auto-style337" width="160">Al<br />
                    Cu</td>
                <td class="auto-style338">
                    <asp:Label ID="lab_POR_20" runat="server"></asp:Label>
                </td>
                <td class="auto-style339">
                    <asp:Label ID="lab_DIFF11" runat="server"></asp:Label>
                </td>
                <td class="auto-style340"><asp:Label ID="lab_gap10" runat="server"></asp:Label>
                </td>
                <td class="auto-style341">
                    <asp:Label ID="lab_Eff_10" runat="server"></asp:Label>
                </td>
                <td class="auto-style341">
                    <asp:Label ID="lab_Pot_10" runat="server"></asp:Label>
                </td>
                <td class="auto-style342">　</td>
                <td class="auto-style342">　</td>
                <td class="auto-style342">　</td>
                <td class="auto-style342">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style251" height="22">10</td>
                <td class="auto-style250" colspan="2">RV hole(Y/N)</td>
                <td class="auto-style243" width="160">Not Allowed</td>
                <td class="auto-style244">
                    <asp:Label ID="lab_POR_23" runat="server"></asp:Label>
                </td>
                <td class="auto-style245">
                    <asp:Label ID="lab_Q_RD11" runat="server"></asp:Label>
                </td>
                <td class="auto-style288"><asp:Label ID="lab_gap11" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Eff_11" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Pot_11" runat="server"></asp:Label>
                </td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style251" height="22">11</td>
                <td class="auto-style250" colspan="2">Wafer PSV type / Thickness</td>
                <td class="auto-style18">SiN</td>
                <td class="auto-style216">
                    <asp:Label ID="lab_POR_21" runat="server"></asp:Label>
                </td>
                <td class="auto-style213">
                    <asp:Label ID="lab_Man_01" runat="server"></asp:Label>
                </td>
                <td class="auto-style289"><asp:Label ID="lab_gap12" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Eff_12" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_12" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style324">12</td>
                <td class="auto-style325" colspan="2">Seal-Ring Protected by SiN (Y/N)</td>
                <td class="auto-style304" width="160">Y</td>
                <td class="auto-style305">
                    <asp:Label ID="lab_POR_25" runat="server"></asp:Label>
                </td>
                <td class="auto-style306">
                    <asp:Label ID="lab_Q_RD12" runat="server"></asp:Label>
                </td>
                <td class="auto-style307"><asp:Label ID="lab_gap13" runat="server"></asp:Label>
                </td>
                <td class="auto-style326">
                    <asp:Label ID="lab_Eff_13" runat="server"></asp:Label>
                </td>
                <td class="auto-style326">
                    <asp:Label ID="lab_Pot_13" runat="server"></asp:Label>
                </td>
                <td class="auto-style309">　</td>
                <td class="auto-style309">　</td>
                <td class="auto-style309">　</td>
                <td class="auto-style309">　</td>
            </tr>
            <tr height="95">
                <td class="style-keyitem" height="234" rowspan="5"><span style='writing-mode:tb-rl;'>Bump Structure</span></td>
                <td class="auto-style249">13</td>
                <td class="auto-style250" colspan="2">PKG Type</td>
                <td class="auto-style12" width="160">EP REPSV-12-EU<br />
                    EP REPSV-12-LF<br />
                    EP FOC-12-EU<br />
                    EP FOC-12-LF<br />
                    EP REPSV-8-LF</td>
                <td class="auto-style216">
                    <asp:Label ID="lab_POR_02" runat="server"></asp:Label>
                </td>
                <td class="auto-style213">
                    <asp:Label ID="lab_APP_08" runat="server"></asp:Label>
                </td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap14" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Eff_14" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_14" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">14</td>
                <td class="auto-style256" colspan="2" width="321">PI type</td>
                <td class="auto-style243" width="160">HD4104</td>
                <td class="auto-style244">
                    <asp:Label ID="lab_POR_26" runat="server"></asp:Label>
                </td>
                <td class="auto-style245">
                    <asp:Label ID="lab_Man_02" runat="server"></asp:Label>
                </td>
                <td class="auto-style288">
                    <asp:Label ID="lab_gap15" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Eff_15" runat="server"></asp:Label>
                    <br />
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Pot_15" runat="server"></asp:Label>
                </td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
            </tr>
            <tr>
                <td class="auto-style302" width="32">15</td>
                <td class="auto-style303" colspan="2" width="321">PI Thickness (um)</td>
                <td class="auto-style313">5um</td>
                <td class="auto-style314">
                    <asp:Label ID="lab_POR_55" runat="server"></asp:Label>
                </td>
                <td class="auto-style315">
                    <asp:Label ID="lab_Man_03" runat="server"></asp:Label>
                </td>
                <td class="auto-style316">
                    <asp:Label ID="lab_gap16" runat="server"></asp:Label>
                </td>
                <td class="auto-style312">
                    <asp:Label ID="lab_Eff_16" runat="server"></asp:Label>
                    <br />
                </td>
                <td class="auto-style317">
                    <asp:Label ID="lab_Pot_16" runat="server"></asp:Label>
                </td>
                <td class="auto-style78">　</td>
                <td class="auto-style78">　</td>
                <td class="auto-style78">　</td>
                <td class="auto-style78">　</td>
            </tr>
            <tr height="38">
                <td class="auto-style257" height="38" width="32">16</td>
                <td class="auto-style256" colspan="2" width="321">UBM type / Thickness (um)</td>
                <td class="auto-style243" width="160">Ti1K/Cu5K/Ni2um<br />
                    Ti1K/Cu5K/Ni3um</td>
                <td class="auto-style244">
                    <asp:Label ID="lab_POR_16" runat="server"></asp:Label>
                </td>
                <td class="auto-style245">
                    <asp:Label ID="lab_Man_04" runat="server"></asp:Label>
                </td>
                <td class="auto-style288">
                    <asp:Label ID="lab_gap17" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Eff_17" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Pot_17" runat="server"></asp:Label>
                </td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
            </tr>
            <tr height="57">
                <td class="auto-style258" height="57" width="32">17</td>
                <td class="auto-style256" colspan="2" width="321">Bump composition</td>
                <td class="auto-style12" width="160">SnAg 1.8<br />
                    SnAg 2.3<br />
                    Eu</td>
                <td class="auto-style216">
                    <asp:Label ID="lab_POR_33" runat="server"></asp:Label>
                </td>
                <td class="auto-style213">
                    <asp:Label ID="lab_Q_RD26" runat="server"></asp:Label>
                </td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap18" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Eff_18" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_18" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="style-keyitem" height="368" rowspan="17" width="51"><span style='writing-mode:tb-rl;'>Bump Design</span></td>
                <td class="auto-style260" width="32">18</td>
                <td class="auto-style256" colspan="2" width="321">REPSV PI Opening Size(um)</td>
                <td class="auto-style243" width="160">30~62</td>
                <td class="auto-style244">
                    <asp:Label ID="lab_POR_30" runat="server"></asp:Label>
                </td>
                <td class="auto-style245">
                    <asp:Label ID="lab_APP_21" runat="server"></asp:Label>
                </td>
                <td class="auto-style288">
                    <asp:Label ID="lab_gap19" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Eff_19" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Pot_19" runat="server"></asp:Label>
                </td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">19</td>
                <td class="auto-style256" colspan="2" width="321">Min fianl metal trace to seal ring (um)</td>
                <td class="auto-style18">6.7~20</td>
                <td class="auto-style220">NA</td>
                <td class="auto-style213">
                    <asp:Label ID="lab_DRCF38" runat="server"></asp:Label>
                </td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap20" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Eff_20" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_20" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">20</td>
                <td class="auto-style256" colspan="2" width="321">PI via opening bottom edge
                    <br />
                    to pad psv. Edge (um)</td>
                <td class="auto-style243" width="160">7~20</td>
                <td class="auto-style244">
                    <asp:Label ID="lab_POR_31" runat="server"></asp:Label>
                </td>
                <td class="auto-style245">
                    <asp:Label ID="lab_DRCF39" runat="server"></asp:Label>
                </td>
                <td class="auto-style288">
                    <asp:Label ID="lab_gap21" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Eff_21" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Pot_21" runat="server"></asp:Label>
                </td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">21</td>
                <td class="auto-style256" colspan="2" width="321">PI edge inside seal ring (um)</td>
                <td class="auto-style18">5~13</td>
                <td class="auto-style216">
                    <asp:Label ID="lab_POR_32" runat="server"></asp:Label>
                </td>
                <td class="auto-style213">
                    <asp:Label ID="lab_DRCF35" runat="server"></asp:Label>
                </td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap22" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Eff_22" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_22" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="38">
                <td class="auto-style257" height="38" width="32">22</td>
                <td class="auto-style256" colspan="2" width="321">PR thickness(um)</td>
                <td class="auto-style243" width="160">30<br />
                    50</td>
                <td class="auto-style244">
                    <asp:Label ID="lab_POR_13" runat="server"></asp:Label>
                </td>
                <td class="auto-style245">
                    <asp:Label ID="lab_Man_05" runat="server"></asp:Label>
                </td>
                <td class="auto-style288">
                    <asp:Label ID="lab_gap23" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Eff_23" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Pot_23" runat="server"></asp:Label>
                </td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">23</td>
                <td class="auto-style256" colspan="2" width="321">UBM Size(um)</td>
                <td class="auto-style18">69~110</td>
                <td class="auto-style216">
                    <asp:Label ID="lab_POR_29" runat="server"></asp:Label>
                </td>
                <td class="auto-style213">
                    <asp:Label ID="lab_APP_33" runat="server"></asp:Label>
                </td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap24" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Eff_24" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_24" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">24</td>
                <td class="auto-style256" colspan="2" width="321">UBM Overlap PSV (um)</td>
                <td class="auto-style243" width="160">10~25</td>
                <td class="auto-style244">
                    <asp:Label ID="lab_POR_27" runat="server"></asp:Label>
                </td>
                <td class="auto-style245">
                    <asp:Label ID="lab_DRCF34" runat="server"></asp:Label>
                </td>
                <td class="auto-style288">
                    <asp:Label ID="lab_gap25" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Eff_25" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Pot_25" runat="server"></asp:Label>
                </td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">25</td>
                <td class="auto-style256" colspan="2" width="321">UBM insdie final metal for FOC (um)</td>
                <td class="auto-style18">3~7</td>
                <td class="auto-style216">
                    <asp:Label ID="lab_POR_28" runat="server"></asp:Label>
                </td>
                <td class="auto-style213">
                    <asp:Label ID="lab_Man_06" runat="server"></asp:Label>
                </td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap26" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Eff_26" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_26" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">26</td>
                <td class="auto-style256" colspan="2" width="321">UBM Plating Area(dm<span class="auto-style321"><font class="auto-style320"><sup>2</sup></font></span>)</td>
                <td class="auto-style243" width="160">0.26~1.66</td>
                <td class="auto-style244">
                    <asp:Label ID="lab_POR_34" runat="server"></asp:Label>
                </td>
                <td class="auto-style245">
                    <asp:Label ID="lab_Man_07" runat="server"></asp:Label>
                </td>
                <td class="auto-style288">
                    <asp:Label ID="lab_gap27" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Eff_27" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Pot_27" runat="server"></asp:Label>
                </td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">27</td>
                <td class="auto-style256" colspan="2" width="321">UBM Density (UBM Area/Die Area)</td>
                <td class="auto-style18">2.52~25.06</td>
                <td class="auto-style216">
                    <asp:Label ID="lab_POR_50" runat="server"></asp:Label>
                </td>
                <td class="auto-style213">
                    <asp:Label ID="lab_Man_08" runat="server"></asp:Label>
                </td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap28" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Eff_28" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_28" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr>
                <td class="auto-style302" width="32">28</td>
                <td class="auto-style303" colspan="2" width="321">Mushroom CD(um)</td>
                <td class="auto-style304" width="160">105~173</td>
                <td class="auto-style305">
                    <asp:Label ID="lab_POR_44" runat="server"></asp:Label>
                </td>
                <td class="auto-style306">
                    <asp:Label ID="lab_Man_09" runat="server"></asp:Label>
                </td>
                <td class="auto-style307">
                    <asp:Label ID="lab_gap29" runat="server"></asp:Label>
                </td>
                <td class="auto-style308">
                    <asp:Label ID="lab_Eff_29" runat="server"></asp:Label>
                </td>
                <td class="auto-style308">
                    <asp:Label ID="lab_Pot_29" runat="server"></asp:Label>
                </td>
                <td class="auto-style309">　</td>
                <td class="auto-style309">　</td>
                <td class="auto-style309">　</td>
                <td class="auto-style309">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">29</td>
                <td class="auto-style256" colspan="2" width="321">Min Mushroom space(um)</td>
                <td class="auto-style18">20~182</td>
                <td class="auto-style216">
                    <asp:Label ID="lab_POR_43" runat="server"></asp:Label>
                </td>
                <td class="auto-style213">
                    <asp:Label ID="lab_Man_10" runat="server"></asp:Label>
                </td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap30" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Eff_30" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_30" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style251" height="22">30</td>
                <td class="auto-style250" colspan="2">Min. Bump pitch (um)</td>
                <td class="auto-style243" width="160">150~300</td>
                <td class="auto-style244">
                    <asp:Label ID="lab_POR_19" runat="server"></asp:Label>
                </td>
                <td class="auto-style245">
                    <asp:Label ID="lab_DIFD29" runat="server"></asp:Label>
                </td>
                <td class="auto-style288">
                    <asp:Label ID="lab_gap31" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Eff_31" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Pot_31" runat="server"></asp:Label>
                </td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">31</td>
                <td class="auto-style256" colspan="2" width="321">Bump Height(um)</td>
                <td class="auto-style18">70~100</td>
                <td class="auto-style216">
                    <asp:Label ID="lab_POR_35" runat="server"></asp:Label>
                </td>
                <td class="auto-style213">
                    <asp:Label ID="lab_APP_09" runat="server"></asp:Label>
                </td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap32" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Eff_32" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_32" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">32</td>
                <td class="auto-style256" colspan="2" width="321">Bump Diameter(um)</td>
                <td class="auto-style243" width="160">-</td>
                <td class="auto-style244">
                    <asp:Label ID="lab_POR_45" runat="server"></asp:Label>
                </td>
                <td class="auto-style245">
                    <asp:Label ID="lab_APP_11" runat="server"></asp:Label>
                </td>
                <td class="auto-style288">
                    <asp:Label ID="lab_gap33" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Eff_33" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Pot_33" runat="server"></asp:Label>
                </td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">33</td>
                <td class="auto-style256" colspan="2" width="321">Bump Density (Bump Q&#39;ty/Die Area)</td>
                <td class="auto-style18">8.8~39.95</td>
                <td class="auto-style216">
                    <asp:Label ID="lab_POR_22" runat="server"></asp:Label>
                </td>
                <td class="auto-style213">
                    <asp:Label ID="lab_Man_11" runat="server"></asp:Label>
                </td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap34" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Eff_34" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_34" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                
                <td class="auto-style260" width="32">34</td>
                <td class="auto-style256" colspan="2" width="321">BH/UBM ratio</td>
                <td class="auto-style243" width="160">0.85~1.1</td>
                <td class="auto-style244">1</td>
                <td class="auto-style245">
                    <asp:Label ID="lab_Man_12" runat="server"></asp:Label>
                </td>
                <td class="auto-style288">
                    <asp:Label ID="lab_gap35" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Eff_35" runat="server"></asp:Label>
                </td>
                <td class="auto-style247">
                    <asp:Label ID="lab_Pot_35" runat="server"></asp:Label>
                </td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
                <td class="auto-style246">　</td>
            </tr>
            <tr height="22">
                <td class="style-keyitem" height="200" rowspan="8" width="51"><span style='writing-mode:tb-rl;'>Outgoing Criteria</span></td>
                <td class="auto-style260" width="32">35</td>
                <td class="auto-style256" colspan="2" width="321">LF Bump Ag% target</td>
                <td class="auto-style223" colspan="2">+/-0.5</td>
                <td class="auto-style213">
                    <asp:Label ID="lab_Q_RE26" runat="server"></asp:Label>
                </td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap36" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Eff_36" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_36" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">36</td>
                <td class="auto-style256" colspan="2" width="321">Bump Height(um)</td>
                <td class="auto-style263" colspan="2" width="274">+/-10%</td>
                <td class="auto-style264">
                    <asp:Label ID="lab_APP_10" runat="server"></asp:Label>
                </td>
                <td class="auto-style290">
                    <asp:Label ID="lab_gap37" runat="server"></asp:Label>
                </td>
                <td class="auto-style266">
                    <asp:Label ID="lab_Eff_37" runat="server"></asp:Label>
                </td>
                <td class="auto-style266">
                    <asp:Label ID="lab_Pot_37" runat="server"></asp:Label>
                </td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">37</td>
                <td class="auto-style256" colspan="2" width="321">Bump diameter</td>
                <td class="auto-style223" colspan="2">+/-10%</td>
                <td class="auto-style213">
                    <asp:Label ID="lab_APP_12" runat="server"></asp:Label>
                </td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap38" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Eff_38" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_38" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">38</td>
                <td class="auto-style256" colspan="2" width="321">Bump Coplanarity<span style="mso-spacerun:yes">&nbsp;</span></td>
                <td class="auto-style263" colspan="2" width="274">&lt;20 um</td>
                <td class="auto-style264">
                    <asp:Label ID="lab_Man_13" runat="server"></asp:Label>
                </td>
                <td class="auto-style290">
                    <asp:Label ID="lab_gap39" runat="server"></asp:Label>
                </td>
                <td class="auto-style266"><asp:Label ID="lab_Eff_39" runat="server"></asp:Label>
                </td>
                <td class="auto-style266">
                    <asp:Label ID="lab_Pot_39" runat="server"></asp:Label>
                </td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
            </tr>
            <tr height="34">
                <td class="auto-style267" height="34" width="32">39</td>
                <td class="auto-style256" colspan="2" width="321">Bump Shear Strenght</td>
                <td class="auto-style223" colspan="2">LF: &gt;2.5 g/mil^2</td>
                <td class="auto-style213">
                    <asp:Label ID="lab_Man_14" runat="server"></asp:Label>
                </td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap40" runat="server"></asp:Label>
                </td>
                <td class="auto-style214"><asp:Label ID="lab_Eff_40" runat="server" ></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_40" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">40</td>
                <td class="auto-style256" colspan="2" width="321">Bump void<span style="mso-spacerun:yes">&nbsp;&nbsp;</span></td>
                <td class="auto-style268" colspan="2">&lt;10 %</td>
                <td class="auto-style264">
                    <asp:Label ID="lab_Man_15" runat="server"></asp:Label>
                </td>
                <td class="auto-style290">
                    <asp:Label ID="lab_gap41" runat="server"></asp:Label>
                </td>
                <td class="auto-style266"><asp:Label ID="lab_Eff_41" runat="server"></asp:Label>
                </td>
                <td class="auto-style266">
                    <asp:Label ID="lab_Pot_41" runat="server"></asp:Label>
                </td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
            </tr>
            <tr height="34">
                <td class="auto-style267" height="34" width="32">41</td>
                <td class="auto-style256" colspan="2" width="321">PI Rougness (Ra)</td>
                <td class="auto-style223" colspan="2">BGM3A:15~30nm</td>
                <td class="auto-style213">
                    <asp:Label ID="lab_Man_16" runat="server"></asp:Label>
                </td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap42" runat="server"></asp:Label>
                </td>
                <td class="auto-style214"><asp:Label ID="lab_Eff_42" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_42" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">42</td>
                <td class="auto-style256" colspan="2" width="321">Bump Resistance (POR capability)</td>
                <td class="auto-style269" colspan="2">
                    <asp:Label ID="lab_POR_10" runat="server"></asp:Label>
                </td>
                <td class="auto-style264">
                    <asp:Label ID="lab_Q_RD30" runat="server"></asp:Label>
                </td>
                <td class="auto-style290">
                    <asp:Label ID="lab_gap43" runat="server"></asp:Label>
                </td>
                <td class="auto-style266"><asp:Label ID="lab_Eff_43" runat="server"></asp:Label>
                </td>
                <td class="auto-style266">
                    <asp:Label ID="lab_Pot_43" runat="server"></asp:Label>
                </td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
            </tr>
            <tr height="22">
                <td class="style-keyitem" height="448" rowspan="15"><span style='writing-mode:tb-rl;'>Metrology Tool</span></td>
                <td class="auto-style260" rowspan="7" width="32">43</td>
                <td class="auto-style271" rowspan="7" width="129">August</td>
                <td class="auto-style272">Gross die</td>
                <td class="auto-style18">10~50000 ea</td>
                <td class="auto-style318">58~25747 ea</td>
                <td class="auto-style213">
                    <asp:Label ID="lab_Man_17" runat="server"></asp:Label>
                </td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap44" runat="server"></asp:Label>
                </td>
                <td class="auto-style214"><asp:Label ID="lab_Eff_44" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_44" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style273" height="22" width="192">Expose pad</td>
                <td class="auto-style274">-</td>
                <td class="auto-style319">NA</td>
                <td class="auto-style264">
                    <asp:Label ID="lab_Man_18" runat="server"></asp:Label>
                </td>
                <td class="auto-style290">
                    <asp:Label ID="lab_gap45" runat="server"></asp:Label>
                </td>
                <td class="auto-style266"><asp:Label ID="lab_Eff_45" runat="server"></asp:Label>
                </td>
                <td class="auto-style266">
                    <asp:Label ID="lab_Pot_45" runat="server"></asp:Label>
                </td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
            </tr>
            <tr height="42">
                <td class="auto-style275" height="42" width="192">PSV1(PI1/PBO1) opening</td>
                <td class="auto-style18">10~1000</td>
                <td class="auto-style318">22~240</td>
                <td class="auto-style213">
                    <asp:Label ID="lab_APP_21_2" runat="server"></asp:Label>
                </td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap46" runat="server"></asp:Label>
                </td>
                <td class="auto-style214"><asp:Label ID="lab_Eff_46" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_46" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style273" height="22" width="192">Bump diameter</td>
                <td class="auto-style274">10~1000</td>
                <td class="auto-style319">84~127</td>
                <td class="auto-style264">
                    <asp:Label ID="lab_APP_11_2" runat="server"></asp:Label>
                </td>
                <td class="auto-style290">
                    <asp:Label ID="lab_gap47" runat="server"></asp:Label>
                </td>
                <td class="auto-style266"><asp:Label ID="lab_Eff_47" runat="server"></asp:Label>
                </td>
                <td class="auto-style266">
                    <asp:Label ID="lab_Pot_47" runat="server"></asp:Label>
                </td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
            </tr>
            <tr height="42">
                <td class="auto-style275" height="42" width="192">Low SPEC of min RDL Width</td>
                <td class="auto-style18">2</td>
                <td class="auto-style318">10~78</td>
                <td class="auto-style213">-</td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap48" runat="server"></asp:Label>
                </td>
                <td class="auto-style214"><asp:Label ID="lab_Eff_48" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_48" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="42">
                <td class="auto-style275" height="42" width="192">Low SPEC of min RDL Spacing</td>
                <td class="auto-style274">2</td>
                <td class="auto-style319">10~29</td>
                <td class="auto-style264">-</td>
                <td class="auto-style290">
                    <asp:Label ID="lab_gap49" runat="server"></asp:Label>
                </td>
                <td class="auto-style266"><asp:Label ID="lab_Eff_49" runat="server"></asp:Label>
                </td>
                <td class="auto-style266">
                    <asp:Label ID="lab_Pot_49" runat="server"></asp:Label>
                </td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
            </tr>
            <tr height="42">
                <td class="auto-style275" height="42" width="192">Min RDL Width/Spacing pattern &amp; location</td>
                <td class="auto-style18">-</td>
                <td class="auto-style318">-</td>
                <td class="auto-style213">-</td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap50" runat="server"></asp:Label>
                </td>
                <td class="auto-style214"><asp:Label ID="lab_Eff_50" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_50" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style276" height="88" rowspan="4" width="32">44</td>
                <td class="auto-style271" rowspan="4" width="129">RVSI</td>
                <td class="auto-style272">Gross die</td>
                <td class="auto-style274">10~50000 ea</td>
                <td class="auto-style319">58~25747 ea</td>
                <td class="auto-style264">
                    <asp:Label ID="lab_Man_19" runat="server"></asp:Label>
                </td>
                <td class="auto-style290">
                    <asp:Label ID="lab_gap51" runat="server"></asp:Label>
                </td>
                <td class="auto-style266"><asp:Label ID="lab_Eff_51" runat="server"></asp:Label>
                </td>
                <td class="auto-style266">
                    <asp:Label ID="lab_Pot_51" runat="server"></asp:Label>
                </td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style273" height="22" width="192">Bump count per die</td>
                <td class="auto-style18">1~500K</td>
                <td class="auto-style318">172~18510</td>
                <td class="auto-style232">
                    <asp:Label ID="lab_DIFD30" runat="server" CssClass="auto-style291"></asp:Label>
                </td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap52" runat="server"></asp:Label>
                </td>
                <td class="auto-style214"><asp:Label ID="lab_Eff_52" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_52" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style273" height="22" width="192">Bump height</td>
                <td class="auto-style274">3~1000</td>
                <td class="auto-style319">65~108</td>
                <td class="auto-style264">
                    <asp:Label ID="lab_APP_09_2" runat="server"></asp:Label>
                </td>
                <td class="auto-style290">
                    <asp:Label ID="lab_gap53" runat="server"></asp:Label>
                </td>
                <td class="auto-style266"><asp:Label ID="lab_Eff_53" runat="server"></asp:Label>
                </td>
                <td class="auto-style266">
                    <asp:Label ID="lab_Pot_53" runat="server"></asp:Label>
                </td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style273" height="22" width="192">Bump diameter</td>
                <td class="auto-style18">20~1000</td>
                <td class="auto-style318">84~138</td>
                <td class="auto-style213">
                    <asp:Label ID="lab_APP_11_3" runat="server"></asp:Label>
                </td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap54" runat="server"></asp:Label>
                </td>
                <td class="auto-style214"><asp:Label ID="lab_Eff_54" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_54" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">45</td>
                <td class="auto-style271" width="129">RS meter</td>
                <td class="auto-style277" width="192">Bump diameter</td>
                <td class="auto-style274">25~1000</td>
                <td class="auto-style319">30~326</td>
                <td class="auto-style264">
                    <asp:Label ID="lab_APP_11_4" runat="server"></asp:Label>
                </td>
                <td class="auto-style290">
                    <asp:Label ID="lab_gap55" runat="server"></asp:Label>
                </td>
                <td class="auto-style266"><asp:Label ID="lab_Eff_55" runat="server"></asp:Label>
                </td>
                <td class="auto-style266">
                    <asp:Label ID="lab_Pot_55" runat="server"></asp:Label>
                </td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
            </tr>
            <tr height="38">
                <td class="auto-style257" height="38" width="32">46</td>
                <td class="auto-style271" width="129">Void (X-ray)</td>
                <td class="auto-style277" width="192">Bump diameter</td>
                <td class="auto-style12" width="160">CS/DF site: 80~1000<br />
                    CH site: 10~1000</td>
                <td class="auto-style278" width="114">CS/DF: 80~326<br />
                    CH: 30~326</td>
                <td class="auto-style213">
                    <asp:Label ID="lab_APP_11_5" runat="server"></asp:Label>
                </td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap56" runat="server"></asp:Label>
                </td>
                <td class="auto-style214"><asp:Label ID="lab_Eff_56" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_56" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">47</td>
                <td class="auto-style271" width="129">Bump shear</td>
                <td class="auto-style277" width="192">Bump diameter</td>
                <td class="auto-style279" width="160">3~400</td>
                <td class="auto-style319">23~326</td>
                <td class="auto-style264">
                    <asp:Label ID="lab_APP_11_6" runat="server"></asp:Label>
                </td>
                <td class="auto-style290">
                    <asp:Label ID="lab_gap57" runat="server"></asp:Label>
                </td>
                <td class="auto-style266"><asp:Label ID="lab_Eff_57" runat="server"></asp:Label>
                </td>
                <td class="auto-style266">
                    <asp:Label ID="lab_Pot_57" runat="server"></asp:Label>
                </td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
            </tr>
            <tr height="44">
                <td class="auto-style280" height="44" width="32">48</td>
                <td class="auto-style271" width="129">Bump pull</td>
                <td class="auto-style277" width="192">Bump diameter</td>
                <td class="auto-style12" width="160">83-140, 200-326</td>
                <td class="auto-style318">83-140, 200-326</td>
                <td class="auto-style213">
                    <asp:Label ID="lab_APP_11_7" runat="server"></asp:Label>
                </td>
                <td class="auto-style281"><asp:Label ID="lab_gap58" runat="server"></asp:Label>
                </td>
                <td class="auto-style214"><asp:Label ID="lab_Eff_58" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_58" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="42">
                <td class="style-keyitem" height="86" rowspan="3" width="51"><span style='writing-mode:tb-rl;'>AB Requirement</span></td>
                <td class="auto-style260" width="32">49</td>
                <td class="auto-style271" width="129">Bump to bump space</td>
                <td class="auto-style283" width="192">　</td>
                <td class="auto-style279" width="160">FCCSP &gt;19um<br />
                    FCBGA&gt;20um</td>
                <td class="auto-style284">
                    <asp:Label ID="lab_POR_48" runat="server"></asp:Label>
                </td>
                <td class="auto-style264">
                    <asp:Label ID="lab_Man_20" runat="server"></asp:Label>
                </td>
                <td class="auto-style290">
                    <asp:Label ID="lab_gap59" runat="server"></asp:Label>
                </td>
                <td class="auto-style266"><asp:Label ID="lab_Eff_59" runat="server"></asp:Label>
                </td>
                <td class="auto-style266">
                    <asp:Label ID="lab_Pot_59" runat="server"></asp:Label>
                </td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style251" height="22">50</td>
                <td class="auto-style285">SMO</td>
                <td class="auto-style285">　</td>
                <td class="auto-style12" width="160">-</td>
                <td class="auto-style216">
                    <asp:Label ID="lab_POR_49" runat="server"></asp:Label>
                </td>
                <td class="auto-style213">
                    <asp:Label ID="lab_Man_21" runat="server"></asp:Label>
                </td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap60" runat="server"></asp:Label>
                </td>
                <td class="auto-style214"><asp:Label ID="lab_Eff_60" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_60" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style251" height="22">51</td>
                <td class="auto-style285">UBM/SMO ratio</td>
                <td class="auto-style285">　</td>
                <td class="auto-style279" width="160">0.85 - 1.1</td>
                <td class="auto-style284">
                    <asp:Label ID="lab_POR_36" runat="server"></asp:Label>
                </td>
                <td class="auto-style264">
                    <asp:Label ID="lab_Man_22" runat="server"></asp:Label>
                </td>
                <td class="auto-style290">
                    <asp:Label ID="lab_gap61" runat="server"></asp:Label>
                </td>
                <td class="auto-style266"><asp:Label ID="lab_Eff_61" runat="server"></asp:Label>
                </td>
                <td class="auto-style266">
                    <asp:Label ID="lab_Pot_61" runat="server"></asp:Label>
                </td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
            </tr>
            <tr height="42">
                <td class="style-keyitem" height="128" rowspan="4" width="51"><span style='writing-mode:tb-rl;'>Special Requirement</span></td>
                <td class="auto-style260" width="32">52</td>
                <td class="auto-style271" width="129">Process / Machine</td>
                <td class="auto-style283" width="192">　</td>
                <td class="auto-style12" width="160">-</td>
                <td class="auto-style216">
                    <asp:Label ID="lab_POR_38" runat="server"></asp:Label>
                </td>
                <td class="auto-style213">NA</td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap62" runat="server"></asp:Label>
                </td>
                <td class="auto-style214"><asp:Label ID="lab_Eff_62" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_62" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">53</td>
                <td class="auto-style271" width="129">Material</td>
                <td class="auto-style283" width="192">　</td>
                <td class="auto-style279" width="160">-</td>
                <td class="auto-style284">
                    <asp:Label ID="lab_POR_39" runat="server"></asp:Label>
                </td>
                <td class="auto-style264">NA</td>
                <td class="auto-style290">
                    <asp:Label ID="lab_gap63" runat="server"></asp:Label>
                </td>
                <td class="auto-style266"><asp:Label ID="lab_Eff_63" runat="server"></asp:Label>
                </td>
                <td class="auto-style266">
                    <asp:Label ID="lab_Pot_63" runat="server"></asp:Label>
                </td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
            </tr>
            <tr height="42">
                <td class="auto-style287" height="42" width="32">54</td>
                <td class="auto-style271" width="129">Measurement tool</td>
                <td class="auto-style283" width="192">　</td>
                <td class="auto-style12" width="160">-</td>
                <td class="auto-style216">
                    <asp:Label ID="lab_POR_40" runat="server"></asp:Label>
                </td>
                <td class="auto-style213">NA</td>
                <td class="auto-style289">
                    <asp:Label ID="lab_gap64" runat="server"></asp:Label>
                </td>
                <td class="auto-style214"><asp:Label ID="lab_Eff_64" runat="server"></asp:Label>
                </td>
                <td class="auto-style214">
                    <asp:Label ID="lab_Pot_64" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
                <td class="auto-style14">　</td>
            </tr>
            <tr height="22">
                <td class="auto-style255" height="22" width="32">55</td>
                <td class="auto-style271" width="129">Reliability</td>
                <td class="auto-style283" width="192">　</td>
                <td class="auto-style279" width="160">-</td>
                <td class="auto-style284">
                    <asp:Label ID="lab_POR_41" runat="server"></asp:Label>
                </td>
                <td class="auto-style264">NA</td>
                <td class="auto-style290">
                    <asp:Label ID="lab_gap65" runat="server"></asp:Label>
                </td>
                <td class="auto-style266"><asp:Label ID="lab_Eff_65" runat="server"></asp:Label>
                </td>
                <td class="auto-style266">
                    <asp:Label ID="lab_Pot_65" runat="server"></asp:Label>
                </td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
                <td class="auto-style265">　</td>
            </tr>
        </table>
        
             <br />
             
            
        <br />
      
      </asp:Panel>
       <asp:Panel ID="Panel2" runat="server">
            <asp:Button ID="SAVE" runat="server" class="blueButton button2" Height="25px" OnClick="SAVE_Click" Text="Save" Width="100px" />
       </asp:Panel>
      
         
            
            
      
   <div id="dialog"><iframe src="" frameborder="0" height="100%" width="100%" id="dialogFrame" scrolling="auto"></iframe> </div>      
         </form>
    </body>
</html>

