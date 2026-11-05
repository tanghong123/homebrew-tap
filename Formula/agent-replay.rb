class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.474.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.474.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0f1a5c4130083c696bf017d894f15fec923999426257bb245e7d35babc1ab9bf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.474.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c14838c40cd98071c8f534e229fd87f632da9a8fe1c3d14fd6b78006cbb8b8fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.474.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8d013ba3702f3cffe8443e68be08157da85cf7675d478c2856ac047abe4790b8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.474.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9016eb89c74bad08d3e3d114f622824af3b1611c198d202e51709390a3e70925"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
