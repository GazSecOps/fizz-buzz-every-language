package {
    public class FizzBuzz {
        public static function main():void {
            for (var i:int = 1; i <= 100; i++) {
                if (i % 15 == 0) {
                    trace("FizzBuzz");
                } else if (i % 3 == 0) {
                    trace("Fizz");
                } else if (i % 5 == 0) {
                    trace("Buzz");
                } else {
                    trace(i);
                }
            }
        }
    }
}
