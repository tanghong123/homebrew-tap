class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.13.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.13.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "1396f6f0272598b40ae2759d758239651ff8acbb1da081ebbae885e155f8a185"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.13.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b1f9f82953900c8d3e920c4e25bea82be3efa3a658abbb71e46fea6a9e70281f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.13.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e92169279fd53717adc563d0f02a3adf6829977a4d19b37aa1cf82d101d1b68b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.13.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9c6314d23e0be0f35dd4502a93570ea1adf0289a17f24d7ba0920af01de5931d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
