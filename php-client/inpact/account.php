<?php

namespace Inpact;

/**
* Account
*/
class Account extends Resource
{
    public static $url = "api/v2/account";
    public static $resource_name = "user";

  public static function create($params = array()) {
    return false;
  }

}

?>
