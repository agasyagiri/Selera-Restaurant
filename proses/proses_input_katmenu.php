<?php
include "connect.php";
$jenismenu = (isset($_POST['jenismenu'])) ? htmlentities($_POST['jenismenu']) : "";
$katmenu = (isset($_POST['katmenu'])) ? htmlentities($_POST['katmenu']) : "";

if (!empty($_POST['input_katmenu_validate'])) {
    $select = mysqli_query($conn, "SELECT kategori_menu FROM tb_kategori_menu WHERE kategori_menu = '$katmenu'");
    if (mysqli_num_rows($select) > 0) {
        $message = '<script>alert("Kategori telah tersedia");
                    window.location="../katmenu"</script>';
    } else {
        $query = mysqli_query($conn, "INSERT INTO tb_kategori_menu (jenis_menu,kategori_menu) values ('$jenismenu','$katmenu')");
        if ($query) {
            $message = '<script>alert("Kategori Menu Berhasil Ditambah");
                    window.location="../katmenu"</script>';
        } else {
            $message = '<script>alert("Kategori Menu Gagal Ditambah")
                        window.location="../katmenu"</script>';
        }
    }
}
echo $message;
?>