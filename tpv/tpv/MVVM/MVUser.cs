using tpv.Backend.Models;
using tpv.Backend.Services;
using tpv.MVVM.Base;

namespace tpv.MVVM
{
    internal class MVUser : MVBaseCRUD<user>
    {
        private user user;

        public MVUser(tpvEntities tpvEntities, user user)
        {
            service = new UserService(tpvEntities);
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
