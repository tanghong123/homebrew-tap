class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.324.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.324.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "7151b001b3f87ec05acbf781687be5852c0fb32b1e18057e28bf0ed921b78496"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.324.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "eecc8b24ab698b6d74b1663775b8c6e5c3ba8961287921f85dd9f8aa9ab3cac4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.324.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "74025d14a1d22936635c150a39d96b7c485f8c04f97333c3eed8b4539d0bb183"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.324.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ced97c3fd894a8c117703b730cb2487492fc2727d5a27566b9d3b4d46dce061a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
