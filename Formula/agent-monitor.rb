class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.166.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.166.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "11eff73be8054198165b48ba2ee5834bc462dfd9ed25232418ddc7b5eda3d7f7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.166.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e348d4d5a1f85444a0cb94e849b4c4cd6e8f45c75f5847d317388fea85ca8f7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.166.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aa9b6969f0ae85f5eb70e856a04a59b5647cdfa656f9672320acd2be26cbc36a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.166.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0fe4f89a9e1cce5b3e9177c984713dfa7dc59f76e8f30b52581641fc7bd32683"
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
