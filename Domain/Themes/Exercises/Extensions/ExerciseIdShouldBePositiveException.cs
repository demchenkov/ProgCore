using System;

namespace Domain.Themes.Exercises.Extensions
{
    public sealed class ArticleIdShouldBePositiveException : DomainException
    {
        internal ArticleIdShouldBePositiveException(string message) : base(message)
        { }

        internal ArticleIdShouldBePositiveException(string message, Exception exception) : base(message, exception)
        { }
    }
}
