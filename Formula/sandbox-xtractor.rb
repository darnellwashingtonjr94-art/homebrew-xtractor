class SandboxXtractor < Formula
  desc "Automated cross-platform security analysis engine for malicious binaries"
  homepage "https://github.com/darnellwashingtonjr94-art/SandB0x-Xtract0r"
  url "https://github.com/darnellwashingtonjr94-art/SandB0x-Xtract0r/archive/refs/tags/v0.10.0.tar.gz"
  sha256 "REPLACE_WITH_ACTUAL_TARBALL_SHA256"
  license "MIT"

  depends_on "rust" => :build
  depends_on "python@3.11"
  depends_on "docker"

  def install
    # Build core Rust binaries or components
    system "cargo", "build", "--release"

    # Install binaries and share necessary project structure into Homebrew's libexec
    bin.install "target/release/main" => "sandbox-xtractor"
    
    # Optional: Install supplementary python scripts/configs into libexec
    libexec.install Dir["*"]
  end

  test do
    system "#{bin}/sandbox-xtractor", "--help"
  end
end
