using Domain.Identity.Role;
using System;
using System.Collections.Generic;
using System.Text;

namespace Infrastructure.DapperDataAccess.Entities
{
    public class ApplicationRole : Role
    {
        public string NormalizedName { get; set; }
    }
}
