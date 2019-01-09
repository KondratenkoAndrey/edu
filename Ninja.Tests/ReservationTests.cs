using NUnit.Framework;

namespace Ninja.Tests
{
    [TestFixture]
    public class ReservationTests
    {
        Reservation reservation;

        [SetUp]
        public void Init()
        {
            reservation = new Reservation();
        }
            
        [Test]
        public void CanBeCancelledBy_AdminCancelling_ReturnsTrue()
        {
            //Arrange

            //Act
            var result = reservation.CanBeCancelledBy(new User() { IsAdmin = true });

            //Assert
            Assert.That(result, Is.True);
        }

        [Test]
        public void CanBeCancelledBy_SameUserCancelling_ReturnsTrue()
        {
            //Arrange
            var user = new User() { IsAdmin = false };
            reservation.MadeBy = user;

            //Act
            var result = reservation.CanBeCancelledBy(user);

            //Assert
            Assert.That(result, Is.True);
        }

        [Test]
        public void CanBeCancelledBy_AnotherUserCancelling_ReturnsFalse()
        {
            //Arrange

            //Act
            var result = reservation.CanBeCancelledBy(new User() { IsAdmin = false });

            //Assert
            Assert.That(result, Is.False);
        }
    }
}
