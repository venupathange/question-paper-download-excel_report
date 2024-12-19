<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="true"  
   EnableEventValidation="false" CodeFile="Paperdownload.aspx.cs" Inherits="Reports_Paperdownload"  
   ValidateRequest="false" %>    
<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="Server">
    <TheoremWC:ToolBar ID="toolBar" runat="server" PageTitle="Configure Online Payment Paid Details">
        <asp:UpdatePanel ID="update1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <table width="98%" style="margin: 0px 0px 0px 0px" border="0">
                    <tr class="btn">
                    <td align="left">
                          <asp:LinkButton ID="btnPaymentDetails" OnClick="btnReport_Click" ValidationGroup="Report"  
                              runat="server" Text="<img id='img' style='vertical-align:middle' src='../Images/pdf.gif' /> Report"  
                 Style="vertical-align: middle; padding: 8px 16px; background-color: #4CAF50; color: white; border: none; border-radius: 4px; cursor: pointer;">
                           </asp:LinkButton>  
                    
                      </td>
                    </tr>
                  </table>
               </ContentTemplate>
               <Triggers>
            <asp:PostBackTrigger ControlID="btnPaymentDetails" />
             <%--<asp:PostBackTrigger ControlID="btnPaidChallan" />--%>
            </Triggers>
            </asp:UpdatePanel>
          </TheoremWC:ToolBar> 
         <TheoremWC:PageContent ID="pc" runat="server">
        <table width="100%">
            <tr>  
           <td width="16%" align="left">  
              <label for="txtPaymentDate"><b>Date</b></label><br />  
              <asp:TextBox ID="txtPaymentDate" OnBlur="OnBlur(this);" OnFocus="OnFocus(this);"  
                Font-Size="Small" Width="150px" runat="server" placeholder="--ALL--" class="date-input">  
              </asp:TextBox>  
              <ajaxToolkit:CalendarExtender ID="cePaymentDate" runat="server"  
                TargetControlID="txtPaymentDate" EnabledOnClient="true" Format="dd/MM/yyyy" />  
              <br />  
              <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server"  
                TargetControlID="txtPaymentDate" FilterType="Numbers, Custom" ValidChars="/" />  
           </td>
           
               <td align="left" width="30%">
                    <b>Session</b>
                    <br />
                    <asp:DropDownList ID="ddlSession" runat="server" DataTextField="Name" DataValueField="Id" Width="60%">
                    <asp:ListItem Text="Morning" Value="1"></asp:ListItem>
                    <asp:ListItem Text="AfterNoon" Value="2"></asp:ListItem>
                    </asp:DropDownList>
                </td>
           </tr>
            </table>  
            <Trigger>
            <asp:AsyncPostBackTrigger ControlID="LinkButton1" EventName="Click" /> 
            </Trigger>
      </TheoremWC:PageContent>
</asp:Content> 
          
    
 