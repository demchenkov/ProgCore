using Domain.Courses.ValueObjects;
using Domain.Identity;

using System;
using System.Collections.Generic;

namespace Domain.Courses
{
    public interface ICourse
    {
        public CourseId CourseId { get; }
        public string Name { get; }
        public string Description { get; }
        public DateTime StartDate { get; }
        public DateTime FinishDate { get; }

        public GroupIdCollection Groups { get; }
        public IEnumerable<IUser> Mentors { get; }
        public IEnumerable<Theme> Themes { get; }
    }
}
