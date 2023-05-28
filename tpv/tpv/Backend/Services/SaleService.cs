using System.Data.Entity;
using tpv.Backend.Models;
using tpv.Backend.Services.Base;

namespace tpv.Backend.Services
{
    public class SaleService : GenericService<sale>
    {
        private DbContext context;

        public SaleService(DbContext context) : base(context)
        {
            this.context = context;
        }
    }
}
