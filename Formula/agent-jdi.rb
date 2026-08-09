class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.57.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ffd83c23feda0bde094bc481dba4b729efcbae24469af317149bfeb7c2e32123"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "37ce14a7ca8882a40433d0eb06e98cd28a69cddc8fa665c8ba8a8d1e71f9edcd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ec19eba8cd1a551a6484720986a8b398cf855a5eb4a030a24d92632bd3cdfe21"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "663b86983ccb998420f0e84e4bca59c3d0f9cc0d78256f554c55770b8357ed90"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
