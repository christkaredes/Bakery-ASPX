using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Bakery.Models
{
    public class BakeryContext : DbContext
    {
        // Reads connection string to read the DB
        public BakeryContext() : base("name=myconn")
        {
            Database.SetInitializer<BakeryContext>(new DropCreateDatabaseIfModelChanges<BakeryContext>());
        }
        // Maps content to the framework
        public virtual DbSet<Registration> Registrations { get; set; }
    }
}