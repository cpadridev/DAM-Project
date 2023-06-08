using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using tpv.Backend.Models;
using tpv.Backend.Services.Base;

namespace tpv.Backend.Services
{
    public class CategoryService : GenericService<category>
    {
        private DbContext context;

        public CategoryService(DbContext context) : base(context)
        {
            this.context = context;
        }

        public List<product> GetProductsByCategory(category category)
        {
            return context.Set<product>().Where(p => p.category.name == category.name).ToList();
        }
    }
}
