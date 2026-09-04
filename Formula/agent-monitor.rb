class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.182.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.182.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "20127023f52ad3ce85bce9d1e2776596b64ece8fabc7edaea0e1b3a829acfedd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.182.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "2f12a2166dec92899ba16e1e4267e07917216ec0521cad6e7b7e3a1a2f1962ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.182.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6178a77ecb85502127ffb80e10f122bbdf12634d92efb5f2b464a75f5e0626b8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.182.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "11682480259560d7f4bb0780dc1fef520f7e30edb2976354ba4ed57d6eeab8b8"
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
