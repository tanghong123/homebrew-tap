class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.42.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.42.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "1a811c5f9cc05eb84049d175947cc65ac37eee9475298624757e0c62c3919e96"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.42.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5007cf106402083c49052cdb956878bb0591688cde9a6c0251aec7747d591466"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.42.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ce073a035b56d2be556e9980ebc057585e1d635dea19ca27b6f5b0638cbb2d6f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.42.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0514b9118ffbf6b9afdb13ca3ac0fc1130ee42b8c3f8c39e187d63cc32ee0cd6"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
