namespace Cinemang.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class CinemangData : DbContext
    {
        public CinemangData()
            : base("name=CinemangData1")
        {
        }

        public virtual DbSet<Cinema> Cinema { get; set; }
        public virtual DbSet<Comments> Comments { get; set; }
        public virtual DbSet<Movie> Movie { get; set; }
        public virtual DbSet<Rating> Rating { get; set; }
        public virtual DbSet<Seans> Seans { get; set; }
        public virtual DbSet<Seat> Seat { get; set; }
        public virtual DbSet<Staff> Staff { get; set; }
        public virtual DbSet<Theatre> Theatre { get; set; }
        public virtual DbSet<Ticket> Ticket { get; set; }
        public virtual DbSet<Users> Users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Cinema>()
                .Property(e => e.cName)
                .IsUnicode(false);

            modelBuilder.Entity<Cinema>()
                .Property(e => e.cAddress)
                .IsUnicode(false);

            modelBuilder.Entity<Cinema>()
                .Property(e => e.cLocation)
                .IsUnicode(false);

            modelBuilder.Entity<Cinema>()
                .HasMany(e => e.Theatre)
                .WithRequired(e => e.Cinema)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Comments>()
                .Property(e => e.comComment)
                .IsUnicode(false);

            modelBuilder.Entity<Movie>()
                .Property(e => e.mName)
                .IsUnicode(false);

            modelBuilder.Entity<Movie>()
                .Property(e => e.mDirectors)
                .IsUnicode(false);

            modelBuilder.Entity<Movie>()
                .Property(e => e.mWritters)
                .IsUnicode(false);

            modelBuilder.Entity<Movie>()
                .Property(e => e.mCast)
                .IsUnicode(false);

            modelBuilder.Entity<Movie>()
                .Property(e => e.mCountry)
                .IsUnicode(false);

            modelBuilder.Entity<Movie>()
                .Property(e => e.mLanguage)
                .IsUnicode(false);

            modelBuilder.Entity<Movie>()
                .Property(e => e.mGenre)
                .IsUnicode(false);

            modelBuilder.Entity<Movie>()
                .Property(e => e.mInformation)
                .IsUnicode(false);

            modelBuilder.Entity<Movie>()
                .Property(e => e.mImageUrl)
                .IsUnicode(false);

            modelBuilder.Entity<Movie>()
                .HasMany(e => e.Comments)
                .WithRequired(e => e.Movie)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Movie>()
                .HasMany(e => e.Rating)
                .WithRequired(e => e.Movie)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Movie>()
                .HasMany(e => e.Seans)
                .WithRequired(e => e.Movie)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Seans>()
                .HasMany(e => e.Ticket)
                .WithRequired(e => e.Seans)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Seat>()
                .HasMany(e => e.Ticket)
                .WithRequired(e => e.Seat)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Staff>()
                .Property(e => e.sUsername)
                .IsUnicode(false);

            modelBuilder.Entity<Staff>()
                .Property(e => e.sPassword)
                .IsUnicode(false);

            modelBuilder.Entity<Staff>()
                .Property(e => e.sName)
                .IsUnicode(false);

            modelBuilder.Entity<Staff>()
                .Property(e => e.sSurname)
                .IsUnicode(false);

            modelBuilder.Entity<Staff>()
                .Property(e => e.sPhone)
                .IsUnicode(false);

            modelBuilder.Entity<Staff>()
                .Property(e => e.sAddress)
                .IsUnicode(false);

            modelBuilder.Entity<Staff>()
                .Property(e => e.sEmail)
                .IsUnicode(false);

            modelBuilder.Entity<Theatre>()
                .Property(e => e.tType)
                .IsUnicode(false);

            modelBuilder.Entity<Theatre>()
                .Property(e => e.tInformation)
                .IsUnicode(false);

            modelBuilder.Entity<Theatre>()
                .Property(e => e.tName)
                .IsUnicode(false);

            modelBuilder.Entity<Theatre>()
                .HasMany(e => e.Seat)
                .WithRequired(e => e.Theatre)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Users>()
                .Property(e => e.uUsername)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .Property(e => e.uPassword)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .Property(e => e.uName)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .Property(e => e.uSurname)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .Property(e => e.uPhone)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .Property(e => e.uAddress)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .Property(e => e.uEmail)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .HasMany(e => e.Comments)
                .WithRequired(e => e.Users)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Users>()
                .HasMany(e => e.Rating)
                .WithRequired(e => e.Users)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Users>()
                .HasMany(e => e.Ticket)
                .WithRequired(e => e.Users)
                .WillCascadeOnDelete(false);
        }
    }
}
