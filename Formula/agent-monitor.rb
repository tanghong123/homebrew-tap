class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.397.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.397.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0b1180a8df6f946393ac43fd3181ff40c0b96847fcbc07cd318a706dd22c83c3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.397.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6ea494c6ef0d7bb97332fbb1c16a3ec672a371970fc69b19fded5b94a039d83f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.397.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4972d40a026b353566d26bfa0957d3c54e61eae8b5202af1f400685dab248e5a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.397.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "693b15950994d42cb4a7fc52fda2c42231cb105132abdbf6f369ab9dc08691e7"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
