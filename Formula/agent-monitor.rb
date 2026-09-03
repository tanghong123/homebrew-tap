class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.148.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.148.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "2f3e53ff79fcf471b5fc30aeddb43d7f635ce2753ed68d3a1327024536a74229"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.148.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "c7a9cff1bd2f8d4ab3fc86fa8b0ebed58106b6b4f1d260c6ff6752c897f761a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.148.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "80d51551a43850d982f6db19f9672dfa75c8cc94b9cea5d78e08d5919c3dfe72"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.148.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6fe18c4bbdfa00fafe965d48b6c736039341500f92a1e3f09dd9ec6d3bc71966"
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
