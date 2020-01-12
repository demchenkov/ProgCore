namespace Domain.Identity
{
    public interface IUser
    {
        public int Id { get; }
        public string UserName { get; }
        public string Email { get; }
        public string PhoneNumber { get; }
    }
}
