using System;

namespace Domain.Themes.Articles.Extensions
{
    public sealed class ArticleIdShouldBePositiveException : DomainException
    {
        internal ArticleIdShouldBePositiveException(string message) : base(message)
        { }

        internal ArticleIdShouldBePositiveException(string message, Exception exception) : base(message, exception)
        { }
    }
}
