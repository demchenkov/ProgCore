using Domain.Groups;

using System.Collections.Generic;
using System.Collections.ObjectModel;
using Domain.Groups.ValueObjects;

namespace Domain.Courses
{
    public class GroupIdCollection
    {
        private readonly IList<GroupId> _list;

        public void Add(IEnumerable<GroupId> groupIds)
        {
            foreach (var id in groupIds)
            {
                _list.Add(id);
            }
        }

        public void Add(GroupId groupId) => _list.Add(groupId);

        public IReadOnlyCollection<GroupId> GetGroupIds()
        {
            IReadOnlyCollection<GroupId> groupIds = new ReadOnlyCollection<GroupId>(_list);
            return groupIds;
        }
    }
}
