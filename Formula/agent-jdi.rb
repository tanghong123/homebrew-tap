class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.570.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.570.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "79b664d10efe660a7db77095958559a4c22f8a85a9811abb1fc9f9e321fddcf3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.570.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "cbba855d0e187124e8b93711e15453ebfc7d6b906bc28b15e42f6c9d24d9bf6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.570.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2202b1f657d83fbb9f7169b6aaf92731cd1f3e49875195c322a952aa531eb8e9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.570.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "96d37226e7b18454c6e75b2453e58ff88fa45090edd8454a7b06c1bbaf55d29b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
