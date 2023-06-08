using System.Data.Entity;
using tpv.Backend.Models;
using tpv.Backend.Services.Base;

namespace tpv.Backend.Services
{
    public class OfferService : GenericService<offer>
    {
        private DbContext context;

        public OfferService(DbContext context) : base(context)
        {
            this.context = context;
        }
    }
}
