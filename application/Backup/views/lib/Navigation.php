<nav id="side_nav">
  <ul>
    <li>
    <?php if($this->session->userdata('role') == "1"){ ?>
      <a href="#">
        <span class="ion-beaker"></span>
        <span class="nav_title">Registered</span>
      </a>
      <div class="sub_panel">
        <div class="side_inner">
          <h4 class="panel_heading panel_heading_first">Registered Chemical</h4>
          <ul>
              <li><a href="<?php echo base_url().'Registered/Input' ;?>"><span class="side_icon ion-ios7-compose-outline"></span> Input</a></li>
            <li><a href="<?php echo base_url().'Registered/Table' ;?>"><span class="side_icon ion-ios7-bookmarks-outline"></span> Table</a></li>
          </ul>
        </div>
      </div>
    <?php }
    else { ?>
      <a href="<?php echo base_url().'Registered/Table' ;?>">
        <span class="ion-beaker"></span>
        <span class="nav_title">Registered</span>
      </a>
    <?php }?>
    </li>
    <li>
      <?php if($this->session->userdata('role') == "1"){ ?>
        <a href="#">
          <span class="fa fa-exclamation-triangle"></span>
          <span class="nav_title">Storing Requirement</span>
        </a>
        <div class="sub_panel">
          <div class="side_inner">
            <h4 class="panel_heading panel_heading_first">Storing Requirement</h4>
            <ul>
              <?php if ($this->session->userdata('role') == "1"): ?>
                <li><a href="<?php echo base_url().'Hazardous/Input' ;?>"><span class="side_icon ion-ios7-compose-outline"></span> Input</a></li>
              <?php endif; ?>
              <li><a href="<?php echo base_url().'Hazardous/Table' ;?>"><span class="side_icon ion-ios7-bookmarks-outline"></span> Table</a></li>
            </ul>
          </div>
        </div>
        <?php }
        else { ?>
          <a href="<?php echo base_url().'Hazardous/Table' ;?>">
            <span class="fa fa-exclamation-triangle"></span>
            <span class="nav_title">Storing Requirement</span>
          </a>
        <?php }?>
    </li>
  </ul>
</nav>
