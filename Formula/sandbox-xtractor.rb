class Sandb0xXtractor < Formula
  desc "Automated cross-platform security analysis engine for malicious binaries"
  homepage "https://github.com/darnellwashingtonjr94-art/SandB0x-Xtract0r"
  url "https://github.com/darnellwashingtonjr94-art/SandB0x-Xtract0r/archive/refs/tags/v0.1.0.tar.gz"
  sha256 :no_check
  license "MIT"

  depends_on "rust" => :build
  depends_on "python@3.11"
  depends_on "docker"

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/main" => "sandb0x-xtractor"
    libexec.install Dir["*"]
  end

  test do
    system "#{bin}/sandb0x-xtractor", "--help"
  end
end
