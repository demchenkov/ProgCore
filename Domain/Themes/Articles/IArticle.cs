using Domain.Identity;

namespace Domain.Themes.Articles
{
    public interface IArticle
    {
        public int Id { get; }
        public string Name { get; }
        public string Content { get; }
        public int ThemeId { get; }
        public int CreatedBy { get; }
        
        public IUser Creator { get; }
        public ITheme Theme { get; }
    }
}
