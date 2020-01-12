using Domain.Identity;

namespace Domain.Themes.Exercises
{
    public interface IExercise
    {
        public int Id { get; }
        public string Title { get; }
        public string Content { get; }
        public int ThemeId { get; }
        public int CreatedBy { get; }
        public int MaximumScore { get; }

        public IUser Creator { get; }
        public ITheme Theme { get; }
    }
}
