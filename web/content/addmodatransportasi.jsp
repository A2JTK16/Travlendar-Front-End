<%-- 
    Document   : addtraveller
    Created on : Oct 13, 2017, 6:09:15 PM
    Author     : mufidjamaluddin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <center><h1 class="judul-manage">Input User</h1></center>
        <form action="${pageContext.request.contextPath}/moda?input=baru" method="post">
            <table style="margin:20px auto;">
		<tr>
                    <td>Kode Transportasi (char(2))</td>
                    <td><input type="text" name="kode_trans" values=""></td>
		</tr>
		<tr>
                    <td>Nama Transportasi (string)</td>
                    <td><input type="text" name="nama_trans" values=""></td>
		</tr>
                <tr>
                    <td>Kecepatan (float)</td>
                    <td><input type="text" name="kecepatan" values=""></td>
		</tr>

		<tr>
                    <td></td>
                    <td><input type="submit" value="Tambah"></td>
		</tr>
            </table>
	</form>	