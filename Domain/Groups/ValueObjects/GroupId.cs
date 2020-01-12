using Domain.Groups.Exceptions;

namespace Domain.Groups.ValueObjects
{
    public struct GroupId
    {
        private readonly int _groupId;

        public GroupId(int groupId)
        {
            if (groupId <= 0)
            {
                throw new GroupIdShouldBePositiveException($"{nameof(groupId)} should be positive.");
            }
            _groupId = groupId;
        }

        public override string ToString() => _groupId.ToString();

        public int ToInt() => _groupId;
    }
}
