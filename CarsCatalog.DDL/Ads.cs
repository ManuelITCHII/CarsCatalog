//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Ads
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Ads()
        {
            this.Images = new HashSet<Images>();
        }
    
        public int AdsId { get; set; }
        public int VehicleType { get; set; }
        public string Brand { get; set; }
        public string Model { get; set; }
        public int Year { get; set; }
        public Nullable<int> MileageKM { get; set; }
        public Nullable<decimal> Price { get; set; }
        public int UserId { get; set; }
        public string Estado { get; set; }
        public string Municipio { get; set; }
    
        public virtual Users Users { get; set; }
        public virtual VehicleTypes VehicleTypes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Images> Images { get; set; }
    }
}