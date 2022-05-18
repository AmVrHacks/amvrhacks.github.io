
<section class="slice bg-white">
    <div class="wp-section shop">
        <div class="container">
            <div class="row">
                <?php
                    echo $this->db->get_where('general_settings',array('type'=>$type))->row()->value;
                ?>
   			 </div>
		</div>
    </div>
</section>