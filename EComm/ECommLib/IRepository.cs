using System;
using System.Collections.Generic;
using System.Text;

namespace ECommLib
{
    public interface IRepository
    {
        List<Supplier> GetSuppliers();
        List<Product> GetProducts(int supplier);
    }
}
