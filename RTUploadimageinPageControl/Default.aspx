<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxRichEdit.v19.1, Version=19.1.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxRichEdit" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">



    <style type="text/css">
        .ruler {
            display: none;
            /* Chat containers */
        }

        .richClass .dxbs-tabs-scrollable {
            display: none;
        }

        .container {
            border: 2px solid #dedede;
            background-color: #f1f1f1;
            border-radius: 5px;
            padding: 10px;
            margin: 10px 0;
        }

        /* Darker chat container */
        .darker {
            border-color: #ccc;
            background-color: #ddd;
            margin-left: +30px;
        }

        /* Clear floats */
        .container::after {
            content: "";
            clear: both;
            display: table;
        }

        /* Style images */
        .container img {
            float: left;
            max-width: 60px;
            width: 100%;
            margin-right: 20px;
            border-radius: 50%;
        }
            /* Style the right image */
            .container img.right {
                float: right;
                margin-left: 20px;
                margin-right: 0;
            }

        /* Style time text */
        .time-right {
            float: right;
            color: #aaa;
        }

        /* Style time text */
        .time-left {
            float: left;
            color: #999;
        }


        .maxImage {
            max-height: 700px;
            max-width: 1260px;
        }
    </style>
    <asp:Panel ID="Panel1" Visible="false" runat="server">
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>

    <div class="text-center">
        <asp:Label ID="LabelTopic" CssClass="text-center" runat="server" Text="Form" Font-Size="XX-Large"></asp:Label><br />
        <asp:Label ID="LabelErrormessage" CssClass="text-center" runat="server" Font-Bold="true" ForeColor="Red"></asp:Label>
    </div>
    <br />
    <div id="loader" class="center"></div>
    <dx:BootstrapPageControl runat="server" ID="pageControlV" ClientInstanceName="pageControlV" Width="100%" ActiveTabIndex="0">
        <TabPages>
            <dx:BootstrapTabPage Text="Details" Visible="true">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                        <dx:BootstrapFormLayout runat="server" ID="FormLayoutDataBinding">
                            <Items>
                                <dx:BootstrapLayoutItem Caption="Erstellt von" FieldName="Caption_Erstellt_von" Name="BsTbErstellt_von" ColSpanMd="4">
                                    <ContentCollection>
                                        <dx:ContentControl>
                                            <dx:BootstrapTextBox runat="server" ID="BsTbErstellt_von" ReadOnly="true" />
                                        </dx:ContentControl>
                                    </ContentCollection>
                                </dx:BootstrapLayoutItem>



                                <dx:BootstrapLayoutItem Caption="Beschreibung" FieldName="Caption_Beschreibung" ColSpanMd="12">
                                    <ContentCollection>
                                        <dx:ContentControl>
                                           <dx:BootstrapRichEdit ID="BootstrapLoesung" SettingsDocumentSelector-CommonSettings-InitialFolder="\rtf" CssClasses-Control="richClass" Settings-Bookmarks-Color="Red" ClientInstanceName="richy" WorkDirectory="\Schnellbausteine" ConfirmOnLosingChanges="" RibbonMode="OneLineRibbon" Height="200" runat="server" ShowConfirmOnLosingChanges="False" CssClassesEditor-ColorEdit="Red">

                                                    <Settings Views-ViewType="Simple">
                                                        <HorizontalRuler ShowTabs="False"></HorizontalRuler>
                                                        <AutoCorrect DetectUrls="True" ReplaceTextAsYouType="True"></AutoCorrect>
                                                        <RangePermissions Visibility="Auto"></RangePermissions>
                                                        <Views ViewType="Simple"></Views>
                                                    </Settings>
                                                    <RibbonTabs>
                                                        <dx:BSRERHomeTab Text="">
                                                            <Groups>
                                                                <dx:BSRERUndoGroup>
                                                                    <Items>
                                                                        <dx:BSRERUndoCommand />
                                                                        <dx:BSRERRedoCommand />
                                                                    </Items>
                                                                </dx:BSRERUndoGroup>
                                                                <dx:BSRERFileCommonGroup>
                                                                    <Items>

                                                                        <dx:BSREROpenCommand Size="Large" Text="Öffnen" />
                                                                        <dx:BSRERPrintCommand Size="Large" Text="Drucken" ToolTip="Ctrl + P" />
                                                                    </Items>
                                                                </dx:BSRERFileCommonGroup>

                                                                <dx:BSRERFontGroup>
                                                                    <Items>

                                                                        <dx:BSRERFontNameCommand>
                                                                            <PropertiesComboBox DropDownStyle="DropDown" ValueType="System.Object"></PropertiesComboBox>
                                                                        </dx:BSRERFontNameCommand>
                                                                        <dx:BSRERFontSizeCommand>
                                                                            <PropertiesComboBox DropDownStyle="DropDown" ValueType="System.Double"></PropertiesComboBox>
                                                                        </dx:BSRERFontSizeCommand>
                                                                        <dx:BSRERFontBoldCommand />
                                                                        <dx:BSRERFontColorCommand>
                                                                        </dx:BSRERFontColorCommand>
                                                                        <dx:BSRERFontItalicCommand />
                                                                        <dx:BSRERFontUnderlineCommand />
                                                                        <dx:BSRERIncreaseFontSizeCommand />
                                                                        <dx:BSRERDecreaseFontSizeCommand />
                                                                    </Items>
                                                                </dx:BSRERFontGroup>

                                                                <dx:BSRERAlignmentGroup>
                                                                    <Items>
                                                                        <dx:BSRERAlignCenterCommand />
                                                                        <dx:BSRERAlignLeftCommand />
                                                                        <dx:BSRERAlignRightCommand />
                                                                        <dx:BSRERAlignJustifyCommand />

                                                                    </Items>
                                                                </dx:BSRERAlignmentGroup>

                                                                <dx:BSRERInsertFieldsGroup>
                                                                    <Items>
                                                                        <dx:BSRERInsertPictureCommand />

                                                                        <dx:BSRERShowHyperlinkFormCommand Text="Link" />
                                                                    </Items>
                                                                </dx:BSRERInsertFieldsGroup>
                                                                <dx:BSRERViewGroup>
                                                                    <Items>
                                                                        <dx:BSRERToggleFullScreenCommand />
                                                                    </Items>
                                                                </dx:BSRERViewGroup>
                                                            </Groups>
                                                        </dx:BSRERHomeTab>

                                                        <dx:BSRERFloatingObjectsTab Visible="false"></dx:BSRERFloatingObjectsTab>
                                                        <dx:BSRERPageLayoutTab Visible="true"></dx:BSRERPageLayoutTab>

                                                        <dx:BSRERHeaderAndFooterTab Visible="false"></dx:BSRERHeaderAndFooterTab>
                                                        <dx:BSRERTableDesignTab Visible="false"></dx:BSRERTableDesignTab>
                                                    </RibbonTabs>
                                                </dx:BootstrapRichEdit>
                                        </dx:ContentControl>
                                    </ContentCollection>
                                </dx:BootstrapLayoutItem>




                            </Items>
                        </dx:BootstrapFormLayout>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapTabPage>

            <dx:BootstrapTabPage Text="Weiterleitung" Visible="true">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                        <dx:BootstrapFormLayout runat="server" ID="FormLayoutDataBindingV">
                            <Items>
                                <dx:BootstrapLayoutGroup Caption="Weiterleiten an">
                                    <Items>
                                        <dx:BootstrapLayoutItem Caption="anderen Mitarbeiter">
                                            <ContentCollection>
                                                <dx:ContentControl>
                                                </dx:ContentControl>
                                            </ContentCollection>
                                        </dx:BootstrapLayoutItem>


                                    </Items>

                                </dx:BootstrapLayoutGroup>
                            </Items>
                        </dx:BootstrapFormLayout>


                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapTabPage>

            <dx:BootstrapTabPage Text="Zusatzfelder IT">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                        <asp:Panel ID="PanelUCFields" runat="server"></asp:Panel>

                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapTabPage>

        </TabPages>
    </dx:BootstrapPageControl>

</asp:Content>
