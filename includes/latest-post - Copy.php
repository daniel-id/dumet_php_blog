<?php 
// PAGING POST

$post_per_page    = 4;
$current_page     = 1;

if (isset($_GET["page"])) {
  $current_page   = $_GET["page"];
  $current_page   = ($current_page > 1) ? $current_page : 1;
}
$total_data       = mysqli_num_rows(mysqli_query($connect, "SELECT * FROM post"));
$total_page       = ceil($total_data / $post_per_page);
$offset           = ($current_page - 1) * $post_per_page;



// TAMPILKAN DATA POST

$query  = mysqli_query($connect, "SELECT post.*, category.category_name, category.icon 
                                  FROM post, category 
                                  WHERE category.id = post.category_id 
                                  ORDER BY id DESC
                                  LIMIT $post_per_page OFFSET $offset");

?>

<article>
  <?php if(mysqli_num_rows($query)) { ?>
    <?php while ($row=mysqli_fetch_array($query)) { ?>
      <div class="row latest-post">
        <div class="col-md-3">
          <img src="images/<?php echo $row["image"] ?>" class="img-responsive btn-block">
        </div>
        <div class="col-md-9">
          <h2><a href="index.php?detail=<?php echo $row["id"] ?>"><?php echo $row["title"] ?></a></h2>
          <div class="meta">
            <a href="index.php?category=<?php echo $row["category_id"] ?>">
            <span class="<?php echo $row["icon"] ?>" aria-hidden="true"></span>
            <?php echo $row["category_name"] ?></a> - <?php echo tgl_indonesia($row["date"]) ?>
          </div>
          <p><?php echo $row["description"] ?></p>
        </div>
      </div>
    <?php } ?>
  <?php } ?>
</article>
<?php if(isset($total_page)) { ?>
  <?php if($total_page > 1) { ?>
    <nav class="text-center">
      <ul class="pagination">
        <?php if($current_page > 1) { ?>
          <li>
              <a href="index.php?page=<?php echo $current_page - 1 ?>" aria-label="Previous">
                  <span aria-hidden="true">Prev</span>
              </a>
          </li>
        <?php } else { ?>
          <li class="disabled"><span aria-hidden="true">Prev</span></li>
        <?php } ?>
        <?php if($current_page < $total_page) { ?>
          <li>
            <a href="index.php?page=<?php echo $current_page + 1 ?>" aria-label="Next">
              <span aria-hidden="true">Next</span>
            </a>
          </li>
        <?php } else { ?>
          <li class="disabled"><span aria-hidden="true">Next</span></li>
        <?php } ?>
      </ul>
    </nav>
  <?php } ?>
<?php } ?>