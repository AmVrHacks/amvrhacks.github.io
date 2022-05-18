<div class="panel-body" id="demo_s">
    <table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" data-ignorecol="0,3" data-show-toggle="true" data-show-columns="false" data-search="true" >
        <thead>
            <tr>
                <th><?php echo translate('no');?></th>
                <th><?php echo translate('user');?></th>
                <th><?php echo translate('package');?></th>
                <th><?php echo translate('amount');?></th>
                <th><?php echo translate('time');?></th>
                <th class="text-right"><?php echo translate('options');?></th>
            </tr>
        </thead>                
        <tbody >
        <?php
            $i=0;
            foreach($all_payments as $row){
                $i++;
        ?>
        <tr>
            <td><?php echo $i; ?></td>
            <td><?php echo $this->Crud_model->get_field('user',$row['user'],'username'); ?></td>
            <td>
                <?php 
                    echo translate($row['cause']);
                    echo ' : ';
                    if($row['cause'] == 'product_package'){
                        echo $this->Crud_model->get_field('product_type',$row['package'],'name');
                        echo '<br>';
                        echo translate('product');
                        echo ' : ';
                        echo $this->Crud_model->get_field('product',$row['info'],'title');
                    } elseif($row['cause'] == 'user_package'){ 
                        echo $this->Crud_model->get_field('user_type',$row['package'],'name');
                    }
                ?>
            </td>
            <td><?php echo currency($row['amount']); ?></td>
            <td><?php echo date('d m Y, h:i:s A',$row['timestamp']); ?></td>
            <td class="text-right">
                <a class="btn btn-success btn-xs btn-labeled fa fa-location-arrow " data-toggle="tooltip" 
                    onclick="ajax_modal('view','<?php echo translate('view'); ?>','<?php echo translate('successfully_viewed!'); ?>','payments_view','<?php echo $row['payments_id']; ?>')" data-original-title="Edit" data-container="body">
                        <?php echo translate('details');?>
                </a>
            </td>
        </tr>
        <?php
            }
        ?>
        </tbody>
    </table>
</div>
           
<div id='export-div'>
    <h1 style="display:none;"><?php echo translate('payments');?></h1>
    <table id="export-table" data-name='payments' data-orientation='p' style="display:none;">
            <thead>
                <tr>
                    <th><?php echo translate('no');?></th>
                    <th><?php echo translate('user');?></th>
                    <th><?php echo translate('package');?></th>
                    <th><?php echo translate('amount');?></th>
                    <th><?php echo translate('time');?></th>
                </tr>
            </thead>
                
            <tbody >
            <?php
                $i = 0;
                foreach($all_payments as $row){
                    $i++;
            ?>
            <tr>
                <td><?php echo $i; ?></td>
                <td><?php echo $this->Crud_model->get_field('user',$row['user'],'username'); ?></td>
                <td>
                    <?php 
                        echo translate($row['cause']);
                        echo ' : ';
                        if($row['cause'] == 'product_package'){
                            echo $this->Crud_model->get_field('product_type',$row['package'],'name');
                        } elseif($row['cause'] == 'user_package'){ 
                            echo $this->Crud_model->get_field('user_type',$row['package'],'name');
                        }
                    ?>
                </td>
                <td><?php echo currency($row['amount']); ?></td>
                <td><?php echo date('d m Y, h:i:s A',$row['timestamp']); ?></td>
            </tr>
            <?php
                }
            ?>
            </tbody>
    </table>
</div>
           