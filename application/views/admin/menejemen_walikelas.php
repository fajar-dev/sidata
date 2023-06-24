<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Manajemen Wali Kelas
      <small></small>
    </h1>
  </section>

  <!-- Main content -->
  <section class="content">
    <!-- Small boxes (Stat box) -->
    <div class="row">
      <div class="col-md-12">
        <div class="box box-info">

          <div class="box-body">
            <div class="row">
              <div class="col-md-12">

                <div class="box-header with-border">
                  <h3 class="box-title"><span class="fa fa-database"></span>&nbsp&nbsp&nbspData Walikelas</h3>
                  <!--<a target="" href="#" class="btn btn-primary pull-right" style="margin-top: -10px" data-toggle="modal" data-target=".bs-example-modal-tambah">Tambah Dosen</a>-->
                  <a target="" href="#" class="btn btn-primary pull-right" style="margin-top: -10px" data-toggle="modal" data-target="#exampleModal">Registrasi WaliKelas</a>
                </div>

                <div class="box-body">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="row">
                        <table class="table table-bordered table-hover table-striped"  cellspacing="0" width="100%" id="table_user">
                          <thead>
                            <tr>
                              <th>No</th>
                              <th>Nama</th>
                              <th>NIP</th>
                              <th>Password</th>
                              <th>Opsi</th>
                            </tr>
                          </thead>
                          <tbody>
                            <?php $no = 1; foreach ($data_wk as $list_user) { ?>
                            <tr>
                              <td><?php echo $no++; ?></td>
                              <td><?php echo $list_user->nama; ?></td>
                              <td><?php echo $list_user->nip; ?></td>
                              <td><?php echo $list_user->password; ?></td>
                              <td>
                                <a class="btn btn-xs btn-danger" style="margin : 0px 10px 0px 10px" href="<?php echo base_url(); ?>admin/walikelas/hapus/<?php echo $list_user->id_walikelas; ?>" data-toggle="confirmation">Hapus</a>
                              </td>
                            </tr>
                            <?php } ?>
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
                

              </div>
            </div>
          </div>

        </div>
      </div>
    </div>
  </section>
  <!-- /.content -->
</div>

<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-md">
      <div class="modal-content">

        <div class="box box-info">
          <div class="box-header with-border">
            <h3 class="box-title">Tambah Wali Kelas</h3>
          </div>
          <!-- /.box-header -->
          <!-- form start -->
          <form class="form-horizontal" method="post" action="<?php echo base_url(); ?>admin/walikelas/registrasi_user">
            <div class="box-body">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">Nama</label>
                <div class="col-sm-9">
                  <input type="text" class="form-control" id="nama" placeholder="Nama" name="nama">
                </div>
              </div><div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">NIP</label>
                <div class="col-sm-9">
                  <input type="text" class="form-control" id="nip" placeholder="NIP" name="nip">
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">Password</label>
                <div class="col-sm-9">
                  <input type="text" class="form-control" id="username" placeholder="Password" name="password">
                </div>
              </div>
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
              <button type="submit" class="btn btn-info pull-right">Daftar</button>
            </div>
            <!-- /.box-footer -->
          </form>
        </div>

      </div>
      <!-- /.modal-content -->
    </div>
</div>


