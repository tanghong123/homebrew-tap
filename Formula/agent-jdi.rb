class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.541.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.541.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b481fdf2b6f2488a3c80fdb35cad3c02b0b646793a842ff16c40a32c9286a152"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.541.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1d4aae43596ea8687e675f843dd972bed729c709d3eb546f93426decb0a07450"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.541.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f07deb5e86e70dd925416bf31157826dca4431975bb3bd47def81cd2fb21a409"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.541.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "19d2fbf46f5de47f91423da2fdcbd61aacfd4fdad3ac4b9bb2d6b7d51db6f313"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
