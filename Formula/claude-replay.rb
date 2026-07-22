class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.12.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "5962bbccdf3e2c0309d54dc5936886c5dde6c7446a5ca5b5467acc3e469a5428"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "85b84177f857fb00eda97337ab4e304a5d0a50d38271f7ba56f66b065fb19f0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dc3f42eb58f54117d7d1726a8672a5a72ed16ea476e92501a17da6d72ea7fd3d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "71da4f17e5ae60b05c4edc2b7f8d0eee8c12d12067b7e420b734b126f8c87363"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
