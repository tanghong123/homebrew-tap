class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.361.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.361.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b459ade47708e476db74a7f3d94e19e11a6e22aa6e5a2322a2b065be86bbfa03"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.361.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "47a931d2f1a6438fe4ea1d54783e9b3c5d330e305b27f894df7a462545e8257d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.361.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c51276c5b67d20ca86b3f48f1f34ee17ef5fecbf67f32401d3c32c976f4ac164"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.361.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "160ae2557ece8bccede379cfcba395202541abcd7e32c555e9364f1826cd8974"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
