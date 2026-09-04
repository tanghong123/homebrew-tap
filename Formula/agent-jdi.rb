class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.167.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.167.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "8e803378a21a63a720025018d197ab6ff865f9d273266af325726690100b1b36"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.167.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1502b7fd745684851575de0d5edee6cb8ae7841f59c7e430651b98511790fd11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.167.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "67821ec45ba3df251e7f2c9a883873ec110a59b640ebba6ca1c938fff4005607"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.167.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "028d1ceb82572c116f64593aa75132a2f6a05d46999728016ab07e09eddb32d7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
