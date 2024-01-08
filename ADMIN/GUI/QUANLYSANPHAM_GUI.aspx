<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QUANLYSANPHAM_GUI.aspx.cs" Inherits="QUANLYBANHANG02.ADMIN.GUI.QUANLYSANPHAM_GUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        
        .container {
            max-width: 960px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
        .label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        
        .textbox,
        .dropdown,
        .upload,
        .description {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }
        
        .table {
            width: 100%;
            height: 70vh;
        }
        
        .description {
            height: 200px;
            resize: vertical;
        }
        
        .btn-group {
            margin-top: 10px;
        }
        
        .btn-group button {
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-right: 10px;
        }
        
        .gridview-container {
    display: flex;
    justify-content: center;
    overflow-x: auto;
    max-width: 100%;
    overflow: auto;
}

.gridview {
    width: 100%; 
    margin-top: 20px;
    border-collapse: collapse;
    table-layout: fixed;
}

.gridview th,
.gridview td {
        padding: 8px;
        border-bottom: 1px solid #ddd;
        text-align: left;
        white-space: normal;
        overflow: visible;
        text-overflow: ellipsis;
    }

.gridview th {
    background-color: #f2f2f2;
}

.gridview img {
    max-width: 100px;
    max-height: 100px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div>
                <label class="label" for="drpDANHMUC">Mã danh mục</label>
                <asp:DropDownList ID="drpDANHMUC" runat="server" CssClass="dropdown"></asp:DropDownList>
            </div>
            <div>
                <label class="label" for="txtMASANPHAM">Mã sản phẩm</label>
                <asp:TextBox ID="txtMASANPHAM" runat="server" CssClass="textbox"></asp:TextBox>
            </div>
            <div>
                <label class="label" for="txtTENSANPHAM">Tên sản phẩm</label>
                <asp:TextBox ID="txtTENSANPHAM" runat="server" CssClass="textbox"></asp:TextBox>
            </div>
            <div>
                <label class="label" for="txtDONGIA">Đơn giá</label>
                <asp:TextBox ID="txtDONGIA" runat="server" CssClass="textbox"></asp:TextBox>
            </div>
            <div>
                <label class="label" for="txtSOLUONG">Số lượng</label>
                <asp:TextBox ID="txtSOLUONG" runat="server" CssClass="textbox"></asp:TextBox>
            </div>
            <div>
                <label class="label" for="FileANHSANPHAM">Upload ảnh</label>
                <asp:FileUpload ID="FileANHSANPHAM" runat="server" CssClass="upload" />
            </div>
            <div>
                <label class="label" for="txtMOTA">Mô tả</label>
                <asp:TextBox ID="txtMOTA" runat="server" CssClass="description"></asp:TextBox>
            </div>
            <div class="btn-group">
                <asp:Button ID="btnInsert" runat="server" Text="INSERT" OnClick="btnInsert_Click" CssClass="btn-insert" />
                <asp:Button ID="btnDelete" runat="server" Text="DELETE" OnClick="btnDelete_Click" CssClass="btn-delete" />
                <asp:Button ID="btnUpdate" runat="server" Text="UPDATE" OnClick="btnUpdate_Click" CssClass="btn-update" />
            </div>
            
        </div>
        <div class="gridview-container">
                 <asp:GridView ID="grvSANPHAM" runat="server" CssClass="gridview" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="MASANPHAM" HeaderText="Mã sản phẩm" />
                        <asp:BoundField DataField="TENSANPHAM" HeaderText="Tên sản phẩm" />
                        <asp:BoundField DataField="DONGIA" HeaderText="Đơn giá" />
                        <asp:BoundField DataField="SOLUONG" HeaderText="Số lượng" />
                        <asp:ImageField DataAlternateTextField="HINHANH" DataImageUrlField="HINHANH" DataImageUrlFormatString="../../images/{0}" HeaderText="Hình ảnh">
                        </asp:ImageField>
                    </Columns>
                </asp:GridView>
            </div>
    </form>
</body>
</html>