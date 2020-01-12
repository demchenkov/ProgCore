using Domain.Themes.Extensions;

namespace Domain.Themes.Articles.ValueObjects
{
    public struct ArticleId
    {
        private readonly int _articleId;

        public ArticleId(int articleId)
        {
            if (articleId <= 0)
            {
                throw new ArticleIdShouldBePositiveException($"{nameof(articleId)} should be positive.");
            }
            _articleId = articleId;
        }

        public override string ToString() => _articleId.ToString();

        public int ToInt() => _articleId;
    }
}
