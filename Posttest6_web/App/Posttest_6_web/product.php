<?php
include 'config.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Produk</title>
    <link rel="stylesheet" href="gaya.css">
</head>

<body style="background-color: #2596be;">

    <div class ="container"id="home">
        <div class="navbar" style="border-bottom: 3px solid var(--primary-color);">
            <h2 id = "judul" class = "logo"> LIST Order </h2>
                <nav>
                    <ul>
                        <li><a href="read.php">Back</a></li>
                    </ul>
                </nav>
        </div>

    <table class = "content-table">
        <thead>
            <tr >
                <td colspan = 8 align = center>
                    <form action="" method="get">
                        <label>Cari Nama Pelanggan :</label>
                        <input type="text" name="cari">
                    </form>
                </td>
            </tr>
            <tr>
                <th>No</th>
                <th>Nama</th>
                <th>Jenis pesanan</th>
                <th>Menu</th>
                <th>Jumlah</th>
                <th>Alamat</th>
                <th>Email</th>
                <th>No WA</th>
                <th>Status</th>
                <th>Gambar</th>
                <th class = "th">Action</th>
            </tr>
        </thead>
            <tbody>
            <?php
            $no = 1;
            $query = mysqli_query($koneksi, "SELECT * FROM pemesanan");

            if (isset($_GET['cari'])){
                $query = mysqli_query($koneksi, "SELECT * FROM pemesanan where nama like '%".
                    $_GET['cari']."%'");
            }
            while($row = mysqli_fetch_assoc($query)) {
            ?>
                <tr>
                    <td><?= $no; ?></td>
                    <td><?= $row['nama']; ?></td>
                    <td><?= $row['pesanan']; ?></td>
                    <td><?= $row['menu']; ?></td>
                    <td><?= $row['jumlah']; ?></td>
                    <td><?= $row['alamat']; ?></td>
                    <td><?= $row['email']; ?></td>
                    <td><?= $row['no_wa']; ?></td>
                    <td><?= $row['status']; ?></td>
                    <td><img src="foto/<?=$data['foto']?>" alt="" width="100px"></td>
                    <td>
                        <a href="update_menu.php?id=<?php echo $row['id']; ?>">Edit</a>
                        <a href="delete.php?id=<?php echo $row['id']; ?>" onclick="return confirm('Anda yakin akan menghapus data ini?')">Hapus</a>
                    </td>
                </tr>
            <?php
            }
        ?>
            <tr >
                <td colspan = 8 align = center><a href="create_menu.php">Tambah Data</a></td>
            </tr>
            </tbody>
    </table>
    </div>
</body>

</html>