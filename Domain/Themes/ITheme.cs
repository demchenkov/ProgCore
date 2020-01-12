using Domain.Identity;

namespace Domain.Themes
{
    public interface ITheme
    {
        public int Id { get; }
        public string Title { get; }
        public string Description { get; }
        public int CreatedBy { get; }
        public IUser Creator { get; }
    }
}
