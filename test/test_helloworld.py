from pytest import CaptureFixture
import helloworld


def test_prints_hello_world(capsys: CaptureFixture):
    helloworld.main()
    captured = capsys.readouterr()
    expected = "Hello, World!"
    assert (
        captured.out == f"{expected}\n"
    ), f"expected {expected} but got {captured.out}"


def test_exit_code():
    code = helloworld.main()
    assert code == 0, f"expected exit code 0 but got {code}"
