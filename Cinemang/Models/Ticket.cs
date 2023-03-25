namespace Cinemang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Ticket")]
    public partial class Ticket
    {
        [Key]
        public int tic_id { get; set; }

        public int ticPrice { get; set; }

        public int u_id { get; set; }

        public int se_id { get; set; }

        public int seans_id { get; set; }

        public virtual Seans Seans { get; set; }

        public virtual Seat Seat { get; set; }

        public virtual Users Users { get; set; }
    }
}
