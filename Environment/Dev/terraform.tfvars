rgnew = {
  rgnew1 = {
    name     = "nimitrg"
    location = "France central"
  }
}

vnetnew = {

  vnetnew1 = {
    name                = "nimitvnet"
    location            = "France central"
    resource_group_name = "nimitrg"
    address_space       = ["10.0.0.0/16"]
  }
}

subnetnew = {
  subnetnew1 = {

    name                 = "nimitsubnet"
    resource_group_name  = "nimitrg"
    virtual_network_name = "nimitvnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

public_ipnew = {
  public_ipnew1 = {
    name                = "nimitpublic_ip"
    resource_group_name = "nimitrg"
    location            = "France central"
    allocation_method   = "Static"
    sku                 = "Standard"
  }

}

nicnew = {
  nicnew1 = {
    name                 = "nimitnic"
    location             = "France central"
    resource_group_name  = "nimitrg"
    subnetname           = "nimitsubnet"
    pipname              = "nimitpublic_ip"
    virtual_network_name = "nimitvnet"
  }

}

nsgnew = {
  nsgnew1 = {
    name                = "nimitnsg"
    location            = "France central"
    resource_group_name = "nimitrg"
  }
}

security_rule = {
  security_rule1 = {
    name                   = "ssh"
    priority               = "100"
    destination_port_range = "22"

  }
  security_rule2 = {
    name                   = "http"
    priority               = "101"
    destination_port_range = "80"
  }
}

nsgass = {
  nsgass1 = {
    name                 = "nimitnsgass"
    resource_group_name  = "nimitrg"
    virtual_network_name = "nimitvnet"
    nsgname              = "nimitnsg"
    subnetname           = "nimitsubnet"
  }
}

vmnew = {
  vmnew1 = {
    name                = "nimitvm"
    resource_group_name = "nimitrg"
    location            = "France central"
    size                = "Standard_DS1_v2"
    admin_username      = "adminuser"
    admin_password      = "Rjil@1234567"
    nicname             = "nimitnic"
  }
}