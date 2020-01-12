using System.Collections.Generic;

namespace Domain
{
    public interface IBaseRepository<TEntity> where TEntity : class
    {
        IEnumerable<TEntity> GetAll();
        IEnumerable<TEntity> GetFromPage(int page, out int allPage);
        TEntity FindById(int id);
        void Create(TEntity item);
        void Update(TEntity item);
        void Delete(TEntity item);
    }
}
