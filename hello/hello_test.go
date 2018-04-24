package hello

import "testing"

func TestSayHello(t *testing.T) {
	expected := "Hello world!"
	msg, _ := SayHello()

	if msg != expected {
		t.Errorf("The expected message should be %s instead received %s", expected, msg)
	}
}
