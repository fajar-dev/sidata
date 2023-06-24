<html>
  <head>
  	<meta charset="utf-8">
  	<title>Login</title>
    <link href="<?php echo base_url();?>/assets/css/bootstrap.min.css" rel="stylesheet">
  	<link href="<?php echo base_url();?>/assets/css/login.css" rel="stylesheet">
  	<script src="<?php echo base_url();?>/assets/js/jquaery.js"></script>
  	<script src="<?php echo base_url();?>/assets/js/bootstrap.js"></script>
    <script src="<?php echo base_url();?>/assets/js/login.js"></script>
  </head>

  <body style="background-color: #3560B1 !important;">
    <div class="container ">
      
      <div class="row d-flex justify-content-center">
        <div class="col-lg-6">
          <div class="card shadow border-0 mt-5">
          <div class="card-body text-center">
            <img class="img-responsive center-block" style="max-height: 150px;" src="<?php echo base_url();?>assets/img/logos.png" alt=""><br><br>
            <h5 class="fw-bold mb-4">Login Admin</h5>
              <div id="output"></div>
              <div class="form-box">
                <form action="<?php echo base_url();?>login/login_admin" method="post">
                    <input name="username" class="rounded" type="text" placeholder="Username" autocomplete="off" autofocus="on" required> <br>
                    <input name="password" class="mt-2 border rounded" type="password" placeholder="Password" autocomplete="off" required>
                    <div class="form-group mb-5">
                      <button class="btn btn-success w-100 login rounded" type="submit" >Login</button>
                    </div>
                    <a href="<?php echo base_url();?>login">Login Sebagai Siswa</a> | <a href="<?php echo base_url();?>login/walikelas">Login Sebagai Walikelas</a>
                </form>
              </div>
              <h2><?php echo $this->session->flashdata('message');?></h2> <?php echo $this->session->flashdata('message');?>
            </div>
          </div>
        </div>
      </div> 

    </div>
  </body>
  <script src="<?php echo base_url(); ?>/assets/other/jquery/dist/jquery.min.js"></script>
<script src="<?php echo base_url(); ?>/assets/other/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>/assets/other/fastclick/lib/fastclick.js"></script>
<script src="<?php echo base_url(); ?>/assets/other/datatables/datatables.js"></script>
<script src="<?php echo base_url(); ?>/assets/js/adminlte.min.js"></script>
<script src="<?php echo base_url(); ?>/assets/other/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<script src="<?php echo base_url(); ?>/assets/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="<?php echo base_url(); ?>/assets/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="<?php echo base_url(); ?>/assets/other/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="<?php echo base_url(); ?>/assets/js/pages/dashboard2.js"></script>
<script src="<?php echo base_url(); ?>/assets/js/demo.js"></script>
<script src="<?php echo base_url(); ?>/assets/other/bs-confirmation-master/bootstrap-confirmation.min.js"></script>
</html>
