<?php

namespace products\common\models;

use data\model\model;
use data\model\modelInterface;

class categorys extends model implements modelInterface
{
    public $table = 'categorys';
    public $key   = 'category_id';
    public $dicionary = "SELECT category_id as value, name as label FROM categorys;";

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