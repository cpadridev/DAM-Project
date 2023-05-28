using System.Data.Entity;
using tpv.Backend.Models;
using tpv.Backend.Services.Base;

namespace tpv.Backend.Services
{
    public class CustomerService : GenericService<customer>
    {
        private DbContext context;

        public CustomerService(DbContext context) : base(context)
        {
            this.context = context;
        }
    }
}
