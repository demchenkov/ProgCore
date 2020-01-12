using Domain.Groups.ValueObjects;
using Domain.Identity;

using System.Collections.Generic;

namespace Domain.Groups
{
    public interface IGroup
    {
        public GroupId GroupId { get; set; }
        public string Name { get; set; }
        public int HeadmanId { get; set; }
        public IUser Headman { get; set; }
        public IEnumerable<IUser> Members { get; set; }
    }
}
