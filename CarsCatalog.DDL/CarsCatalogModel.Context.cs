﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CarsCatalog.DDL
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class CarCatalogEntities : DbContext
    {
        public CarCatalogEntities()
            : base("name=CarCatalogEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AcountTypes> AcountTypes { get; set; }
        public virtual DbSet<Ads> Ads { get; set; }
        public virtual DbSet<Images> Images { get; set; }
        public virtual DbSet<Users> Users { get; set; }
        public virtual DbSet<VehicleTypes> VehicleTypes { get; set; }
    }
}
