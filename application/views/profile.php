 <!-- MAIN CONTENT -->
<div class="pg-opt">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2>User account</h2>
            </div>
        </div>
    </div>
</div>
<section class="slice bg-white">
    <div class="wp-section user-account">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
				<?php
                foreach($user_info as $row)
                {
                ?>
                	<dl class="dl-horizontal style-2">
                 		<br />
                        <h3 class="title title-lg">Your personal information</h3>
                         <hr>
                         <dt>Name</dt>
                         <dd>
                            <span class="pull-left"><?php echo $row['surname'];?></span> 
                         </dd>
                         <hr>
                         <dt>Email</dt>
                         <dd>
                            <span class="pull-left"><?php echo $row['email'];?></span>
                         </dd>
                         <hr>
                         <dt>Phone</dt>
                         <dd>
                             <span class="pull-left"><?php echo $row['phone'];?></span>
                         </dd>
                         <hr>
                         <dt>Address</dt>
                         <dd>
                             <span class="pull-left"><?php echo $row['address1'];?></span>
                             <span class="pull-left"><?php echo $row['address2'];?></span>
                         </dd>
                         <hr>
                  </dl>
				<?php
                }
                ?> 
                </div> 
                <div class="col-md-8">                     
                    <div class="tabs-framed">
                        <ul class="tabs clearfix">
                            <li <?php if($inner_page=='product_list'){ ?>class="active"<?php }?>><a href="#tab-1" data-toggle="tab">Your product log </a></li>
                            <li><a href="#tab-2" data-toggle="tab">Edit your personal info</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade <?php if($inner_page=='product_list'){ ?>in active<?php } ?>" id="tab-1">
                                <div class="tab-body" style="padding-bottom: 0;">
                                	<table class="table table-orders table-bordered table-striped table-responsive no-margin">
                                    <tbody>
                                        <tr>
                                            <th>Image</th>
                                            <th>Product title</th>
                                            <th>Price</th>
                                            <th>Category</th>
                                            <th>Option</th>
                                        </tr>
                                    
                                        <tr>
                                            <td><a href="<?php echo base_url(); ?>template/front/#">230320</a></td>
                                            <td>23-08-2014</td>
                                            <td>RON 2000.99</td>
                                            <td><i class="fa fa-check"></i> Shipped out</td>
                                            <td>
                                                230320-x
                                                <br>
                                                <strong>via Fan Curier - Romania</strong>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><a href="<?php echo base_url(); ?>template/front/#">230320</a></td>
                                            <td>23-08-2014</td>
                                            <td>RON 2000.99</td>
                                            <td><i class="fa fa-check"></i> Shipped out</td>
                                            <td>
                                                230320-x
                                                <br>
                                                <strong>via Fan Curier - Romania</strong>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><a href="<?php echo base_url(); ?>template/front/#">230320</a></td>
                                            <td>23-08-2014</td>
                                            <td>RON 2000.99</td>
                                            <td><i class="fa fa-check"></i> Shipped out</td>
                                            <td>
                                                230320-x
                                                <br>
                                                <strong>via Fan Curier - Romania</strong>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><a href="<?php echo base_url(); ?>template/front/#">230320</a></td>
                                            <td>23-08-2014</td>
                                            <td>RON 2000.99</td>
                                            <td><i class="fa fa-check"></i> Shipped out</td>
                                            <td>
                                                230320-x
                                                <br>
                                                <strong>via Fan Curier - Romania</strong>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><a href="<?php echo base_url(); ?>template/front/#">230320</a></td>
                                            <td>23-08-2014</td>
                                            <td>RON 2000.99</td>
                                            <td><i class="fa fa-check"></i> Shipped out</td>
                                            <td>
                                                230320-x
                                                <br>
                                                <strong>via Fan Curier - Romania</strong>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="tab-2">
                               <div class="wp-block default user-form user-form-alpha no-margin">
                                    <div class="form-body">
                                    <?php
                                        foreach($user_info as $row)
                                        {
                                    ?>
                                        <form action="<?php echo base_url(); ?>index.php/home/sign/update_info/" method="post" id="frmRegister" class="sky-form">                                    
                                            <fieldset class="no-padding">           
                                                <section class="">
                                                    <div class="row">
                                                        <div class="col-xs-12">
                                                            <div class="form-group">
                                                                <label class="input">
                                                                    <i class="icon-append fa fa-user"></i>
                                                                    <input type="text"  value="<?php echo $row['surname'];?>" name="name" placeholder="name">
                                                                    <b class="tooltip tooltip-bottom-right">Needed to enter the website</b>
                                                                </label>
                                                            </div>               
                                                        </div>
                                                        <div class="col-xs-12">
                                                            <div class="form-group">
                                                                <div class="form-group">
                                                                    <label class="input">
                                                                        <i class="icon-append fa fa-envelope-o"></i>
                                                                        <input type="email" value="<?php echo $row['email'];?>" name="email" placeholder="E-mail">
                                                                        <b class="tooltip tooltip-bottom-right">Needed to verify your account</b>
                                                                    </label>
                                                                </div>  
                                                            </div>               
                                                        </div>
                                                    </div> 
                                                    <section class="no-margin">
                                                        <div class="row">
                                                        <section class="col-xs-12">
                                                            <label class="input">
                                                                <i class="icon-append fa fa-building"></i>
                                                                <input type="text" value="<?php echo $row['address1'];?>" name="address1" placeholder="Address" class="address">
                                                            </label>
                                                        </section>
                                                        <section class="col-xs-12">
                                                            <label class="input">
                                                                <i class="icon-append fa fa-building"></i>
                                                                <input type="text" value="<?php echo $row['address2'];?>" name="address2" placeholder="Address" class="address">
                                                            </label>
                                                        </section>
                                                        <section class="col-xs-12">
                                                            <label class="input">
                                                                <i class="icon-append fa fa-phone"></i>
                                                                <input type="tel" value="<?php echo $row['phone'];?>" name="phone" placeholder="Phone">
                                                            </label>
                                                        </section>
                                                    </div>
                                                    </section> 
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="input">
                                                                    <i class="icon-append fa fa-lock"></i>
                                                                    <input type="password" value="<?php echo $row['password'];?>" name="password1" placeholder="Password">
                                                                    <b class="tooltip tooltip-bottom-right">Needed to enter the website</b>
                                                                </label>
                                                            </div>               
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="input">
                                                                    <i class="icon-append fa fa-lock"></i>
                                                                    <input type="password" value="<?php echo $row['password'];?>" name="password2" placeholder="Re-enter Password">
                                                                    <b class="tooltip tooltip-bottom-right">Needed to verify your account</b>
                                                                </label>
                                                            </div>               
                                                        </div>
                                                    </div>   
                                                </section>
                                            </fieldset> 
                                            <fieldset>
                                                <section>
                                                    <div class="row">
                                                        <div class="col-md-8">
                                                            <label class="checkbox">
                                                                <input type="checkbox" name="subscription" id="subscription">
                                                                <i></i> I accept the <a href="<?php echo base_url(); ?>template/front/#">terms and conditions</a> of this website.
                                                            </label>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <button class="btn btn-alt btn-icon btn-icon-right btn-icon-go pull-right" type="submit">
                                                                <span>Submit</span>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </section>
                                            </fieldset>
                                        </form>  
                                        <?php
                                        }
                                    ?>
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