from pytest import CaptureFixture
import hello_world


def test_prints_hello_world(capsys: CaptureFixture):
    hello_world.main()
    captured = capsys.readouterr()
    expected = "Hello, World!"
    assert (
        captured.out == f"{expected}\n"
    ), f"expected {expected} but got {captured.out}"


def test_exit_code():
    code = hello_world.main()
    assert code == 0, f"expected exit code 0 but got {code}"
