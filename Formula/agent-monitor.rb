class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.349.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.349.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3e90e631fb9faee5bbec4a46ab19d75c086484d9770b3544c0be9f3c9a605150"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.349.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b63c451c94b3208e49df8e4bfdec22ad9fdb695dcf70c71fef937345704a653b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.349.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fef03b385a785a807b4daef62462f3f3129f559a96b5360fc2917a3fa6c09fc8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.349.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6361cefa1270c088fdd82c4220cb672c8bf46c8d6594dfb24e91eebfe190a403"
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
