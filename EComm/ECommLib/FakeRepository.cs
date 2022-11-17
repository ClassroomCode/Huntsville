using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;

namespace ECommLib
{
    public class FakeRepository : IRepository
    {
        public List<Supplier> GetSuppliers()
        {
            return new List<Supplier> {
                new Supplier { Id = 1, CompanyName = "Acme"},
                new Supplier { Id = 2, CompanyName = "Microsoft"},
            };
        }

        public List<Product> GetProducts(int supplier)
        {
            throw new NotImplementedException();
        }
    }
}
