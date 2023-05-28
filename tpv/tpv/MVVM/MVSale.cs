using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using tpv.Backend.Models;
using tpv.Backend.Services;
using tpv.MVVM.Base;

namespace tpv.MVVM
{
    internal class MVSale : MVBaseCRUD<sale>
    {
        private sale sale;
        private SaleService saleService;
        private UserService userService;
        private CustomerService customerService;
        private SaleDetailsService saleDetailsService;
        private ProductService productService;
        private List<String> payments = new List<String>() { "Efectivo", "Tarjeta" };

        public MVSale(tpvEntities tpvEntities, user user, List<sale_details> sale_details, double total)
        {
            sale = new sale();
            saleService = new SaleService(tpvEntities);
            service = saleService;
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
                NotifyPropertyChanged(nameof(sale));
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
    }
}
