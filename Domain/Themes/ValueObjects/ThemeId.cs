using Domain.Themes.Extensions;

namespace Domain.Themes.ValueObjects
{
    public struct ThemeId
    {
        private readonly int _themeId;

        public ThemeId(int themeId)
        {
            if (themeId <= 0)
            {
                throw new ExerciseIdShouldBePositiveException($"{nameof(themeId)} should be positive.");
            }
            _themeId = themeId;
        }

        public override string ToString() => _themeId.ToString();

        public int ToInt() => _themeId;
    }
}
