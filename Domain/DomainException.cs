using System;
using System.Collections.Generic;
using System.Text;

namespace Domain
{
    public class DomainException : Exception
    {
        public DomainException(string businessMessage, Exception exception)
            : base(businessMessage, exception)
        { }

        public DomainException(string businessMessage)
            : base(businessMessage)
        { }
    }
}
