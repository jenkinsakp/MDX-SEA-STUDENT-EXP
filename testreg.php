use PHPUnit\Framework\TestCase;

class UserTest extends TestCase
{
public function testRegisterUser()
{
$user = new User();
$result = $user->register('John Doe', 'johndoe@example.com', 'password');

$this->assertTrue($result);
$this->assertEquals('John Doe', $user->getName());
$this->assertEquals('johndoe@example.com', $user->getEmail());
}
}