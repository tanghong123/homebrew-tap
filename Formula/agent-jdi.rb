class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.423.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.423.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "068e7a3403abb552d0baa821e856572974da2e521131d97c14ca3e78b3c99def"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.423.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "fa203153293b9b58507848138da2dc9ca759e9fb7e1d18688bae9efb6a2eae05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.423.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6d45cb8b638dc36a9bde2ce53af5b48d01acee00685bae64616caa93fd0353d8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.423.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "94a12e1356e636d18c53d3d3413b9ca1d9d636550e191028ae23382dfc6d5b71"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
