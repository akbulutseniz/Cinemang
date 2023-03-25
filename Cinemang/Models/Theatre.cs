namespace Cinemang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Theatre")]
    public partial class Theatre
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Theatre()
        {
            Seat = new HashSet<Seat>();
        }

        [Key]
        public int t_id { get; set; }

        [Required]
        [StringLength(255)]
        public string tType { get; set; }

        [Required]
        [StringLength(255)]
        public string tInformation { get; set; }

        [Required]
        [StringLength(255)]
        public string tName { get; set; }

        public int tTotalSeat { get; set; }

        public int tRating { get; set; }

        public int c_id { get; set; }

        public virtual Cinema Cinema { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Seat> Seat { get; set; }
    }
}
