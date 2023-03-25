namespace Cinemang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Users
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Users()
        {
            Comments = new HashSet<Comments>();
            Rating = new HashSet<Rating>();
            Ticket = new HashSet<Ticket>();
        }

        [Key]
        public int u_id { get; set; }

        [Required]
        [StringLength(255)]
        public string uUsername { get; set; }

        [Required]
        [StringLength(255)]
        public string uPassword { get; set; }

        [Required]
        [StringLength(255)]
        public string uName { get; set; }

        [Required]
        [StringLength(255)]
        public string uSurname { get; set; }

        [Required]
        [StringLength(15)]
        public string uPhone { get; set; }

        [Required]
        [StringLength(255)]
        public string uAddress { get; set; }

        [Required]
        [StringLength(255)]
        public string uEmail { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Comments> Comments { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Rating> Rating { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Ticket> Ticket { get; set; }
    }
}
