using System;

namespace Domain.Courses.Exceptions
{
    public sealed class CourseIdShouldBePositiveException : DomainException
    {
        internal CourseIdShouldBePositiveException(string message) : base(message)
        { }

        internal CourseIdShouldBePositiveException(string message, Exception exception) : base(message, exception)
        { }
    }
}
