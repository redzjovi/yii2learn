<?php

use yii\db\Migration;

/**
 * Class m180619_074157_RouteSeeder
 */
class m180619_074157_RouteSeeder extends Migration
{
    protected $route;

    public function __construct()
    {
        $this->route = new \app\models\Route;
    }

    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->route->addNew($this->route->available);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->route->remove($this->route->available);
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180619_074157_RouteSeeder cannot be reverted.\n";

        return false;
    }
    */
}
