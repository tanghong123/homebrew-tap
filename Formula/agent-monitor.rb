class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.379.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.379.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "92281c40f84192cbc50966a7a92e9cacab16cf51befd16f8bf0d4f108b3e8e70"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.379.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "2bb8445f0773d8f8d71aacc8cbe831a43bff9d8387bf4eb26e49a9b6321b2800"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.379.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "776c0b1335d433a835cecd3303a71795da9fb60b7263f7bd0bee32f17c69e485"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.379.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e030bd835a66842eb6cae09ed8a7f4be06879bab5abdc6fca2286ba533d5211d"
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
