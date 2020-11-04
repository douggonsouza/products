<?php

namespace products\common\models;

use data\model\model;
use data\model\modelInterface;

class products extends model implements modelInterface
{
    public $table = 'products';
    public $key   = 'product_id';
    public $dicionary = "SELECT product_id as value, consumer_id as label FROM products;";

    /**
     * Evento construtor da classe
     */
    public function __construct()
    {
        parent::__construct($this->getTable(), $this->getKey());
    }

    /**
     * Get the value of table
     */ 
    public function getTable()
    {
        return $this->table;
    }

    /**
     * Get the value of key
     */ 
    public function getKey()
    {
        return $this->key;
    }
}
?>