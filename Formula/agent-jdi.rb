class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.38.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.38.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0a18c8fcbfbbcf62b310c25620908467932b93a1aadb5be851639924659b54cb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.38.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "19e58cfd61637f27af92d021c247b1610d4e44e0c2252a53c975023cfa8c3673"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.38.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f34692c3d9a77850e06a686b642cce9ad1acde344819ebcb2b33d038e3ac09df"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.38.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3bc24f0f8c0ce22ab82a5553663df615f725cf8fa973b964b392c60f0b020921"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
