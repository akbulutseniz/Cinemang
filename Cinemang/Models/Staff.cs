namespace Cinemang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Staff")]
    public partial class Staff
    {
        [Key]
        public int s_id { get; set; }

        [Required]
        [StringLength(255)]
        public string sUsername { get; set; }

        [Required]
        [StringLength(255)]
        public string sPassword { get; set; }

        [Required]
        [StringLength(255)]
        public string sName { get; set; }

        [Required]
        [StringLength(255)]
        public string sSurname { get; set; }

        [Required]
        [StringLength(15)]
        public string sPhone { get; set; }

        [Required]
        [StringLength(255)]
        public string sAddress { get; set; }

        [Required]
        [StringLength(255)]
        public string sEmail { get; set; }

        public int? c_id { get; set; }

        public virtual Cinema Cinema { get; set; }
    }
}
