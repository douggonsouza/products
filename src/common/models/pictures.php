<?php

namespace products\common\models;

use data\model\model;
use data\model\modelInterface;

class pictures extends model implements modelInterface
{
    public $table = 'pictures';
    public $key   = 'picture_id';
    public $dicionary = "SELECT picture_id as value, filename as label FROM products;";

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