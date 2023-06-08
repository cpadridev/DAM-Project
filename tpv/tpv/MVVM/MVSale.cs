using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Web.UI.WebControls;
using System.Windows.Data;
using tpv.Backend.Models;
using tpv.Backend.Services;
using tpv.MVVM.Base;

namespace tpv.MVVM
{
    internal class MVSale : MVBaseCRUD<sale>
    {
        private sale sale;
        private UserService userService;
        private CustomerService customerService;
        private SaleDetailsService saleDetailsService;
        private ProductService productService;
        private List<String> payments = new List<String>() { "Efectivo", "Tarjeta" };
        private ListCollectionView listSalesDataGrid;
        private DateTime startDate;
        private DateTime endDate;

        public MVSale(tpvEntities tpvEntities)
        {
            sale = new sale();
            service = new SaleService(tpvEntities);
            userService = new UserService(tpvEntities);
            customerService = new CustomerService(tpvEntities);
            saleDetailsService = new SaleDetailsService(tpvEntities);
            listSalesDataGrid = new ListCollectionView(service.GetAll().ToList());
            startDate = DateTime.Now;
            endDate = DateTime.Now;
        }

            public MVSale(tpvEntities tpvEntities, user user, List<sale_details> sale_details, double total)
        {
            sale = new sale();
            service = new SaleService(tpvEntities);
            userService = new UserService(tpvEntities);
            userService.userLoggedIn = user;
            customerService = new CustomerService(tpvEntities);
            saleDetailsService = new SaleDetailsService(tpvEntities);
            productService = new ProductService(tpvEntities);
            sale.user = userService.userLoggedIn;
            sale.date = DateTime.Now;
            sale.sale_details = sale_details;
            sale.total = total;
            sale.ticket = new byte[0];
        }

        public sale newSale
        {
            get
            {
                return sale;
            }
            set
            {
                sale = value;
                NotifyPropertyChanged(nameof(newSale));
            }
        }

        public List<user> usersList
        {
            get
            {
                return userService.GetAll().ToList();
            }
        }

        public List<customer> customersList
        {
            get
            {
                return customerService.GetAll().ToList();
            }
        }

        public List<String> paymentsList
        {
            get
            {
                return payments;
            }
        }

        public bool Save 
        { 
            get 
            {
                return Add(newSale);
            } 
        }

        public bool AddSaleDetails()
        {

            foreach (sale_details sale_detail in sale.sale_details)
            {
                sale_detail.id_sale = sale.id_sale;

                saleDetailsService.Add(sale_detail);

                product product = productService.FindByID(sale_detail.id_product);
                product.quantity -= sale_detail.quantity;

                productService.Edit(product);
                productService.Save();
            }

            return true;
        }

        public ListCollectionView salesListColletion
        {
            get
            {
                return listSalesDataGrid;
            }
        }

        public bool DateFilter(object obj)
        {
            sale sale = obj as sale;
            if (sale.date != null)
            {
                if (sale.date >= startDate.Date && sale.date <= endDate.Date.AddDays(1).AddSeconds(-1))
                {
                    return true;
                }
            }
            return false;
        }

        public DateTime startingDate
        {
            get
            {
                return startDate;
            }
            set
            {
                startDate = value;
                NotifyPropertyChanged(nameof(startDate));
            }
        }

        public DateTime endingDate
        {
            get
            {
                return endDate;
            }
            set
            {
                endDate = value;
                NotifyPropertyChanged(nameof(endDate));
            }
        }

        public bool DeleteSale(sale sale)
        {
            service.Delete(sale);
            try
            {
                try
                {
                    service.Save();
                }
                catch (Exception ex)
                {
                    return false;
                }
            }
            catch (DbUpdateException dbex)
            {
                return false;
            }

            return true;
        }

        public bool DeleteSaleDetails(sale_details saleDetails)
        {
            saleDetailsService.Delete(saleDetails);
            try
            {
                try
                {
                    saleDetailsService.Save();
                }
                catch (Exception ex)
                {
                    return false;
                }
            }
            catch (DbUpdateException dbex)
            {
                return false;
            }

            return true;
        }
    }
}
