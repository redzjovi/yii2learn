<?php

use yii\db\Schema;
use yii\db\Migration;

class m180623_110839_post extends Migration
{

    public function init()
    {
        $this->db = 'db';
        parent::init();
    }

    public function safeUp()
    {
        $tableOptions = 'ENGINE=InnoDB';

        $this->createTable(
            '{{%post}}',
            [
                'id'=> $this->bigPrimaryKey(20),
                'title'=> $this->string(200)->notNull(),
                'slug'=> $this->string(200)->null()->defaultValue(null),
                'excerpt'=> $this->text()->null()->defaultValue(null),
                'content'=> $this->text()->null()->defaultValue(null),
            ],$tableOptions
        );

    }

    public function safeDown()
    {
        $this->dropTable('{{%post}}');
    }
}
