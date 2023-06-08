using System.Collections.Generic;
using System.Linq;
using tpv.Backend.Models;
using tpv.Backend.Services;
using tpv.MVVM.Base;

namespace tpv.MVVM
{
    internal class MVProduct : MVBaseCRUD<product>
    {
        private product product;
        private CategoryService categoryService;
        private LocationService locationService;
        private OfferService offerService;
        private List<int> ivas = new List<int>() { 0, 4, 10, 21 };

        public MVProduct(tpvEntities tpvEntities)
        {
            service = new ProductService(tpvEntities);
            categoryService = new CategoryService(tpvEntities);
            locationService = new LocationService(tpvEntities);
            offerService = new OfferService(tpvEntities);
            product = new product();
        }

        public product newProduct
        {
            get
            {
                return product;
            }
            set
            {
                product = value;
                NotifyPropertyChanged(nameof(newProduct));
            }
        }

        public List<int> ivasList
        {
            get
            {
                return ivas;
            }
        }

        public List<category> categoriesList
        {
            get
            {
                return categoryService.GetAll().ToList();
            }
        }

        public List<location> locationsList
        {
            get
            {
                return locationService.GetAll().ToList();
            }
        }

        public List<offer> offersList
        {
            get
            {
                return offerService.GetAll().ToList();
            }
        }

        public bool Save
        {
            get
            {
                return Add(newProduct);
            }
        }
    }
}
