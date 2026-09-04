class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.176.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.176.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3ff783048aa9a08662911f0fea7fcd1e55eb4cf8fe70c29d102a5dbb24b27a00"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.176.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d0e13845f665887ca8d8aadd688637067d18debdfd5634291d596f903c45e6d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.176.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8908c5940cf6a6d4dc25b97bfcfdb9a4016927413b8d80702ccc250bff839463"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.176.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b3dd0e0c50f41022183485d7803b98890fe03671aaf706123d5cf1f68f364e3a"
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
