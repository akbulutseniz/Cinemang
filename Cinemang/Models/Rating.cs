namespace Cinemang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Rating")]
    public partial class Rating
    {
        [Key]
        public int r_id { get; set; }

        public int rRating { get; set; }

        public int m_id { get; set; }

        public int u_id { get; set; }

        public virtual Movie Movie { get; set; }

        public virtual Users Users { get; set; }
    }
}
