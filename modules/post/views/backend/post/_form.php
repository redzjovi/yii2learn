<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\modules\post\models\Post */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="post-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'excerpt')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'content')->widget(\vova07\imperavi\Widget::className(), [
        'settings' => [
            'plugins' => [
                'filemanager',
                'fontcolor',
                // 'fontfamily',
                // 'fontsize',
                'fullscreen',
                'imagemanager',
                'table',
                'video',
                'widget',
            ],
        ],
    ]) ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
