using Domain.Themes.Extensions;

namespace Domain.Themes.Exercises.ValueObjects
{
    public struct ArticleId
    {
        private readonly int _exerciseId;

        public ArticleId(int exerciseId)
        {
            if (exerciseId <= 0)
            {
                throw new ExerciseIdShouldBePositiveException($"{nameof(exerciseId)} should be positive.");
            }
            _exerciseId = exerciseId;
        }

        public override string ToString() => _exerciseId.ToString();

        public int ToInt() => _exerciseId;
    }
}
