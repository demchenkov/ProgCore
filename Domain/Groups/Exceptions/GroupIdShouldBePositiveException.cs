using System;
using System.Collections.Generic;
using System.Text;

namespace Domain.Groups.Exceptions
{
    public sealed class GroupIdShouldBePositiveException : DomainException
    {
        internal GroupIdShouldBePositiveException(string message) : base(message)
        { }

        internal GroupIdShouldBePositiveException(string message, Exception exception) : base(message, exception)
        { }
    }
}
