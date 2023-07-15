int main(string[] args)
{
    var service = new GreetingService("James Bond");
    var message = service.greet();
    stdout.printf(@"$message!\n");
    return 0;
}