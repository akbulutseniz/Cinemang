namespace Cinemang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Seans
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Seans()
        {
            Ticket = new HashSet<Ticket>();
        }

        [Key]
        public int seans_id { get; set; }

        public TimeSpan seansStartTime { get; set; }

        public TimeSpan seansEndTime { get; set; }

        public int m_id { get; set; }

        public virtual Movie Movie { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Ticket> Ticket { get; set; }
    }
}
