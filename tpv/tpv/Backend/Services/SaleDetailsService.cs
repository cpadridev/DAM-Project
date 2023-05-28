using System.Data.Entity;
using tpv.Backend.Models;
using tpv.Backend.Services.Base;

namespace tpv.Backend.Services
{
    public class SaleDetailsService : GenericService<sale_details>
    {
        private DbContext context;

        public SaleDetailsService(DbContext context) : base(context)
        {
            this.context = context;
        }
    }
}
