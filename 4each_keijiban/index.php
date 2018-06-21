<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>掲示板</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <?php
        
        mb_internal_encoding("utf8");
        $pdo = new PDO("mysql:dbname=lesson01;host=localhost;","root","mysql");
        $stmt = $pdo->query("select*from 4each_keijiban");
        
       
        
        ?>
        
        
            <img class="logo" src="4eachblog_logo.jpg">
        <header>
            <ul>
                <li>トップ</li>
                <li>プロフィール</li>
                <li>4eachについて</li>
                <li>フォーム</li>
                <li>問い合わせ</li>
                <li>その他</li>
            </ul>
        </header>
        <main>
    
            <div class="main_container">
                <h2>プログラミングに役立つ掲示板</h2>
             
                    <div class="left">
                        <form method="post" action="insert.php">
                            <div id="outline">
                                <div class="container">
                                    <h1>入力フォーム</h1>
                                        <div class="form"></div>
                                            <p class="a">ハンドルネーム</p>
                                                <input type="text" name="handlename" size="30">
                                            <p class="a">タイトル</p>
                                                <input type="text" name="title" size="30">
                                            <p class="a">コメント</p>
                                                <textarea name="comments" rows="5" cols="60"></textarea>
                                                <br>
                                                <input class="button" type="submit" value="投稿する">
                                </div>
                    
                            </div>
                     </form>
                     
<?php
    while($row = $stmt->fetch()){
        
                 echo"<div class='title_container'>";       
            echo"<div class='kiji'>";
                echo"<h1>".$row['title']."</h1>";
                    echo"<div class='contents'>";
                    echo $row['comments'];
                    echo"<div class='handlename'>posted by".$row['handlename']."</div>";
                    echo"</div>";
                echo"</div>";
                echo"</div>";
}
?>
           
           
                 </div>
             
                 <div class="right">
                        <ul>
                            <li>
                                <h3>人気の記事</h3>
                                <p>PHP オススメ本</p>
                                <p>PHP MyAdminの使い方</p>
                                <p>今人気のエディタ</p>
                                <p>HTMLの基礎</p>
                            </li>
                        </ul>
                        <ul>
                            <li>
                                <h3>オススメリンク</h3>
                                <p>インターノウスの株式会社</p>
                                <p>XAMPPのダウンロード</p>
                                <p>Eclipseのダウンロード</p>
                                <p>Branketsのダウンロード</p>
                            </li>
                        </ul>
                        <ul>
                            <li>
                                <h3>カテゴリ</h3>
                                <p>HTML</p>
                                <p>PHP</p>
                                <p>MySQL</p>
                                <p>javaScript</p>
                            </li>
                        </ul>   
                </div>
             </div>
        <footer>
            copyright (c) internous|4each blog is the one which provides A to 
                Z aboutprograming.
        </footer>         
        
        </main>
    </body>
</html>