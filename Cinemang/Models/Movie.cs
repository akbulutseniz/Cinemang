namespace Cinemang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Movie")]
    public partial class Movie
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Movie()
        {
            Comments = new HashSet<Comments>();
            Rating = new HashSet<Rating>();
            Seans = new HashSet<Seans>();
        }

        [Key]
        public int m_id { get; set; }

        [Required]
        [StringLength(255)]
        public string mName { get; set; }

        [Column(TypeName = "date")]
        public DateTime mReleaseDate { get; set; }

        public int mTime { get; set; }

        [StringLength(255)]
        public string mDirectors { get; set; }

        [StringLength(255)]
        public string mWritters { get; set; }

        [StringLength(255)]
        public string mCast { get; set; }

        [StringLength(255)]
        public string mCountry { get; set; }

        [StringLength(255)]
        public string mLanguage { get; set; }

        [StringLength(255)]
        public string mGenre { get; set; }

        [StringLength(255)]
        public string mInformation { get; set; }

        [Required]
        [StringLength(255)]
        public string mImageUrl { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Comments> Comments { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Rating> Rating { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Seans> Seans { get; set; }
    }
}
