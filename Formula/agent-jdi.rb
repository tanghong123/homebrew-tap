class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.83.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.83.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "dce80e94b73b7e90a00c3dcf1acbc8b9d22f8727fda4feac1ab1627a30a9c180"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.83.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b8913c130bac4e55255fd205248cc0fd5554a9f3d7d4f133ede7dec161ac5742"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.83.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cde2e918b0977b68eb518132544084d6300c419ad93a760383bc9f3eeeee06b9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.83.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da4ef52b2ac46e20a09696b7bb50252368c61ee72f0de48faf41dc1988e69dc9"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
