class Sandb0xXtract0r < Formula
  desc "Automated cross-platform security analysis engine for malicious binaries"
  homepage "https://github.com/darnellwashingtonjr94-art/SandB0x-Xtract0r"
  url "https://github.com/darnellwashingtonjr94-art/SandB0x-Xtract0r/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "379ba233f819a1728d4434079148a6e36c6ffe77e937d0d10d83f5ba120ea6b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/sandb0x-xtract0r", "--help"
  end
end
