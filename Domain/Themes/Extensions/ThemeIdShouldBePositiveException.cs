using System;

namespace Domain.Themes.Extensions
{
    public sealed class ExerciseIdShouldBePositiveException : DomainException
    {
        internal ExerciseIdShouldBePositiveException(string message) : base(message)
        { }

        internal ExerciseIdShouldBePositiveException(string message, Exception exception) : base(message, exception)
        { }
    }
}
