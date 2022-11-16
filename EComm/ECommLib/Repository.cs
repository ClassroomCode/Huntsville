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
            var cmd = new SqlCommand("SELECT Id, CompanyName FROM Suppliers", conn);
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
            var retVal = new List<Product>();

            var conn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=EComm;Integrated Security=True;");
            var cmd = new SqlCommand("SELECT Id, ProductName, UnitPrice FROM Products WHERE SupplierID=@sid", conn);
            cmd.Parameters.AddWithValue("sid", supplier);
            conn.Open();
            var rdr = cmd.ExecuteReader();
            while (rdr.Read()) {
                var product = new Product();
                product.Id = (int)rdr["Id"];
                product.ProductName = (string)rdr["ProductName"];
                product.UnitPrice = (decimal)rdr["UnitPrice"];
                retVal.Add(product);
            }
            conn.Close();

            return retVal;
        }
    }
}
