<?php 

$comment      = mysqli_query($connect, "SELECT comment.*, category.icon, post.id FROM comment, category, post 
                                        WHERE comment.post_id = post.id AND post.category_id = category.id 
                                        AND comment.status ='1' ORDER BY comment.id DESC LIMIT 4");

?>

<aside class="col-md-4">
    <div class="panel panel-default">
    	<div class="panel-heading">
    		<h3 class="panel-title">Komentar Terbaru</h3>
    	</div>
    	<div class="panel-body latest-comments">
    		<ul>
            <?php if(mysqli_num_rows($comment)) { ?>
                <?php while($row_comment=mysqli_fetch_array($comment)) { ?>
    		    <li><a href="index.php?detail=<?php echo $row_comment["post_id"] ?> "><span class="<?php echo $row_comment["icon"]?>" aria-hidden="true"></span> <strong><?php echo $row_comment["name"]?></strong> <?php echo $row_comment["reply"]?></a></li>
    		    <?php } ?>
            <?php } ?>
    		</ul>
    	</div>
    </div>
</aside>

