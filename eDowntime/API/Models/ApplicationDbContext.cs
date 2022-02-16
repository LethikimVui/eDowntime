using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using SharedObjects.ValueObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Models
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base()
        {

        }

        public ApplicationDbContext()
        {
        }

        //Scaffold-DbContext "Data Source=VNHCMC0SQL81;Initial Catalog=TE_HCS;User Id=TE_HCS_USER;Password=Zxcvbnm123!@;MultipleActiveResultSets=true;" Microsoft.EntityFrameworkCore.SqlServer -Tables "CPCC_Master_Matrix" -OutputDir Models1
        public virtual DbSet<EDtAction> EDtAction { get; set; }
        public virtual DbSet<AccessUserRole> AccessUserRole { get; set; }

        public virtual DbQuery<VAction> Action { get; set; }
        public virtual DbQuery<VCustomer> Customer { get; set; }
        public virtual DbQuery<VCategory> Category { get; set; }
        public virtual DbQuery<VWorkWeek> WorkWeek { get; set; }
        public virtual DbQuery<VUserRole> UserRole { get; set; }
        public virtual DbQuery<VRole> Role { get; set; }
        public virtual DbQuery<VUser> User { get; set; }



        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Data Source=VNHCMC0SQL81;Initial Catalog=eDowntime;User Id=eDowntime_User;Password=zKhU$~R;MultipleActiveResultSets=true;");
            }
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.Entity<EDtAction>(entity =>
            {
                entity.HasKey(e => e.ActionId);

                entity.ToTable("eDT_Action");

                entity.Property(e => e.ActionId).HasColumnName("actionId");

                entity.Property(e => e.Capa)
                    .HasColumnName("CAPA")
                    .IsUnicode(false);

                entity.Property(e => e.Category)
                    .HasColumnName("category")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.CommitDate)
                    .HasColumnName("commitDate")
                    .IsUnicode(false);

                entity.Property(e => e.ContainmentAction)
                    .HasColumnName("containmentAction")
                    .IsUnicode(false);

                entity.Property(e => e.CreatedBy)
                    .HasColumnName("createdBy")
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.CreationDate)
                    .HasColumnName("creationDate")
                    .HasColumnType("datetime");

                entity.Property(e => e.CustId).HasColumnName("custId");

                entity.Property(e => e.Details)
                    .HasColumnName("details")
                    .IsUnicode(false);

                entity.Property(e => e.Ecnpcn)
                    .HasColumnName("ECNPCN")
                    .IsUnicode(false);

                entity.Property(e => e.Fia)
                    .HasColumnName("FIA")
                    .IsUnicode(false);

                entity.Property(e => e.IsActive).HasColumnName("isActive");

                entity.Property(e => e.OverallImpact)
                    .HasColumnName("overallImpact")
                    .IsUnicode(false);

                entity.Property(e => e.ProblemDescription)
                    .HasColumnName("problemDescription")
                    .IsUnicode(false);

                entity.Property(e => e.Responsible)
                    .HasColumnName("responsible")
                    .IsUnicode(false);

                entity.Property(e => e.RootCause)
                    .HasColumnName("rootCause")
                    .IsUnicode(false);

                entity.Property(e => e.Status).HasColumnName("status");

                entity.Property(e => e.UpdateDate)
                    .HasColumnName("updateDate")
                    .HasColumnType("datetime");

                entity.Property(e => e.UpdatedBy)
                    .HasColumnName("updatedBy")
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Yyww)
                    .IsRequired()
                    .HasColumnName("yyww")
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });
            modelBuilder.Entity<AccessUserRole>(entity =>
            {
                entity.HasKey(e => e.UserRoleId);

                entity.ToTable("Access_UserRole");

                entity.Property(e => e.UserRoleId).HasColumnName("userRoleId");

                entity.Property(e => e.CreatedBy)
                    .HasColumnName("createdBy")
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.CreationDate)
                    .HasColumnName("creationDate")
                    .HasColumnType("datetime");

                entity.Property(e => e.CustId).HasColumnName("custID");

                entity.Property(e => e.CustName)
                    .HasColumnName("custName")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.IsActive).HasColumnName("isActive");

                entity.Property(e => e.Ntlogin)
                    .HasColumnName("NTLogin")
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.PlantId).HasColumnName("plantID");

                entity.Property(e => e.RoleId).HasColumnName("roleID");

                entity.Property(e => e.UpdateDate)
                    .HasColumnName("updateDate")
                    .HasColumnType("datetime");

                entity.Property(e => e.UpdatedBy)
                    .HasColumnName("updatedBy")
                    .HasMaxLength(30)
                    .IsUnicode(false);
            });

        }
       
    }
}
