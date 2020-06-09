
<?php
    if (isset($_GET["idpost"], $_POST["noidung"], $_POST["ten"])) {
        // comment
        $id = $_GET["idpost"];
        $noidung = addslashes($_POST["noidung"]);
        $ten = addslashes($_POST["ten"]);
        insertComment($id, $ten, $noidung);
    }
?>


<div class="container pb-cmnt-container" id="commentbox">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-info">
                <form action="?post-slug=<?=$_GET['post-slug']?>&idpost=<?= $post['id']?>#commentbox" method="post">
                    <div class="panel-body">
                    <input type="text" class="form-control" name="ten" placeholder="Tên hiển thị" required>
                        <textarea placeholder="Viết bình luận của bạn ở đây!" name="noidung" class="pb-cmnt-textarea" required></textarea>
                        <div class="form-inline" style="float:right">
                        
                            <button class="btn btn-primary pull-right" type="submit">Đăng bình luận</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<style>
    .pb-cmnt-container {
        font-family: Lato;
        margin-top: 100px;
    }

    .pb-cmnt-textarea {
        resize: none;
        padding: 20px;
        height: 130px;
        width: 100%;
        border: 1px solid #F2F2F2;
    }
</style>
<br>
<br>
<div class="container">
<?php
$comments = getCommentPost($post["id"]);
?>

<?php foreach ($comments as $comment) : ?>
            <div>
            <b><?= $comment["Ten"]?></b> <i>đã bình luận</i><br>
            <p><?= $comment["NoiDung"]?></p><hr>

            </div>
          <?php endforeach ?>
</div>
