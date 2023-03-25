namespace Cinemang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Cinema")]
    public partial class Cinema
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Cinema()
        {
            Staff = new HashSet<Staff>();
            Theatre = new HashSet<Theatre>();
        }

        [Key]
        public int c_id { get; set; }

        [Required]
        [StringLength(255)]
        public string cName { get; set; }

        [Required]
        [StringLength(255)]
        public string cAddress { get; set; }

        [Required]
        [StringLength(255)]
        public string cLocation { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Staff> Staff { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Theatre> Theatre { get; set; }
    }
}
