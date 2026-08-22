class Sandb0xXtract0r < Formula
  desc "Automated cross-platform security analysis engine for malicious binaries"
  homepage "https://github.com/darnellwashingtonjr94-art/SandB0x-Xtract0r"
  url "https://github.com/darnellwashingtonjr94-art/SandB0x-Xtract0r/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "937d0d10d83f5ba120ea6b97d0d81b3f5ba120ea6b97d0d81b3f5ba120ea6b" # Use your exact generated sha256 hash here
  license "MIT"

  depends_on "rust" => :build
  depends_on "python@3.11"
  depends_on "docker"

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/main" => "sandb0x-xtract0r"
    libexec.install Dir["*"]
  end

  test do
    system "#{bin}/sandb0x-xtract0r", "--help"
  end
end
