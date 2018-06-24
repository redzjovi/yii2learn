<?php
use yii\helpers\Html;
use yii\helpers\Url;
?>

<article>
    <h2><?= Html::a($model->title, ['posts/view', 'id' => $model->id, 'slug' => $model->slug]) ?></h2>
    <p><?= $model->excerpt ?></p>
</article>
<hr />
