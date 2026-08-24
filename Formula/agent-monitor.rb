class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.104.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.1/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "cde36e2a752ecd44229c2a4aa7c6876c421bbbbc848cfe449d6c76380ccbf986"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.1/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "2f6128094827f04689e7555ebeb970ac7c879fcd60d12063dd2200c6d6b32ae8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.1/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ea42b845d1a1874efd446eb0c81c3394e09b95f1a85eb33dd58268061257d20c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.1/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e8173acde4158a18563d7cb93fdc44e9573a037355ceee17ffcbebb9aacff8f8"
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
