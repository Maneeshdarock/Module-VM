module "rgg" {
  source = "../../Module/1RG"
  rgnew  = var.rgnew
}

module "vnett" {
  source     = "../../Module/2VNET"
  vnetnew    = var.vnetnew
  depends_on = [module.rgg]
}

module "subnett" {
  source     = "../../Module/3SUBNET"
  subnetnew  = var.subnetnew
  depends_on = [module.vnett]
}

module "public_ipp" {
  source       = "../../Module/4PIP"
  public_ipnew = var.public_ipnew
  depends_on   = [module.subnett]
}

module "nicc" {
  source     = "../../Module/5NIC"
  nicnew     = var.nicnew
  depends_on = [module.public_ipp]
}

module "nsgg" {
  source        = "../../Module/6NSG"
  nsgnew        = var.nsgnew
  security_rule = var.security_rule
  depends_on    = [module.nicc]
}

module "nsgasss" {
  source     = "../../Module/7NSGasso"
  nsgass     = var.nsgass
  depends_on = [module.nsgg]
}

module "vmneww" {
  source     = "../../Module/8VM"
  vmnew      = var.vmnew
  depends_on = [module.nsgasss]
}