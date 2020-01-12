using Domain.Courses.Exceptions;

namespace Domain.Courses.ValueObjects
{
    public struct CourseId
    {
        private readonly int _courseId;

        public CourseId(int courseId)
        {
            if (courseId <= 0)
            {
                throw new CourseIdShouldBePositiveException($"{nameof(courseId)} should be positive.");
            }
            _courseId = courseId;
        }

        public override string ToString() => _courseId.ToString();

        public int ToInt() => _courseId;
    }
}
