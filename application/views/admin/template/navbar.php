<ul class="sidebar-menu">
  <li class="header">MAIN Menu</li>

  <?php if($this->session->userdata('role') == 1 ){?>
    <li class="<?php if($this->uri->segment(2) == ""){echo "active";} ?> treeview">
      <a href="<?php echo base_url(); ?>admin/kelas">
      <i class="fa fa-book"></i> <span>Menejemen Kelas</span>
      </a>
    </li>
  <?php }elseif($this->session->userdata('role') == 2){ ?>
    <li class="<?php if($this->uri->segment(2) == ""){echo "active";} ?> treeview">
    <a href="<?php echo base_url(); ?>admin/siswa/edit_siswa/<?php echo $this->session->userdata('nisn') ?>">
    <i class="fa fa-book"></i> <span>Edit Data</span>
    </a>
  </li>

  <li class="<?php if($this->uri->segment(2) == ""){echo "active";} ?> treeview">
    <a href="#" data-toggle="modal" data-target="#ppl">
    <i class="fa fa-user"></i> <span>Ubah Password</span>
    </a>
  </li>



  
  <?php }else{ ?>

    <li class="<?php if($this->uri->segment(2) == ""){echo "active";} ?> treeview">
    <a href="<?php echo base_url(); ?>admin/user">
    <i class="fa fa-folder-open"></i> <span>Menejemen Admin</span>
    </a>
  </li>

  <li class="<?php if($this->uri->segment(2) == ""){echo "active";} ?> treeview">
    <a href="<?php echo base_url(); ?>admin/siswa">
    <i class="fa fa-book"></i> <span>Menejemen Siswa</span>
    </a>
  </li>

    <li class="<?php if($this->uri->segment(2) == ""){echo "active";} ?> treeview">
    <a href="<?php echo base_url(); ?>admin/walikelas">
    <i class="fa fa-book"></i> <span>Menejemen Wali Kelas</span>
    </a>
  </li>

  <li class="<?php if($this->uri->segment(2) == ""){echo "active";} ?> treeview">
    <a href="<?php echo base_url(); ?>admin/kelas">
    <i class="fa fa-book"></i> <span>Menejemen Kelas</span>
    </a>
  </li>

  <?php } ?>


  <br>
</ul>


