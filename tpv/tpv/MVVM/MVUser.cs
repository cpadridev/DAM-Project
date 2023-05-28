using System.Collections.Generic;
using tpv.Backend.Models;
using tpv.Backend.Services;
using tpv.MVVM.Base;

namespace tpv.MVVM
{
    internal class MVUser : MVBaseCRUD<user>
    {
        private UserService userService;
        private user user;

        public MVUser(tpvEntities tpvEntities, user user)
        {
            userService = new UserService(tpvEntities);
            service = userService;
            this.user = user;
        }

        public user userLoggedIn
        {
            get
            {
                return user;
            }
            set
            {
                user = value;
                NotifyPropertyChanged(nameof(user));
            }
        }
    }
}
