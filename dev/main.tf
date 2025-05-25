module "rg-module" {
    source = "../../Module/resource_group"
    rg-action = var.rg-hub-p
}

module "stg-module" {
    source = "../../Module/storage_account"
    depends_on = [ module.rg-module ]
    stg-action = var.stg-hub-p
  
}