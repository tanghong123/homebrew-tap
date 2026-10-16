class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.382.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.382.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "aa13faa0daeffc225df9da09924f8026008b733f0251ee88f714310eec48ccce"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.382.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "49bf82bd154a6c6dcf656914f7a49e03797fa5d3c92d1bfe1f28b54afac385e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.382.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "50c0f74bec09cd021a13431c5b6ba78d4b5a3efb9b8128a1b932a3fa3d9da1dc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.382.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "66a156057d258e8c646c2eb219d1a3faf785b77f60a65f9af957f2fcf82dae60"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
