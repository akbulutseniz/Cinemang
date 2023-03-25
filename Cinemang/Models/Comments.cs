namespace Cinemang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Comments
    {
        [Key]
        public int com_id { get; set; }

        [Required]
        [StringLength(255)]
        public string comComment { get; set; }

        public int m_id { get; set; }

        public int u_id { get; set; }

        public virtual Movie Movie { get; set; }

        public virtual Users Users { get; set; }
    }
}
