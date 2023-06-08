using System.Data.Entity;
using tpv.Backend.Models;
using tpv.Backend.Services.Base;

namespace tpv.Backend.Services
{
    public class LocationService : GenericService<location>
    {
        private DbContext context;

        public LocationService(DbContext context) : base(context)
        {
            this.context = context;
        }
    }
}
