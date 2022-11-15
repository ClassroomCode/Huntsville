using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;

namespace ECommLib
{
    public class Repository
    {
        public List<Supplier> GetSuppliers()
        {
            var retVal = new List<Supplier>();

            var conn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=EComm;Integrated Security=True;");
            var cmd = new SqlCommand("SELECT Id, CompanyName FROM Suppliers");
            conn.Open();
            var rdr = cmd.ExecuteReader();
            while (rdr.Read()) {
                var supplier = new Supplier();
                supplier.Id = (int)rdr["Id"];
                supplier.CompanyName = (string)rdr["CompanyName"];
                retVal.Add(supplier);
            }
            conn.Close();

            return retVal;
        }

        public List<Product> GetProducts(int supplier)
        {
            //

            throw new NotImplementedException();
        }
    }
}
